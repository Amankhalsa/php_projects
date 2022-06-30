<?php
if (isset($_SERVER['HTTP_ORIGIN'])) {
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400');
}
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS");         
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
        header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
    exit(0);
}
header('Content-Type: application/json');
require_once('../assets/includes/core.php');
$uid = $sm['user']['id'];
$ad = 5;
$adMobA = '';
$adMobI = '';
$userApi = 'https://www.lindoo.date/clients/users.php?';
switch ($_GET['action']) {
	case 'login':
		$email = secureEncode($_GET['login_email']);	
		$password = secureEncode($_GET['login_pass']);	
		$dID = secureEncode($_GET['dID']);	
		$arr = array();
		$arr['error'] = 0;
		if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
			$arr['error'] = 1;
			$arr['error_m'] = $sm['lang'][181]['text'];	
			echo json_encode($arr);
			exit;	
		}		
		if($email == "" || $email == NULL || $password == "" || $password == NULL ){
			$arr['error'] = 1;
			$arr['error_m'] = $sm['lang'][182]['text'];
			echo json_encode($arr);
			exit;	
		}			
		$email_check = $mysqli->query("SELECT email,id,pass,verified,name FROM users WHERE email = '".$email."'");	
		if($email_check->num_rows == 0 ){
			$arr['error'] = 1;
			$arr['error_m'] = $sm['lang'][183]['text'];
			echo json_encode($arr);
			exit;	
		} else {
			$pass = $email_check->fetch_object();
			if(crypt($password, $pass->pass) == $pass->pass) {
				/*
				if($sm['config']['email_verification'] == 1 && $pass->verified == 0){
					welcomeMailVerification($pass->name,$pass->id,$pass->email,'*******');
					$arr['error'] = 1;
					$arr['error_m'] = 'Error'.$sm['lang'][183]['text'].' '.$pass->email;
					echo json_encode($arr);
					exit;	
				}
				*/
				$_SESSION['user'] = $pass->id;
				getUserInfo($pass->id,0);
				$mysqli->query("UPDATE users SET app_id = '".$dID."' WHERE email = '".$email."'");
				$arr['user'] = $sm['user'];	
				$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
				$age = $sm['user']['s_age'];
				$e_age = explode( ',', $age );		
				$arr['user']['sage'] = $e_age[1];	
				$arr['user']['photos'] = userAppPhotos($sm['user']['id']);
				$arr['user']['notification'] = userNotifications($pass->id);
				$time = time();
				echo json_encode($arr);			
				exit;	
			} else {
				$arr['error'] = 1;
				$arr['error_m'] = $sm['lang'][184]['text'];
				echo json_encode($arr);
				exit;		
			}			
		}
	break;
	case 'register':
		$email = secureEncode($_GET['reg_email']);	
		$password = secureEncode($_GET['reg_pass']);
		if($password == 'fb'){
			$password = $email;
		}
		$name = secureEncode($_GET['reg_name']);
		$gender = secureEncode($_GET['reg_gender']);
		$birthday = secureEncode($_GET['reg_birthday']);
		$looking = secureEncode($_GET['reg_looking']);		
		$photo = secureEncode($_GET['reg_photo']);
		$dID = secureEncode($_GET['dID']);
		$location = json_decode(file_get_contents('http://freegeoip.net/json/'.$_SERVER['REMOTE_ADDR']));		
		$city = $location->city;
		$country = $location->country_name;
		$lat = $location->latitude;
		$lng = $location->longitude;
		$date = date('m/d/Y', time());
		$from = new DateTime($birthday);
		$to   = new DateTime('today');
		$age = $from->diff($to)->y;
		//$base64img = str_replace('data:image/jpeg;base64,', '', $data);		
		//$data = base64_decode($base64img);
		$time = time();		
		$arr = array();
		$arr['error'] = 0;
		if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
			$arr['error'] = 1;
			$arr['error_m'] = $sm['lang'][181]['text'];	
			echo json_encode($arr);
			exit;	
		}		
		if($email == "" || $email == NULL || $password == "" || $password == NULL ){
			$arr['error'] = 1;
			$arr['error_m'] = $sm['lang'][182]['text'];
			echo json_encode($arr);
			exit;	
		}			
		$bio = $sm['lang'][322]['text']." ".$name.", ".$age." ".$sm['lang'][323]['text']." ".$city." ".$country;
		//CHECK IF USER EXIST
		$email_check = $mysqli->query("SELECT email FROM users WHERE email = '".$email."'");	
		if($email_check->num_rows == 1 ){
			$arr['error'] = 1;
			$arr['error_m'] = $sm['lang'][188]['text'];
			echo json_encode($arr);
			exit;
		} else {
			$query = "INSERT INTO users (name,email,pass,age,birthday,gender,city,country,lat,lng,looking,lang,join_date,bio,s_gender,s_age,credits,app_id)
									VALUES ('".$name."', '".$email."','".crypt($password)."','".$age."','".$birthday."','".$gender."','".$city."','".$country."','".$lat."','".$lng."','".$looking."','".$_SESSION['lang']."','".$date."','".$bio."','".$looking."','18,35,1','".$sm['config']['free_credits']."','".$dID."')";		
			if ($mysqli->query($query) === TRUE) {
				$last_id = $mysqli->insert_id;
				$mysqli->query("INSERT INTO users_videocall (u_id) VALUES ('".$last_id."')");	
				$free_premium = $sm['config']['free_premium'];
				$time = time();	
				$extra = 86400 * $free_premium;
				$premium = $time + $extra;
				$mysqli->query("INSERT INTO users_premium (uid,premium) VALUES ('".$last_id."','".$premium."')");	
				$mysqli->query("INSERT INTO users_notifications (uid) VALUES ('".$last_id."')");
				$mysqli->query("INSERT INTO users_extended (uid,field1) VALUES ('".$last_id."','".$sm['lang'][224]['text']."')");	
				$query2 = "INSERT INTO users_photos (u_id,photo,profile,thumb,approved) VALUES ('".$last_id."','".$photo."',1,'".$photo."',1)";
				$mysqli->query($query2);
				/*	
				if($sm['config']['email_verification'] == 1){
					welcomeMailVerification($name,$last_id,$email,$password);
					$arr['error'] = 1;
					$arr['error_m'] = $sm['lang'][324]['text'];
					echo json_encode($arr);
					exit;					
				} else {
					welcomeMailNotification($name,$email,$password);
				}	
				*/
				welcomeMailNotification($name,$email,$password);
				getUserInfo($last_id,0);
				$_SESSION['user'] = $last_id;
				$arr['user'] = $sm['user'];
				$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
				$age = $sm['user']['s_age'];
				$e_age = explode( ',', $age );		
				$arr['user']['sage'] = $e_age[1];
				$arr['user']['photos'] = userAppPhotos($sm['user']['id']);
				$arr['user']['notification'] = userNotifications($sm['user']['id']);						
				echo json_encode($arr);				
			}							 
		}		
	break;	
	case 'logout':
		$dID = secureEncode($_GET['query']);
		$mysqli->query("UPDATE users set app_id = 0 where app_id = '".$dID."'");
		if (isset($_SESSION['user'])) {
			unset($_SESSION['user']);
		}
		exit;	
	break;	
	case 'fbconnect':
	$arr = array();
	$query = $_GET['query'];
	$data = explode(',',$query);
	$fuid = $data[0];
	$email = $data[1];
	$name = $data[2];
	$gender = $data[3];
	$dID = $data[4];
	$location = json_decode(file_get_contents('http://freegeoip.net/json/'.$_SERVER['REMOTE_ADDR']));
	$city = $location->city; 	
	$country = $location->country_name; 	
	$lat = $location->latitude; 	
	$lng = $location->longitude; 	
    $check = $mysqli->query("select id from users where facebook_id = '".$fuid."'");
	$photo = "https://graph.facebook.com/".$fuid."/picture?type=large";
	$pswd = $fuid;
	$name = secureEncode($name);
	if (!empty($_SESSION['user'])){
		$id = secureEncode($_SESSION['user']);
		$query = "UPDATE users SET verified = 1 WHERE id = '".$id."'";
		$mysqli->query($query);
		$query = "UPDATE users SET facebook_id = '".$fuid."' WHERE id = '".$id."'";
		$mysqli->query($query);			
		return true;
	} 	
	if ($check->num_rows == 1){	
		$su = $check->fetch_object();
		$query = "UPDATE users SET verified = 1,app_id = '".$dID."' WHERE id = '".$su->id."'";
		$mysqli->query($query);
		$_SESSION['user'] = $su->id;
		getUserInfo($su->id);
		$arr['user'] = $sm['user'];
		$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
		$age = $sm['user']['s_age'];
		$e_age = explode( ',', $age );		
		$arr['user']['sage'] = $e_age[1];
		$arr['user']['photos'] = userAppPhotos($sm['user']['id']);
		$arr['user']['notification'] = userNotifications($sm['user']['id']);				
		echo json_encode($arr);	
	} else {
		if($gender == 'male'){
			$gender = 1;
			$looking = 2;
		} else {
			$gender = 2;
			$looking = 1;
		}
		$query = "INSERT INTO users (name,email,pass,age,gender,city,country,lat,lng,looking,lang,join_date,s_gender,s_age,verified,facebook_id,credits,app_id)
								VALUES ('".$name."', '".$email."','".crypt($pswd)."','20','".$gender."','".$city."','".$country."','".$lat."','".$lng."','".$looking."','".$_SESSION['lang']."','".$date."','".$looking."','18,30,1',1,'".$fuid."','".$sm['config']['free_credits']."','".$dID."')";	
		if ($mysqli->query($query) === TRUE) {
			$last_id = $mysqli->insert_id;
			$_SESSION['user'] = $last_id;	
			$mysqli->query("INSERT INTO users_videocall (u_id) VALUES ('".$last_id."')");	
			$free_premium = $sm['config']['free_premium'];
			$time = time();	
			$extra = 86400 * $free_premium;
			$premium = $time + $extra;
			$mysqli->query("INSERT INTO users_premium (uid,premium) VALUES ('".$last_id."','".$premium."')");
			$query2 = "INSERT INTO users_photos (u_id,photo,profile,thumb,approved) VALUES ('".$last_id."','".$photo."',1,'".$photo."',1)";
			$mysqli->query($query2);				
			$mysqli->query("INSERT INTO users_notifications (uid) VALUES ('".$last_id."')");
			$mysqli->query("INSERT INTO users_extended (uid,field1) VALUES ('".$last_id."','".$sm['lang'][224]['text']."')");	
			getUserInfo($last_id);
			$arr['user'] = $sm['user'];
			$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
			$age = $sm['user']['s_age'];
			$e_age = explode( ',', $age );		
			$arr['user']['sage'] = $e_age[1];
			$arr['user']['photos'] = userAppPhotos($sm['user']['id']);
			$arr['user']['notification'] = userNotifications($sm['user']['id']);		
			$time = time();
			$mysqli->query("INSERT INTO users_visits (u1,u2,timeago) values ('".$sm['user']['id']."',44,'".$time."')");
			$mysqli->query("INSERT INTO users_likes (u1,u2,time,love) values (44,'".$sm['user']['id']."','".$time."',1)");			
			echo json_encode($arr);	
		}							 
	}	
	break;		
	case 'userProfile':
		$id = secureEncode($_GET['id']);			
		$arr = array();
		$device_check = $mysqli->query("SELECT id FROM users WHERE id = '".$id."'");
		if($device_check->num_rows == 0 ){
			$arr['user'] = '';
		} else {
			$pass = $device_check->fetch_object();
			getUserInfo($pass->id,0);
			$_SESSION['user'] = $pass->id;
			$arr['user'] = $sm['user'];
			$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
			$age = $sm['user']['s_age'];
			$e_age = explode( ',', $age );		
			$arr['user']['sage'] = $e_age[1];	
			$arr['user']['photos'] = userAppPhotos($pass->id);
			$sm['lang'] = siteLang($sm['user']['lang']);
			$sm['alang'] = appLang($sm['user']['lang']);	
			$arr['user']['notification'] = userNotifications($pass->id);
			echo json_encode($arr);
		}
	break;
	case 'config':
		$dID = secureEncode($_GET['dID']);			
		$arr = array();
		$device_check = $mysqli->query("SELECT id FROM users WHERE app_id = '".$dID."'");
		if($device_check->num_rows == 0 ){
			$arr['user'] = '';
		} else {
			$pass = $device_check->fetch_object();
			getUserInfo($pass->id,0);
			$_SESSION['user'] = $pass->id;
			$arr['user'] = $sm['user'];
			$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
			$age = $sm['user']['s_age'];
			$e_age = explode( ',', $age );		
			$arr['user']['sage'] = $e_age[1];	
			$arr['user']['photos'] = userAppPhotos($sm['user']['id']);
			$sm['lang'] = siteLang($sm['user']['lang']);
			$sm['alang'] = appLang($sm['user']['lang']);	
			$arr['user']['notification'] = userNotifications($pass->id);
		}
		$arr['config'] = $sm['config'];
		$arr['config']['languages'] = selectLanguages();
		$arr['config']['pusher'] = siteConfig('pusher_key');
		$arr['config']['visit_back'] = siteConfig('visit_back');
		$arr['config']['like_back'] = siteConfig('like_back');
		$arr['prices'] = $sm['price'];
		$arr['app'] = appConfigApi();
		$arr['config']['fb_app_id'] = siteConfig('fb_app_id');
		$arr['account_basic'] = $sm['basic'];
		$arr['account_premium'] = $sm['premium'];
		$arr['alang'] = $sm['alang'];
		$arr['lang'] = $sm['lang'];
		$arr['tlang'] = $sm['twoo_lang'];		
		$arr['gifts'] = getGiftsApp();
		$arr['ad'] = $ad;
		$arr['adMob'] = $adMob;
		$arr['credits_package'] = getCreditsPriceApp();
		$arr['premium_package'] = getPremiumPriceApp();		
		$arr['config']['genders'] = siteGenders($sm['config']['lang']);
		echo json_encode($arr);
		exit;	
	break;	
	case 'cuser':
		$id = secureEncode($_GET['uid1']);
		$me = secureEncode($_GET['uid2']);
		getUserInfo($id);
		$arr = array();
		$time_now = time();
		$arr['user'] = $sm['user'];
		if($sm['user']['bio'] == ''){
			$arr['user']['bio'] = $sm['alang'][125]['text'];
		}
		$arr['user']['photos'] = userAppPhotos($id);
		$arr['user']['isFan'] = isFanApp($me,$id);
		$today = date('w');		
		if($sm['user']['last_access'] >= $time_now || $sm['user']['fake'] == 1 && $sm['user']['online_day'] == $today){
			$arr['user']['status'] = 'y';
		} else {	
			$arr['user']['status'] = 'n';
		}
		$arr['game'][] = array(
			  "id" => $sm['user']['id'],
			  "name" => $sm['user']['name'],
			  "status" => userFilterStatus($sm['user']['id']),
			  "distance" => '',				  
			  "age" => $sm['user']['age'],
			  "city" => $sm['user']['city'],
			  "bio" => $sm['user']['bio'],	
			  "isFan" => isFanApp($sm['user']['id'],$me),
			  "total" => getUserTotalLikers($sm['user']['id']),
			  "photo" => profilePhoto($sm['user']['id']),
			  "full" => $sm['user'],
			  "error" => 0
		);				
		echo json_encode($arr);
		exit;	
	break;
	case 'spotlight':
		$id = secureEncode($_GET['id']);
		getUserInfo($id);	
		$info = array();
		/*
		$info['spotlight'][] = array(
			  "id" => $id,
			  "name" => $sm['user']['name'],
			  "firstName" => $sm['user']['first_name'],					  
			  "age" => $sm['user']['age'],
			  "city" => $sm['user']['city'],				  	  
			  "photo" => profilePhoto($id),
			  "spotPhoto" => profilePhoto($id),
			  "error" => 0,
			  "status" => userFilterStatus($id)
		);
		*/			
		$time = time()-86400;
		$time_now = time()-300;
		$i = 0;
		$lat = $sm['user']['lat'];
		$lng = $sm['user']['lng'];
		$spotlight = $mysqli->query("SELECT u_id,photo,time, ( 6371 * acos( cos( radians($lat) ) * cos( radians( lat ) ) 
		* cos( radians( lng ) - radians($lng) ) + sin( radians($lat) ) * sin(radians(lat)) ) ) AS distance 
		FROM spotlight
		ORDER BY distance ASC, time desc
		LIMIT 20
		");				
		if ($spotlight->num_rows > 0) { 
			while($spotl = $spotlight->fetch_object()){
				getUserInfo($spotl->u_id,1);
				$info['spotlight'][] = array(
					  "id" => $spotl->u_id,
					  "name" => $sm['profile']['name'],
					  "firstName" => $sm['profile']['first_name'],					  
					  "age" => $sm['profile']['age'],
					  "city" => $sm['profile']['city'],				  	  
					  "photo" => profilePhoto($spotl->u_id),
					  "spotPhoto" => $spotl->photo,
					  "error" => 0,
					  "status" => userFilterStatus($spotl->u_id)
				);				
			}
		}
		echo json_encode($info);
	break;
	case 'data':
		$arr = array();
		$q = $_GET['query'];
		$q = str_replace("%20", " ", $q);
		$query = $mysqli->query($q);
		if($query->num_rows > 0 ){
			while($p = $query->fetch_object()){
				getUserInfo($p->id,0);
				$arr['user'] = $sm['user'];	
				$arr['user']['photos'] = userAppPhotos($p->id);
				echo json_encode($arr);
			}
		}		
		exit;	
	break;	
	case 'addToSpotlight':
		$id = secureEncode($_GET['query']);
		$time = time();
		getUserInfo($id);
		$lat = $sm['user']['lat'];
		$lng = $sm['user']['lng'];
		$photo = $sm['user']['profile_photo'];
		$lang = $sm['user']['lang'];	
		$price = $sm['price']['spotlight'];
		$query = "INSERT INTO spotlight (u_id,time,lat,lng,photo,lang,country) VALUES ('".$id."', '".$time."', '".$lat."', '".$lng."', '".$photo."', '".$lang."', '".$sm['user']['country']."')";
		$mysqli->query($query);	
		$query2 = "UPDATE users SET credits = credits-'".$price."' WHERE id= '".$id."'";
		$mysqli->query($query2);			
	break;
	case 'meet':
		$id = secureEncode($_GET['uid1']);
		$l = secureEncode($_GET['uid2']);
		$status = secureEncode($_GET['uid3']);		
		getUserInfo($id);
		$time = time();
		if($sm['user']['last_access'] < $time){
			$mysqli->query("UPDATE users set last_access = '".$time."' where id = '".$sm['user']['id']."'");	
		}		
		$info = array();	
		$i = 0;
		$time_now = time()-300;
		$lat = $sm['user']['lat'];
		$lng = $sm['user']['lng'];
		$age = $sm['user']['s_age'];
		$e_age = explode( ',', $age );
		$age1 = $e_age[0];
		$age2 = $e_age[1];		
		$today = date('w');
		$looking = $sm['user']['s_gender'];
		$radius = $sm['user']['s_radius'];		
		//CHECK IF NEED TO CREATE USERS FROM FAKE USER SYSTEM
		$check2 = 24 * $l;
		if($check2 == 0){
			$check2 = 60;
		}
		$all = count($sm['genders']);
		$all = $all + 1;
		$g = getGenderSex($sm['user']['s_gender']);
		$today = date('w');
		$license = siteConfig('client');
		$c = siteConfig('fcountry');
		$time = time() - rand(1,100000);
		$check = getTotalUsersCity($sm['user']['city'],$sm['user']['s_gender'],$age); 
		$url=$userApi.
		    'g=' . urlencode($g) .
		    '&a=' . urlencode($age) .
		    '&c=' . urlencode($c) . 
		    '&pc=' . urlencode($license);
		if($check < $check2 && siteConfig('fapi') == 'Yes'){
			$callApi = file_get_contents($url);
			$api = json_decode($callApi);	
			foreach ($api->result as $val) {
				$email = $val->name.$val->id.'@gmail.com';
				$mysqli->query("INSERT INTO users (id,name,email,pass,age,birthday,city,country,gender,lat,lng,credits,premium,last_access,app_id,facebook_id,looking,verified,popular,lang,admin,fake,online_day,join_date)
				 VALUES ('".$val->id."', '".$val->name."', '".$email."', '', '".$val->age."', '','".$sm['user']['city']."', '".$sm['user']['country']."', '".$sm['user']['s_gender']."', '".$sm['user']['lat']."', '".$sm['user']['lng']."', '0', '0', '".$time."', '0', '0', '1', '1', '0', '1', '0', '1', '".$today."', null)");
				$mysqli->query("INSERT INTO users_photos (u_id,photo,thumb,profile) VALUES ('".$val->id."', '".$val->photo."', '".$val->photo."',1)");		
			}
		}		
		$limit = $l * 9;
		$all = count($sm['genders']);
		$all = $all + 1;		
		if($status == 0){	
			$status_filter = "";	
		} else {
			$time_now = time()-300;
			if($looking == $all) {
				$status_filter = "AND last_access >=".$time_now." OR fake = 1 AND id <> '".$sm['user']['id']."' AND online_day = ".$today." AND age BETWEEN '".$age1."' AND '".$age2."'";			
			} else {
				$status_filter = "AND last_access >=".$time_now." OR fake = 1 AND id <> '".$sm['user']['id']."' AND  online_day = ".$today." AND age BETWEEN '".$age1."' AND '".$age2."' AND gender = '".$looking."'";			
			}
		}	
		$country_filter = '';
		if($radius < 950){
			$country_filter = "AND country = '".$sm['user']['country']."'";			
		}else {
			$radius	= 999999;
		}
		if($looking == $all) {
			$query = "SELECT id, ( 6371 * acos( cos( radians($lat) ) * cos( radians( lat ) )
			* cos( radians( lng ) - radians($lng) ) + sin( radians($lat) ) * sin( radians( lat ) ) ) ) AS distance 
			FROM users
			WHERE age BETWEEN '".$age1."' AND '".$age2."'
			AND id <> '".$sm['user']['id']."'	
			$status_filter	
			$country_filter			
			HAVING distance < $radius
			ORDER BY last_access DESC , fake ASC
			LIMIT $limit, 9";	
			$query2 = "SELECT id, ( 6371 * acos( cos( radians($lat) ) * cos( radians( lat ) )
			* cos( radians( lng ) - radians($lng) ) + sin( radians($lat) ) * sin( radians( lat ) ) ) ) AS distance 
			FROM users
			WHERE age BETWEEN '".$age1."' AND '".$age2."'
			AND id <> '".$sm['user']['id']."'	
			$status_filter	
			$country_filter		
			HAVING distance < $radius
			ORDER BY last_access";			
		} else {
			$query = "SELECT id, ( 6371 * acos( cos( radians($lat) ) * cos( radians( lat ) )
			* cos( radians( lng ) - radians($lng) ) + sin( radians($lat) ) * sin( radians( lat ) ) ) ) AS distance 
			FROM users
			WHERE gender = '".$looking."'
			AND age BETWEEN '".$age1."' AND '".$age2."'
			AND id <> '".$sm['user']['id']."'	
			$status_filter	
			$country_filter		
			HAVING distance < $radius
			ORDER BY last_access DESC , fake ASC
			LIMIT $limit, 9";	
			$query2 = "SELECT id, ( 6371 * acos( cos( radians($lat) ) * cos( radians( lat ) )
			* cos( radians( lng ) - radians($lng) ) + sin( radians($lat) ) * sin( radians( lat ) ) ) ) AS distance 
			FROM users
			WHERE gender = '".$looking."'
			AND age BETWEEN '".$age1."' AND '".$age2."'
			AND id <> '".$sm['user']['id']."'
			$status_filter	
			$country_filter		
			HAVING distance < $radius
			ORDER BY last_access";			
		}
		$result = $mysqli->query($query);
		$result2 = $mysqli->query($query2);
		$sm['meet_result'] = $result2->num_rows;
		if ($result->num_rows > 0) {
			while($row = $result->fetch_object()){
				getUserInfo($row->id,6);	
				$i++;				
				if ($i == 2 || $i == 5 || $i == 8 || $i == 11 || $i == 14 || $i == 17 || $i == 20 || $i == 23) {
					$margin = 'search-margin';
				} else {
					$margin = 'search-no-margin';
				}	
				if($sm['search']['city'] !== ''){
					$city = $sm['search']['city'];
				} else {
					$city = $sm['search']['country'];
				}
				if($sm['search']['last_access'] >= $time_now || $sm['search']['fake'] == 1 && $sm['search']['online_day'] == $today){
					$on = 1;
				} else {	
					$on = 0;
				}
				$match = 0;
				if(isFanApp($sm['user']['id'],$sm['search']['id']) && isFanApp($sm['search']['id'],$sm['user']['id'])){
					$match = 1;
				}
				$info['result'][] = array(
					  "id" => $sm['search']['id'],
					  "name" => $sm['search']['name'],
					  "firstName" => $sm['search']['first_name'],					  
					  "age" => $sm['search']['age'],
					  "city" => $city,				  	  
					  "photo" => profilePhoto($sm['search']['id']),
					  "error" => 0,
					  "show" => $i,
					  "status" => $on,
					  "blocked" => blockedUser($sm['user']['id'],$sm['search']['id']),
					  "margin" => $margin,
					  "fan" => isFanApp($sm['user']['id'],$sm['search']['id']),
					  "match" => $match
					);
			}
		} else {
			$info['result'] = '';
		}
		$sm['meet_result'] = $sm['meet_result'] - $limit;
		if($sm['meet_result'] >= 1){
			$totalPages = 1;
		} else {
			$totalPages = 0;
		}
		$totalp = $totalPages-1;
		$limitp = $l+1;
		if($totalp >=0 ){
			$pages = $totalp;
			$info['pages'] = $totalp;
		} else {
			$pages = 0;
			$info['pages'] = 0;
		}			
		echo json_encode($info);
	break;
	case 'addVisit':
		$query = $_GET['query'];
		$data = explode(',',$query);
		$uid = $data[0];
		$vid = $data[1];
		$time = time();
		$mysqli->query("INSERT INTO users_visits (u1,u2,timeago) VALUES ('".$vid."','".$uid."','".$time."') ON DUPLICATE KEY UPDATE timeago = '".$time."'");	
        getUserInfo($uid,1);
        $noti= 'visit'.$vid;
        $data['id'] = $uid;
        $data['message'] = $sm['alang'][252]['text'];
        $data['time'] = date("H:i", time());
        $data['type'] = 4;
        $data['icon'] = $sm['profile']['profile_photo'];
        $data['name'] = $sm['profile']['name'];      
        $data['photo'] = 0;
        $data['unread'] = checkUnreadMessages($vid);       
        $sm['push']->trigger(siteConfig('pusher_key'), $noti, $data);  			
	break;
	case 'getMatches':
		$id = secureEncode($_GET['id']);	
		getUserInfo($id);
		$arr = array();
		$time = time();
		if($sm['user']['last_access'] < $time){
			$mysqli->query("UPDATE users set last_access = '".$time."' where id = '".$sm['user']['id']."'");	
		}
		$query = $mysqli->query("SELECT u2,time,notification from users_likes where u1 = '".$id."' and love = 1 order by time desc");
		if ($query->num_rows > 0) { 
			while($result = $query->fetch_object()){
				if(isFan($result->u2,$id) == 0){
					getUserInfo($result->u2,1);
					$arr['mylikes'][] = array(
						  "id" => $sm['profile']['id'],
						  "name" => $sm['profile']['name'],
						  "firstName" => $sm['profile']['first_name'],					  
						  "age" => $sm['profile']['age'],
						  "city" => $sm['profile']['city'],
						  "last_a" => $sm['profile']['last_access'],
						  "premium" => $sm['profile']['premium'],							  
						  "photo" => profilePhoto($sm['profile']['id']),
						  "error" => 0,
						  "status" => userFilterStatus($sm['profile']['id']),
						  "last_m" => $sm['profile']['city'].','.$sm['profile']['country'],
						  "last_m_time" => get_time_difference_php($result->time),
						  "check_m" => $result->notification,
						  "gift" => $gift						  
					);
				}			
			}	
		}
		$query = $mysqli->query("SELECT u2,time,notification from users_likes where u1 = '".$id."' and superlike = 1 order by time desc");
		if ($query->num_rows > 0) { 
			while($result = $query->fetch_object()){
				if(isFan($result->u2,$id) == 0){
					getUserInfo($result->u2,1);
					$arr['superlikes'][] = array(
						  "id" => $sm['profile']['id'],
						  "name" => $sm['profile']['name'],
						  "firstName" => $sm['profile']['first_name'],					  
						  "age" => $sm['profile']['age'],
						  "city" => $sm['profile']['city'],
						  "last_a" => $sm['profile']['last_access'],
						  "premium" => $sm['profile']['premium'],							  
						  "photo" => profilePhoto($sm['profile']['id']),
						  "error" => 0,
						  "status" => userFilterStatus($sm['profile']['id']),
						  "last_m" => $sm['profile']['city'].','.$sm['profile']['country'],
						  "last_m_time" => get_time_difference_php($result->time),
						  "check_m" => $result->notification,
						  "gift" => $gift						  
					);
				}			
			}	
		}
		$query = $mysqli->query("SELECT u1,time,notification from users_likes where u2 = '".$id."' and love = 1 order by time desc");
		if ($query->num_rows > 0) { 
			while($result = $query->fetch_object()){
				if(isFan($id,$result->u1) == 0){
					getUserInfo($result->u1,1);
					$arr['myfans'][] = array(
						  "id" => $sm['profile']['id'],
						  "name" => $sm['profile']['name'],
						  "firstName" => $sm['profile']['first_name'],					  
						  "age" => $sm['profile']['age'],
						  "city" => $sm['profile']['city'],
						  "last_a" => $sm['profile']['last_access'],
						  "premium" => $sm['profile']['premium'],							  
						  "photo" => profilePhoto($sm['profile']['id']),
						  "error" => 0,
						  "status" => userFilterStatus($sm['profile']['id']),
						  "last_m" => $sm['profile']['city'].','.$sm['profile']['country'],
						  "last_m_time" => get_time_difference_php($result->time),
						  "check_m" => $result->notification,
						  "gift" => $gift						  
					);
				}			
			}	
		}
		$query = $mysqli->query("SELECT u1,time,notification from users_likes where u2 = '".$id."' and love = 1 order by time desc");
		if ($query->num_rows > 0) { 
			while($result = $query->fetch_object()){
				if(isFan($id,$result->u1) == 0){
					getUserInfo($result->u1,1);
					$arr['myfans'][] = array(
						  "id" => $sm['profile']['id'],
						  "name" => $sm['profile']['name'],
						  "firstName" => $sm['profile']['first_name'],					  
						  "age" => $sm['profile']['age'],
						  "city" => $sm['profile']['city'],
						  "last_a" => $sm['profile']['last_access'],
						  "premium" => $sm['profile']['premium'],							  
						  "photo" => profilePhoto($sm['profile']['id']),
						  "error" => 0,
						  "status" => userFilterStatus($sm['profile']['id']),
						  "last_m" => $sm['profile']['city'].','.$sm['profile']['country'],
						  "last_m_time" => get_time_difference_php($result->time),
						  "check_m" => $result->notification,
						  "gift" => $gift						  
					);
				} else {
					getUserInfo($result->u1,1);
					$arr['matches'][] = array(
						  "id" => $sm['profile']['id'],
						  "name" => $sm['profile']['name'],
						  "firstName" => $sm['profile']['first_name'],					  
						  "age" => $sm['profile']['age'],
						  "city" => $sm['profile']['city'],
						  "last_a" => $sm['profile']['last_access'],
						  "premium" => $sm['profile']['premium'],							  
						  "photo" => profilePhoto($sm['profile']['id']),
						  "error" => 0,
						  "status" => userFilterStatus($sm['profile']['id']),
						  "last_m" => $sm['profile']['city'].','.$sm['profile']['country'],
						  "last_m_time" => get_time_difference_php($result->time),
						  "check_m" => $result->notification,
						  "gift" => $gift						  
					);
				}		
			}	
		}		
		$arr['result'] = 0;
		echo json_encode($arr);
	break;	
	case 'getOnlineFriends':
		$id = secureEncode($_GET['id']);	
		getUserInfo($id);
		$arr = array();
		$time = time();
		$i = 0;
		if($sm['user']['last_access'] < $time){
			$mysqli->query("UPDATE users set last_access = '".$time."' where id = '".$sm['user']['id']."'");	
		}
		$query = $mysqli->query("SELECT u2,time,notification from users_likes where u1 = '".$id."' and love = 1 order by time desc");
		if ($query->num_rows > 0) { 
			while($result = $query->fetch_object()){
				if(isFan($result->u2,$id) == 0){
					getUserInfo($result->u2,1);
					if(userFilterStatus($sm['profile']['id']) == 1){
						$i++;
						$arr['result'][] = array(
							  "id" => $sm['profile']['id'],
							  "name" => $sm['profile']['name'],
							  "firstName" => $sm['profile']['first_name'],					  
							  "age" => $sm['profile']['age'],
							  "city" => $sm['profile']['city'],
							  "last_a" => $sm['profile']['last_access'],
							  "premium" => $sm['profile']['premium'],							  
							  "photo" => profilePhoto($sm['profile']['id']),
							  "error" => 0,
							  "status" => userFilterStatus($sm['profile']['id']),
							  "last_m" => $sm['profile']['city'].','.$sm['profile']['country'],
							  "last_m_time" => get_time_difference_php($result->time),
							  "check_m" => $result->notification,
							  "gift" => $gift						  
						);
					}
				}			
			}	
		}
		$query = $mysqli->query("SELECT u1,time,notification from users_likes where u2 = '".$id."' and love = 1 order by time desc");
		if ($query->num_rows > 0) { 
			while($result = $query->fetch_object()){
				if(isFan($id,$result->u1) == 0){
					getUserInfo($result->u1,1);
					if(userFilterStatus($sm['profile']['id']) == 1){
						$i++;
						$arr['result'][] = array(
							  "id" => $sm['profile']['id'],
							  "name" => $sm['profile']['name'],
							  "firstName" => $sm['profile']['first_name'],					  
							  "age" => $sm['profile']['age'],
							  "city" => $sm['profile']['city'],
							  "last_a" => $sm['profile']['last_access'],
							  "premium" => $sm['profile']['premium'],							  
							  "photo" => profilePhoto($sm['profile']['id']),
							  "error" => 0,
							  "status" => userFilterStatus($sm['profile']['id']),
							  "last_m" => $sm['profile']['city'].','.$sm['profile']['country'],
							  "last_m_time" => get_time_difference_php($result->time),
							  "check_m" => $result->notification,
							  "gift" => $gift						  
						);
					}
				} else {
					getUserInfo($result->u1,1);
					if(userFilterStatus($sm['profile']['id']) == 1){
						$i++;
						$arr['result'][] = array(
							  "id" => $sm['profile']['id'],
							  "name" => $sm['profile']['name'],
							  "firstName" => $sm['profile']['first_name'],					  
							  "age" => $sm['profile']['age'],
							  "city" => $sm['profile']['city'],
							  "last_a" => $sm['profile']['last_access'],
							  "premium" => $sm['profile']['premium'],							  
							  "photo" => profilePhoto($sm['profile']['id']),
							  "error" => 0,
							  "status" => userFilterStatus($sm['profile']['id']),
							  "last_m" => $sm['profile']['city'].','.$sm['profile']['country'],
							  "last_m_time" => get_time_difference_php($result->time),
							  "check_m" => $result->notification,
							  "gift" => $gift						  
						);						
					}
				}		
			}	
		}
		$arr['total_online'] = $i;		
		echo json_encode($arr);
	break;	
	case 'getVisitors':
		$id = secureEncode($_GET['id']);	
		getUserInfo($id);
		$arr = array();
		$arr['visitors'];
		$query = $mysqli->query("SELECT u2,timeago,notification from users_visits where u1 = '".$id."' and u2 <> '".$id."' order by timeago desc");
		if ($query->num_rows > 0) { 
			while($result = $query->fetch_object()){
				getUserInfo($result->u2,1);
				if(isFan($id,$result->u1) == 1 && isFan($result->u1,$id) == 1){
					$match = 1;
				} else {
					$match = 0;
				}
				$arr['visitors'][] = array(
					  "id" => $sm['profile']['id'],
					  "name" => $sm['profile']['name'],
					  "firstName" => $sm['profile']['first_name'],					  
					  "age" => $sm['profile']['age'],
					  "city" => $sm['profile']['city'],
					  "last_a" => $sm['profile']['last_access'],
					  "premium" => $sm['profile']['premium'],							  
					  "photo" => profilePhoto($sm['profile']['id']),
					  "fan" => isFan($result->u1,$id),
					  "match" => $match,					  
					  "error" => 0,
					  "status" => userFilterStatus($sm['profile']['id']),
					  "last_m" => $sm['alang'][127]['text'].' '.get_time_difference_php($result->timeago).' ago',
					  "last_m_time" => get_time_difference_php($result->timeago),
					  "check_m" => $result->notification,
					  "gift" => $gift						  
				);		
			}	
		}
		echo json_encode($arr);
	break;		
	case 'del_conv':
		$query = $_GET['query'];
		$data = explode(',',$query);
		$uid = $data[0];
		$sid = $data[1];
		$mysqli->query("UPDATE chat set seen = 2 WHERE r_id = '".$uid."' AND s_id = '".$sid."'");
		$mysqli->query("UPDATE chat set notification = 2 WHERE s_id = '".$uid."' AND r_id = '".$sid."'");		
	break;
	case 'block':
		$query = $_GET['query'];
		$data = explode(',',$query);
		$uid = $data[0];
		$id = $data[1];
		$query = "INSERT INTO users_blocks (uid1,uid2) VALUES ('".$uid."', '".$id."')";
		$mysqli->query($query);		
		$query2 = "DELETE FROM chat where s_id = '".$uid."' AND r_id = '".$id."' || r_id = '".$uid."' AND s_id = '".$id."'";
		$mysqli->query($query2);
		$query = "INSERT INTO reports (reported,reported_by) VALUES ('".$id."', '".$uid."')";
		$mysqli->query($query);			
	break;
	case 'getChat':
	$id = secureEncode($_GET['id']);	
	getUserInfo($id);
	$arr = array();
	$arr[] = $id;
	$time = time();
	if($sm['user']['last_access'] < $time){
		$mysqli->query("UPDATE users set last_access = '".$time."' where id = '".$sm['user']['id']."'");	
	}	
	$query2 = $mysqli->query("SELECT id,s_id,r_id,seen,notification FROM chat WHERE r_id = '".$id."' || s_id = '".$id."' order by id desc");
	if ($query2->num_rows > 0) { 
		while($result2 = $query2->fetch_object()){
			if (!in_array($result2->s_id, $arr)){
				$arr[] = $result2->s_id;			  
				getUserInfo($result2->s_id,1);
				if($result2->r_id == $id && $result2->seen == 2){				
				} else {
					$gift = 0;
					$last_m = getLastMessageMobileApp($sm['user']['id'],$sm['profile']['id']);
					if (strpos($last_m, '/gifts/') !== false) {
						$gift = 1;
					}
					if (strpos($last_m, 'giphy') !== false) {
						$gift = 1;
					}
					if (strpos($last_m, '.jpg') !== false) {
						$gift = 1;
					}
					if (strpos($last_m, '.png') !== false) {
						$gift = 1;
					}
					$last_m = secureEncode($last_m);
					$status = userFilterStatus($sm['profile']['id']);
					$unread = getLastMessageMobileSeenApp($sm['user']['id'],$sm['profile']['id']);							
					$arr['matches'][] = array(
						  "id" => $sm['profile']['id'],
						  "name" => $sm['profile']['name'],
						  "firstName" => $sm['profile']['first_name'],					  
						  "age" => $sm['profile']['age'],
						  "city" => $sm['profile']['city'],				  	  
						  "photo" => profilePhoto($sm['profile']['id']),
						  "error" => 0,
						  "last_a" => $sm['profile']['last_access'],
						  "status" => userFilterStatus($sm['profile']['id']),
						  "online" => $online,
						  "unread" => $unread,						  						  
						  "premium" => $sm['profile']['premium'],
						  "unreadCount" => checkUnreadMessagesCount($sm['user']['id'],$sm['profile']['id']),
						  "last_m" => $last_m,
						  "last_m_time" => get_time_difference_php(getLastMessageMobileTime($sm['user']['id'],$sm['profile']['id'])),
						  "check_m" => getLastMessageMobileSeenApp($sm['user']['id'],$sm['profile']['id']),
						  "gift" => $gift
					);
				}				  
			}
			if (!in_array($result2->r_id, $arr)){
				$arr[] = $result2->r_id;			  
				getUserInfo($result2->r_id,1);
				if($result2->s_id == $id && $result2->notification == 2){				
				} else {
					$gift = 0;
					$last_m = getLastMessageMobileApp($sm['user']['id'],$sm['profile']['id']);
					if (strpos($last_m, '/gifts/') !== false) {
						$gift = 1;
					}
					$status = userFilterStatus($sm['profile']['id']);
					$unread = getLastMessageMobileSeenApp($sm['user']['id'],$sm['profile']['id']);
					$last_m = secureEncode($last_m);						
					$arr['matches'][] = array(
						  "id" => $sm['profile']['id'],
						  "name" => $sm['profile']['name'],
						  "firstName" => $sm['profile']['first_name'],					  
						  "age" => $sm['profile']['age'],
						  "city" => $sm['profile']['city'],				  	  
						  "photo" => profilePhoto($sm['profile']['id']),
						  "error" => 0,
						  "last_a" => $sm['profile']['last_access'],
						  "status" => userFilterStatus($sm['profile']['id']),
						  "online" => $online,
						  "unread" => $unread,						  						  
						  "premium" => $sm['profile']['premium'],
						  "last_m" => $last_m,
						  "last_m_time" => get_time_difference_php(getLastMessageMobileTime($sm['user']['id'],$sm['profile']['id'])),
						  "check_m" => getLastMessageMobileSeenApp($sm['user']['id'],$sm['profile']['id']),
						  "gift" => $gift
					);
				}				  
			}			
		}	
	}
	echo json_encode($arr);
	break;	
	case 'like':
		$uid1 = secureEncode($_GET['uid1']);
		$uid2 = secureEncode($_GET['uid2']);
		$action = secureEncode($_GET['uid3']);		
		$time = time();
		$mysqli->query("UPDATE users_likes SET love = '$action' where u1 = '$uid1' and u2 = '$uid2'");		
		$mysqli->query("INSERT INTO users_likes (u1,u2,love,time) VALUES ('$uid1','$uid2','$action','$time')");
		$sm['profile_notifications'] = userNotifications($uid2);
		if($action == 1){
			if($sm['profile_notifications']['fan'] == 1){
				fanMailNotification($uid2);
			}
			if(isFanApp($uid2,$uid1) == 1 && $sm['profile_notifications']['match_m'] == 1){
				matchMailNotification($uid2);														   
			}		
		}
	break;
	case 'today':
		$query = $_GET['query'];
		$data = explode(',',$query);
		$uid = $data[0];
		$time = time();
		$date = date('m/d/Y', time());
		$mysqli->query("INSERT INTO users_chat (uid,date,count,last_chat) VALUES ('".$uid."','".$date."',1,'".$time."') 
						ON DUPLICATE KEY UPDATE count=count+1");	
	break;	
	case 'riseUp':
		$query = $_GET['query'];
		$data = explode(',',$query);
		$uid = $data[0];
		$credits = $data[1];
		$arr = array();
		$date = date('m/d/Y', time());
		$time = time();	
		$extra = 86400 * 5;
		$riseUp = $time + $extra;	
		$mysqli->query("UPDATE users set last_access = '".$riseUp."', meet = 1 where id = '".$uid."'");
		$query2 = "UPDATE users SET credits = credits-'".$credits."' WHERE id= '".$uid."'";
		$mysqli->query($query2);
		getUserInfo($uid);
		$arr['user'] = $sm['user'];
		$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
		$age = $sm['user']['s_age'];
		$e_age = explode( ',', $age );		
		$arr['user']['sage'] = $e_age[1];	
		$arr['user']['photos'] = userAppPhotos($sm['user']['id']);	
		$arr['user']['notification'] = userNotifications($sm['user']['id']);
		echo json_encode($arr);
	break;
	case 'discover100':
		$query = $_GET['query'];
		$data = explode(',',$query);
		$uid = $data[0];
		$credits = $data[1];
		$arr = array();
		$date = date('m/d/Y', time());
		$time = time();	
		$extra = 86400 * 5;
		$riseUp = $time + $extra;	
		$mysqli->query("UPDATE users set last_access = '".$riseUp."', discover = 100 where id = '".$uid."'");
		$query2 = "UPDATE users SET credits = credits-'".$credits."' WHERE id= '".$uid."'";
		$mysqli->query($query2);	
		getUserInfo($uid);
		$arr['user'] = $sm['user'];
		$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
		$age = $sm['user']['s_age'];
		$e_age = explode( ',', $age );		
		$arr['user']['sage'] = $e_age[1];	
		$arr['user']['photos'] = userAppPhotos($sm['user']['id']);	
		$arr['user']['notification'] = userNotifications($sm['user']['id']);
		echo json_encode($arr);
	break;	
	case 'chat_limit':
		$query = $_GET['query'];
		$data = explode(',',$query);
		$uid = $data[0];
		$credits = $data[1];
		$arr = array();
		$date = date('m/d/Y', time());
		$mysqli->query("DELETE FROM users_chat WHERE uid = '".$uid."' AND date = '".$date."'");	
		$mysqli->query("UPDATE users set credits = credits-'".$credits."' where id = '".$uid."'");
		getUserInfo($uid);
		$arr['user'] = $sm['user'];
		$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
		$age = $sm['user']['s_age'];
		$e_age = explode( ',', $age );		
		$arr['user']['sage'] = $e_age[1];	
		$arr['user']['photos'] = userAppPhotos($sm['user']['id']);	
		$arr['user']['notification'] = userNotifications($sm['user']['id']);
		echo json_encode($arr);
	break;
	case 'slike':
		$query = $_GET['query'];
		$data = explode(',',$query);
		$uid = $data[0];
		$credits = $data[1];
		$slike = $data[2];		
		$arr = array();
		$mysqli->query("UPDATE users set credits = credits-'".$credits."', sexy = sexy+10 where id = '".$uid."'");
		getUserInfo($uid);
		$arr['user'] = $sm['user'];	
		$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
		$age = $sm['user']['s_age'];
		$e_age = explode( ',', $age );		
		$arr['user']['sage'] = $e_age[1];	
		$arr['user']['photos'] = userAppPhotos($sm['user']['id']);
		$arr['user']['notification'] = userNotifications($sm['user']['id']);
		echo json_encode($arr);
	break;	
	case 'sendMessage':
		$query = $_GET['query'];
		$data = explode(',',$query);
		$s_id = $data[0];
		$r_id = $data[1];
		$message = secureEncode($data[2]);
		$type = $data[3];
		$time = time();
		getUserInfo($r_id,1);
		getUserInfo($s_id);	
		$mysqli->query("UPDATE chat set seen = 1 where s_id = '".$s_id."' and r_id = '".$r_id."'");	
		$time = time();
		if($sm['user']['last_access'] < $time){
			$mysqli->query("UPDATE users set last_access = '".$time."' where id = '".$sm['user']['id']."'");		
		}		
		$fake = $sm['profile']['fake'];
		$online_day = $sm['profile']['online_day'];
		if($type == 'gift'){
			$message = $data[2];
			$price = $data[4];
			$query2 = "UPDATE users SET credits = credits-'".$price."' WHERE id= '".$s_id."'";
			$mysqli->query($query2);						
		}
		if($type == 'image'){
			$mysqli->query("INSERT INTO chat (s_id,r_id,time,message,fake,online_day,photo) VALUES ('".$s_id."','".$r_id."','".$time."','".$message."','".$fake."','".$online_day."',1)");
		} else {
			$mysqli->query("INSERT INTO chat (s_id,r_id,time,message,fake,online_day) VALUES ('".$s_id."','".$r_id."','".$time."','".$message."','".$fake."','".$online_day."')");		
		}
		$noti= 'notification'.$r_id;
		$data['notification_chat'] = false;
		$data['id'] = $s_id;
		$data['icon'] = $sm['user']['profile_photo'];
		$data['name'] = $sm['user']['name'];
		$data['message'] = $message;
		$results = $mysqli->query("SELECT DISTINCT s_id FROM chat WHERE r_id = '".$r_id."' AND seen = 0 AND notification = 0 order by id desc");			
		if($results->num_rows > 0){		
			$data['notification_chat'] = getUserFriends($r_id);	
			$data['unread'] = checkUnreadMessages($r_id);
		}
		$sm['push']->trigger(siteConfig('pusher_key'), $noti, $data);	
		if($fake == 0){
			$sm['profile_notifications'] = userNotifications($sm['profile']['id']);
			if($sm['profile']['last_access']+300 <= time() && $sm['profile_notifications']['message'] == 1){
				chatMailNotification($r_id,$message);
			} 
		}		
		$arr = array();
		if($fake == 0){
			$sm['profile_notifications'] = userNotifications($sm['profile']['id']);
			if($sm['profile']['last_access']+300 >= time() && $sm['profile_notifications']['message'] == 1){
				chatMailNotification($r_id,$message);
			} 
		}		
		pushNotification($sm['profile']['app_id'],$sm['user']['first_name'],cleanMessage($message),$sm['user']['profile_photo']);			
	break;	
	case 'userChat':
		$uid1 = secureEncode($_GET['uid1']);
		$uid2 = secureEncode($_GET['uid2']);
		getUserInfo($uid1);
		$arr = array();
		$timestamp = '';
		$time = time();
		if($sm['user']['last_access'] < $time){
			$mysqli->query("UPDATE users set last_access = '".$time."' where id = '".$sm['user']['id']."'");		
		}		
		$count = getUserTodayConv($uid1);	
		$new = getUserTotalConv($uid1,$uid2);
		$check = blockedUser($uid1,$uid2);
		if($check == 1){
			$arr['blocked'] = 1;
		} else {
			$arr['blocked'] = 0;
		}		
		if($new == 0 && $count >= $sm['basic']['chat'] && $sm['user']['premium'] == 0){
			$arr['premium'] = 1;
		} else if($new == 0 && $count >= $sm['premium']['chat'] && $sm['user']['premium'] == 1){
			$arr['premium'] = 1;
		} else {
			$arr['premium'] = 0;
		}
		$mysqli->query("UPDATE chat set seen = 1 where s_id = '".$uid2."' and r_id = '".$uid1."'");	
		$spotlight = $mysqli->query("SELECT * FROM chat WHERE s_id = '".$uid1."' and r_id = '".$uid2."'
									OR r_id = '".$uid1."' and s_id = '".$uid2."' ORDER BY id ASC");
		if ($spotlight->num_rows > 0) { 
			while($spotl = $spotlight->fetch_object()){					
				$message = $spotl->message;
				$continue = true;
				$time = $spotl->time;
				$stamp = date("M d Y", $time);		
				if($stamp != $timestamp){
					$timestamp = $stamp;
				} else {
					$timestamp = '';
				}
				$type = 'text';
				if($spotl->photo == 1){
					$type = 'image';
				}
				if($spotl->access == 1){
				}			
				if($spotl->seen == 1){
				} else {
				}
				if($continue == true){
					if($uid1 == $spotl->s_id) {
						$me = true;
						$p = $spotl->r_id;
					}else {
						$me = false;
						$p = $spotl->s_id;
					}
				}
				$arr['chat'][] = array(
					  "isMe" => $me,
					  "id" => $spotl->id,
					  "seen" => $spotl->seen,					  
					  "type" => $type,
					  "body" => $message,					  
					  "avatar" => profilePhoto($p),
					  "timestamp" => $timestamp
				);				
			}	
		}
		echo json_encode($arr);	
	break;
	case 'userCChat':
		$uid1 = secureEncode($_GET['uid1']);
		$uid2 = secureEncode($_GET['uid2']);		
		$arr = array();
		$time = time()-3;
		getUserInfo($uid1);
		if($sm['user']['last_access'] < $time){
			$mysqli->query("UPDATE users set last_access = '".$time."' where id = '".$sm['user']['id']."'");		
		}		
		$spotlight = $mysqli->query("SELECT * FROM chat WHERE r_id = '".$uid1."' and s_id = '".$uid2."'  and seen = 0 ORDER BY id ASC");
		$mysqli->query("UPDATE chat set seen = 1 where s_id = '".$uid2."' and r_id = '".$uid1."'");
		if ($spotlight->num_rows > 0) { 
			while($spotl = $spotlight->fetch_object()){					
				$message = $spotl->message;
				$continue = true;
				$time = $spotl->time;
				$stamp = date("M d Y", $time);		
				if($stamp != $timestamp){
					$timestamp = $stamp;
				} else {
					$timestamp = '';
				}
				$type = 'text';
				if($spotl->photo == 1){
					$type = 'image';
				}
				if($spotl->access == 1){
				}			
				if($spotl->seen == 1){
				} else {
				}
				if($continue == true){
					if($uid1 == $spotl->s_id) {
						$me = true;
						$p = $spotl->r_id;
					}else {
						$me = false;
						$p = $spotl->s_id;
					}
				}
				$arr['chat'][] = array(
					  "isMe" => $me,
					  "id" => $spotl->id,
					  "seen" => $spotl->seen,					  
					  "type" => $type,
					  "body" => $message,					  
					  "avatar" => profilePhoto($p),
					  "timestamp" => $timestamp
				);				
			}	
		}
		echo json_encode($arr);	
	break;	
	case 'game_like':
		$uid1 = secureEncode($_GET['uid1']);
		getUserInfo($uid1);
		$time = time();
		if($sm['user']['last_access'] < $time){
			$mysqli->query("UPDATE users set last_access = '".$time."' where id = '".$sm['user']['id']."'");	
		}
		$id = secureEncode($_GET['uid2']);
		$action = secureEncode($_GET['uid3']);	
		if($action == 3){ //este es el super like
			$time = time() + 288000;
			$mysqli->query("UPDATE users set sexy = sexy-1 where id = '".$uid1."'");	
			$mysqli->query("INSERT INTO users_likes (u1,u2,love,time,superlike) VALUES ('$uid1','$id',1,'$time',1)");		
		} else { //like/unlike normal
			$time = time();
			$mysqli->query("INSERT INTO users_likes (u1,u2,love,time) VALUES ('$uid1','$id','$action','$time')");			
		}
		getUserInfo($uid1,1);
        $noti= 'like'.$id;
        $data['id'] = $uid1;
        $data['message'] = $sm['alang'][253]['text'];
        $data['time'] = date("H:i", time());
        $data['type'] = 4;
        $data['icon'] = $sm['profile']['profile_photo'];
        $data['name'] = $sm['profile']['name'];      
        $data['photo'] = 0;
        $data['unread'] = checkUnreadMessages($id);       
        $sm['push']->trigger(siteConfig('pusher_key'), $noti, $data); 
		if($action == 1){
			$sm['profile_notifications'] = userNotifications($id);
			if($sm['profile_notifications']['fan'] == 1){
				fanMailNotification($id);
				//push notification
				if(empty($sm['profile']['premium'])){
					pushNotification($sm['profile']['app_id'],$sm['alang'][254]['text'],$sm['alang'][255]['text'] ,'');
				} else {
					pushNotification($sm['profile']['app_id'],$sm['user']['first_name'],$sm['alang'][256]['text'].' '.$sm['user']['first_name'].' '.$sm['alang'][257]['text'] ,$sm['user']['profile_photo']);
				}
			}
			if(isFanApp($id,$sm['user']['id']) == 1 && $sm['profile_notifications']['match_m'] == 1){
				matchMailNotification($id);	
					pushNotification($sm['profile']['app_id'],$sm['user']['first_name'],$sm['alang'][142]['text'] ,$sm['user']['profile_photo']);															   
			}
		}
	break;	
	case 'game':
		$id = secureEncode($_GET['id']);
		getUserInfo($id);
		$e_age = explode( ',', $sm['user']['s_age'] );
		$age1 = $e_age[0];
		$age2 = $e_age[1];
		$time = time();
		if($sm['user']['last_access'] < $time){
			$mysqli->query("UPDATE users set last_access = '".$time."' where id = '".$sm['user']['id']."'");		
		}
		$gender = $sm['user']['s_gender'];
		$all = count($sm['genders']);
		$all = $all + 1;
		if($gender == $all){
			$u_total = $mysqli->query("SELECT id, ( 6371 * acos( cos( radians('".$sm['user']['lat']."') ) * cos( radians( lat ) ) * 
					  cos( radians( lng ) - radians('".$sm['user']['lng']."') ) + sin( radians('".$sm['user']['lat']."') ) * sin(radians(lat)) ) )
					  AS distance 
					  FROM users
					  WHERE age BETWEEN '".$age1."' AND '".$age2."'				  
					  ORDER BY distance ASC, last_access DESC");
		}else{
			$u_total = $mysqli->query("SELECT id, ( 6371 * acos( cos( radians('".$sm['user']['lat']."') ) * cos( radians( lat ) ) * 
					  cos( radians( lng ) - radians('".$sm['user']['lng']."') ) + sin( radians('".$sm['user']['lat']."') ) * sin(radians(lat)) ) )
					  AS distance 
					  FROM users
					  WHERE age BETWEEN '".$age1."' AND '".$age2."'
					  AND gender = '".$sm['user']['s_gender']."'					  
					  ORDER BY distance ASC, last_access DESC");			
		}
		$array1  = array();
		if ($u_total->num_rows > 0) { 
			while($u_t= $u_total->fetch_object()){
				$a = profilePhoto($u_t->id);
				if (strpos($a, 'themes') !== false) {
				} else {
					$array1[] = $u_t->id;
				}					
			}
		}		
		$u_total2 = $mysqli->query("SELECT u2 FROM users_likes where u1 = '".$id."'");
		$array2  = array();
		if ($u_total2->num_rows > 0) {
			while($u_t2 = $u_total2->fetch_object()) {
				$array2[] = $u_t2->u2;						
			}
		}
		$resultado2 = array_diff($array1, $array2);
		$resultado = array_slice($resultado2, 0, 40);
		$user_g = array_shift($resultado);
		$i=0;
		$info = array();
		$max = count($resultado2);
		$max = $max-2;
		if(count($resultado2) <= 2){
			$info['game'] = array(
				  "error" => 1
			);		
		} else {
			foreach($resultado as $user_g){
			    if($i <= $max-2){
					$user_game = $mysqli->query("SELECT * FROM users WHERE id = '".$user_g."'");
					$sexy_game = $user_game->fetch_object();
					$city = $sexy_game->city;
					getUserInfo($sexy_game->id,1);
					$info['game'][] = array(
						  "id" => $sexy_game->id,
						  "name" => $sexy_game->name,
						  "status" => userFilterStatus($sexy_game->id),
						  "distance" => distance($sm['user']['lat'],$sm['user']['lng'],$sexy_game->lat,$sexy_game->lng),				  
						  "age" => $sexy_game->age,
						  "city" => $city,
						  "bio" => $sexy_game->bio,	
						  "isFan" => isFanApp($sexy_game->id,$sm['user']['id']),
						  "total" => getUserTotalLikers($sexy_game->id),
						  "photo" => profilePhoto($sexy_game->id),
						  "full" => $sm['profile'],
						  "error" => 0
					);
					$i++;
				}
			}			
		}
		echo json_encode($info);
	break;
	case 'updateSRadius':
		$arr = array();
		$query = secureEncode($_GET['query']);
		$data = explode(',',$query);
		$uid = $data[0];	
		$radius = $data[1];
		$mysqli->query("UPDATE users set s_radious = '".$radius."' where id = '".$uid."'");
		getUserInfo($uid);
		$arr['user'] = $sm['user'];	
		$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
		$age = $sm['user']['s_age'];
		$e_age = explode( ',', $age );		
		$arr['user']['sage'] = $e_age[1];	
		$arr['user']['photos'] = userAppPhotos($sm['user']['id']);
		$arr['user']['notification'] = userNotifications($sm['user']['id']);
		echo json_encode($arr);		
	break;
	case 'updateGender':
		$arr = array();
		$query = secureEncode($_GET['query']);
		$data = explode(',',$query);
		$uid = $data[0];	
		$gender = $data[1];
		if($uid != 1409073756){
			$mysqli->query("UPDATE users set looking = '".$gender."',s_gender = '".$gender."' where id = '".$uid."'");
		}
		getUserInfo($uid);
		$arr['user'] = $sm['user'];	
		$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
		$age = $sm['user']['s_age'];
		$e_age = explode( ',', $age );		
		$arr['user']['sage'] = $e_age[1];	
		$arr['user']['photos'] = userAppPhotos($sm['user']['id']);
		$arr['user']['notification'] = userNotifications($sm['user']['id']);
		echo json_encode($arr);		
	break;	
	case 'updateUserLanguage':
		$arr = array();
		$query = secureEncode($_GET['query']);
		$data = explode(',',$query);
		$uid = $data[0];	
		$l = $data[1];
		$mysqli->query("UPDATE users set lang = '".$l."' where id = '".$uid."'");
	break;	
	case 'updateUserGender':
		$arr = array();
		$query = secureEncode($_GET['query']);
		$data = explode(',',$query);
		$uid = $data[0];	
		$gender = $data[1];
		$mysqli->query("UPDATE users set gender = '".$gender."' where id = '".$uid."'");
		getUserInfo($uid);
		$arr['user'] = $sm['user'];	
		$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
		$age = $sm['user']['s_age'];
		$e_age = explode( ',', $age );		
		$arr['user']['sage'] = $e_age[1];	
		$arr['user']['photos'] = userAppPhotos($sm['user']['id']);
		$arr['user']['notification'] = userNotifications($sm['user']['id']);
		echo json_encode($arr);		
	break;
	case 'deletePhoto':
		$arr = array();
		$query = secureEncode($_GET['query']);
		$data = explode(',',$query);
		$uid = $data[0];	
		$pid = $data[1];
		$mysqli->query("DELETE FROM users_photos where id = '".$pid."'");		
		$arr['user']['photos'] = userAppPhotos($uid);
		echo json_encode($arr);	
	break;
	case 'updateUserProfilePhoto':
		$arr = array();
		$query = secureEncode($_GET['query']);
		$data = explode(',',$query);
		$uid = $data[0];	
		$pid = $data[1];
		if($uid != 1409073756){
		$mysqli->query("UPDATE users_photos set profile = 0 where u_id = '".$uid."'");
		$mysqli->query("UPDATE users_photos set profile = 1 where u_id = '".$uid."' and id = '".$pid."'");
		}
		getUserInfo($uid);
		$arr['user'] = $sm['user'];	
		$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
		$age = $sm['user']['s_age'];
		$e_age = explode( ',', $age );		
		$arr['user']['sage'] = $e_age[1];	
		$arr['user']['photos'] = userAppPhotos($sm['user']['id']);
		$arr['user']['notification'] = userNotifications($sm['user']['id']);
		echo json_encode($arr);		
	break;
	case 'updateUser':
		$arr = array();
		$query = secureEncode($_GET['query']);
		$data = explode(',',$query);
		$uid = $data[0];	
		$val = $data[1];
		$col = $data[2];
		$mysqli->query("UPDATE users set $col = '".$val."' where id = '".$uid."'");
		getUserInfo($uid);
		$arr['user'] = $sm['user'];	
		$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
		$age = $sm['user']['s_age'];
		$e_age = explode( ',', $age );		
		$arr['user']['sage'] = $e_age[1];	
		$arr['user']['photos'] = userAppPhotos($sm['user']['id']);
		$arr['user']['notification'] = userNotifications($sm['user']['id']);
		echo json_encode($arr);		
	break;
	case 'updateUserExtended':
		$arr = array();
		$query = secureEncode($_GET['query']);
		$data = explode(',',$query);
		$uid = $data[0];
		$qid = $data[1];	
		$a = $data[2];
		$mysqli->query("INSERT INTO users_profile_questions (uid,qid,answer)
		VALUES ('".$uid."','".$qid."','".$a."') ON DUPLICATE KEY UPDATE answer = '".$a."'");	
		getUserInfo($uid);
		$arr['user'] = $sm['user'];	
		$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
		$age = $sm['user']['s_age'];
		$e_age = explode( ',', $age );		
		$arr['user']['sage'] = $e_age[1];	
		$arr['user']['photos'] = userAppPhotos($sm['user']['id']);
		$arr['user']['notification'] = userNotifications($sm['user']['id']);
		echo json_encode($arr);		
	break;	
	case 'updateAge':
		$arr = array();
		$query = secureEncode($_GET['query']);
		$data = explode(',',$query);
		$uid = $data[0];	
		$sage = $data[1];
		$sage2 = $data[2];
		$lol = $sage.','.$sage2.',1';
		$mysqli->query("UPDATE users set s_age = '".$lol."' where id = '".$uid."'");
	break;		
	case 'updateLocation':
		$arr = array();
		$query = secureEncode($_GET['query']);
		$data = explode(',',$query);
		$uid = $data[0];	
		$lat = $data[1];
		$lng = $data[2];
		$city = $data[3];
		$country = $data[4];
		$mysqli->query("UPDATE users set lat = '".$lat."',lng = '".$lng."',city = '".$city."',country = '".$country."' where id = '".$uid."'");
		getUserInfo($uid);
		$arr['user'] = $sm['user'];	
		$arr['user']['slike'] = getUserSuperLikes($sm['user']['id']);
		$age = $sm['user']['s_age'];
		$e_age = explode( ',', $age );		
		$arr['user']['sage'] = $e_age[1];	
		$arr['user']['photos'] = userAppPhotos($sm['user']['id']);
		$arr['user']['notification'] = userNotifications($sm['user']['id']);
		echo json_encode($arr);		
	break;	
	case 'updatePeer':
		$query = secureEncode($_GET['query']);
		$data = explode(',',$query);
		$uid = $data[0];	
		$peer = $data[1];
		$mysqli->query("UPDATE users_videocall set peer_id = '".$peer."',status=1 where u_id = '".$uid."'");
	break;
	case 'updateNotification':
		$query = secureEncode($_GET['query']);
		$data = explode(',',$query);
		$uid = $data[0];	
		$col = $data[1];
		$val = $data[2];
		$mysqli->query("UPDATE users_notifications set $col = $val where uid = $uid");
	break;	
	case 'check':
		$id = secureEncode($_POST['id']);
		echo isFan($id,$sm['user']['id']);
	break;
	case 'income':
		$query = secureEncode($_GET['query']);
		$data = explode(',',$query);
		$peer = $data[0];	
		$peerid = getIdPeer($peer);
		getUserInfo($peerid,5);
		$info = array(
			  "name" => $sm['videocall']['name'],
			  "id" => $sm['videocall']['id'],	  
			  "peer" => $peerid,	  
			  "photo" => profilePhoto($sm['videocall']['id']), 
		);	
		echo json_encode($info);
	break;
	case 'invideocall':
		$mysqli->query("UPDATE users_videocall set status=2 where u_id = '".$uid."'");
	break;
	case 'log':
		$min = secureEncode($_POST['min']);
		$sec = secureEncode($_POST['sec']);		
		$user = secureEncode($_POST['user']);
		$time = $min.":".$sec;
		$date = date("Y-m-d H:i:s", time());
		$mysqli->query("INSERT INTO videocall (c_id,r_id,time,date) VALUES ('".$uid."','".$user."','".$time."','".$date."')");
	break;	
	case 'recover':	
		$arr = array();
		$arr['error'] = 0;
		$query = secureEncode($_GET['query']);
		$data = explode(',',$query);
		$email = $data[0];	
		if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
			$arr['error'] = 1;
			$arr['error_m'] = $sm['lang'][181]['text'];	
			echo json_encode($arr);
			exit;		
		}		
		if($email == "" || $email == NULL ){
			$arr['error'] = 1;
			$arr['error_m'] = $sm['lang'][182]['text'];	
			echo json_encode($arr);
			exit;	
		}			
		$email_check = $mysqli->query("SELECT email,id,name FROM users WHERE email = '".$email."'");	
		if($email_check->num_rows == 0 ){
			$arr['error'] = 1;
			$arr['error_m'] = $sm['lang'][183]['text'];	
			echo json_encode($arr);
			exit;	
		} else {
			$user = $email_check->fetch_object();
			$time = time();
			$code = md5($time);
			$mysqli->query("INSERT INTO emails (type,uid,code) VALUES (1,'".$user->id."', '".$code."')");			
			$msg = " ".$sm['lang'][177]['text']." ".$user->name." ".$sm['lang'][178]['text']."<br><br><a href='".$sm['config']['site_url']."/index.php?page=recover&code=".$code."&id=".$user->id."'>".$sm['lang'][179]['text']."</a>";
			$headers = "MIME-Version: 1.0" . "\r\n";
			$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
			$headers .= 'From: <'.$sm['config']['email'].'>' . "\r\n";			
			$subject = $sm['config']['name'].' - '.$sm['lang'][180]['text'];
			mail($email,$subject,$msg,$headers);
			echo json_encode($arr);				
		}
	break;	
	case 'getpeerid':
		$peer = secureEncode($_GET['query']);
		$peerid = getPeerId($peer);
		$status = getVideocallStatus($peer);
		getUserInfo($peer,5);	
		if ($sm['videocall']['last_access']+300 >= time() && $status == 1) {
			$status = 1;
		}
			pushNotification($sm['videocall']['app_id'],$sm['user']['first_name'],'Want to start a videocall',$sm['user']['profile_photo']);						
		$info = array(
			  "name" => $sm['videocall']['name'],
			  "id" => $sm['videocall']['id'],	  
			  "peer" => $peerid,	
			  "status" => $status,		  
			  "photo" => profilePhoto($sm['videocall']['id']), 
		);	
		echo json_encode($info);
	break;	
}
$mysqli->close();