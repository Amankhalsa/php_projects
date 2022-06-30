<?php
/* Belloo By Xohan - xohansosa@gmail.com */
header('Content-Type: application/json');
require_once('../assets/includes/core.php');
$uid = $sm['user']['id'];
switch ($_POST['action']) {
	case 'update_user_meet':
		$lat = secureEncode($_POST['lat']);
		$lng = secureEncode($_POST['lng']);		
		$city = secureEncode($_POST['city']);	
		//$cityID = secureEncode($_POST['cityID']);				
		$country = secureEncode($_POST['country']);		
		$mysqli->query("UPDATE users set lat = '".$lat."', lng = '".$lng."', city = '".$city."', country = '".$country."' where id = '".$sm['user']['id']."'");
		if(siteConfig('theme') == 'old'){
			echo spotlightMobileOld($lat,$lng);		
		} else {
			echo spotlightMobile($lat,$lng);			
		}
	break;
	case 'riseUp':
		$time = time();	
		$extra = 86400 * 5;
		$riseUp = $time + $extra;	
		$price = $_POST['price'];
		$mysqli->query("UPDATE users set last_access = '".$riseUp."', meet = 1 where id = '".$sm['user']['id']."'");
		$query2 = "UPDATE users SET credits = credits-'".$price."' WHERE id= '".$sm['user']['id']."'";
		$mysqli->query($query2);			
	break;	
	case 'dailyChat':	
		$price = $_POST['price'];
		$mysqli->query("DELETE FROM users_chat where uid = '".$sm['user']['id']."'");			
		$query2 = "UPDATE users SET credits = credits-'".$price."' WHERE id= '".$sm['user']['id']."'";
		$mysqli->query($query2);
	break;		
	case 'online_now': 
        $query = 'id='.$sm['user']['id'];
        $action = 'getOnlineFriends';
        $lastm = apiCall($action,$query);
        $arr = array();  
        $arr['r'] = '';                                    
        foreach ($lastm['result'] as $val) { 
        	$arr['r'].='
            <a href="#"  onClick="goToProfile('.$val['id'].')"><li class="chat__human" style="margin-bottom: 5px;">
                <img class="chat__avatar" style="padding: 1px;margin:3px" src="'.$val['photo'].'" alt="" />
                <span class="chat__name comforta" style="position: absolute;margin-left:5px;margin-top: 5px;font-weight: bold">'.$val['firstName'].'</span>
                <span class="chat__last_m" style="position: absolute;margin-left:5px;margin-top: 23px;color:#999"> '.$val['last_m'].'</span>
            </li></a>';
       }
       $arr['total'] = $lastm['total_online'];
       echo $arr;	
	break;
	case 'discover100':
		$time = time();	
		$extra = 86400 * 5;
		$riseUp = $time + $extra;	
		$price = $_POST['price'];
		$mysqli->query("UPDATE users set last_access = '".$riseUp."', discover = 100 where id = '".$sm['user']['id']."'");
		$query2 = "UPDATE users SET credits = credits-'".$price."' WHERE id= '".$sm['user']['id']."'";
		$mysqli->query($query2);			
	break;			
	case 'wall':
		$id = secureEncode($_POST['id']);
		$b = secureEncode($_POST['b']);
		getUserInfo($id,1);	
		$check = blockedUser($sm['user']['id'],$sm['profile']['id']);
		if($check == 1){
			echo '<script>alert("'.$sm['profile']['first_name'].' is blocking you,sorry you cant contact her");</script>';
			getUserInfo($uid,1);	
			$sm['content'] = requestPage('profile/content-slider');
			echo $sm['content'];				
			exit;
		}
		$sm['content'] = requestPage('profile/content');
		/*
		if($id == $sm['user']['id']){		
			$sm['content'] = requestPage('profile/content');
		} else {
			$sm['content'] = requestPage('profile/content-slider');
		}
		*/
		echo $sm['content'];		
	break;
	case 'wall-header':
		$id = secureEncode($_POST['id']);
		getUserInfo($id,1);	
		$check = blockedUser($sm['user']['id'],$sm['profile']['id']);
		if($check == 1){
			echo '<script>alert("'.$sm['profile']['first_name'].' is blocking you,sorry you cant contact her");</script>';
			getUserInfo($uid,1);	
			$sm['content'] = requestPage('profile/content-header');
			echo $sm['content'];				
			exit;
		}		
		$sm['content'] = requestPage('profile/content-header');
		echo $sm['content'];		
	break;	
	case 'game':
		$e_age = explode( ',', $sm['user']['s_age'] );
		$age1 = $e_age[0];
		$age2 = $e_age[1];
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
				if($sm['user']['id'] != $u_t->id){
					$array1[] = $u_t->id;				
				}		
			}
		}		
		$u_total2 = $mysqli->query("SELECT u2 FROM users_likes where u1 = '".$uid."'");
		$array2  = array();
		if ($u_total2->num_rows > 0) {
			while($u_t2 = $u_total2->fetch_object()) {
				$array2[] = $u_t2->u2;						
			}
		}
		$resultado = array_diff($array1, $array2);
		$resultado = array_slice($resultado, 0, 20);
		$user_g = array_shift($resultado);
		$i=0;
		$info = array();
		if($user_g == 0){
			if($gender == $all){
				$user_game = $mysqli->query("SELECT id, ( 6371 * acos( cos( radians('".$sm['user']['lat']."') ) * cos( radians( lat ) ) * 
						  cos( radians( lng ) - radians('".$sm['user']['lng']."') ) + sin( radians('".$sm['user']['lat']."') ) * sin(radians(lat)) ) )
						  AS distance 
						  FROM users
						  WHERE age BETWEEN '".$age1."' AND '".$age2."'				  
						  ORDER BY distance ASC, last_access DESC
						  LIMIT 20");
						$sexy_game = $user_game->fetch_object();
						$info[] = array(
							  "id" => $sexy_game->id,
							  "name" => $sexy_game->name,
							  "status" => userStatusIcon($sexy_game->id),
							  "distance" => distance($sm['user']['lat'],$sm['user']['lng'],$sexy_game->lat,$sexy_game->lng),				  
							  "age" => $sexy_game->age,
							  "city" => $sexy_game->city,
							  "bio" => $sexy_game->bio,				  
							  "photos" => getUserPhotosAll($sexy_game->id),	  
							  "total" => getUserTotalLikers($sexy_game->id),
							  "photo" => profilePhoto($sexy_game->id)
						);						  
			}else{
				$user_game = $mysqli->query("SELECT id, ( 6371 * acos( cos( radians('".$sm['user']['lat']."') ) * cos( radians( lat ) ) * 
						  cos( radians( lng ) - radians('".$sm['user']['lng']."') ) + sin( radians('".$sm['user']['lat']."') ) * sin(radians(lat)) ) )
						  AS distance 
						  FROM users
						  WHERE age BETWEEN '".$age1."' AND '".$age2."'
						  AND gender = '".$sm['user']['s_gender']."'					  
						  ORDER BY distance ASC, last_access DESC
						  LIMIT 20");
						$sexy_game = $user_game->fetch_object();
						$info[] = array(
							  "id" => $sexy_game->id,
							  "name" => $sexy_game->name,
							  "status" => userStatusIcon($sexy_game->id),
							  "distance" => distance($sm['user']['lat'],$sm['user']['lng'],$sexy_game->lat,$sexy_game->lng),				  
							  "age" => $sexy_game->age,
							  "city" => $sexy_game->city,
							  "bio" => $sexy_game->bio,				  
							  "photos" => getUserPhotosAll($sexy_game->id),	  
							  "total" => getUserTotalLikers($sexy_game->id),
							  "photo" => profilePhoto($sexy_game->id)
						);						  
			}			
		} else {
			foreach($resultado as $user_g){
				$user_game = $mysqli->query("SELECT * FROM users WHERE id = '".$user_g."'");
				$sexy_game = $user_game->fetch_object();
				$info[] = array(
					  "id" => $sexy_game->id,
					  "name" => $sexy_game->name,
					  "status" => userStatusIcon($sexy_game->id),
					  "distance" => distance($sm['user']['lat'],$sm['user']['lng'],$sexy_game->lat,$sexy_game->lng),				  
					  "age" => $sexy_game->age,
					  "city" => $sexy_game->city,
					  "bio" => $sexy_game->bio,				  
					  "photos" => getUserPhotosAll($sexy_game->id),	  
					  "total" => getUserTotalLikers($sexy_game->id),
					  "photo" => profilePhoto($sexy_game->id)
				);
			}			
		}		
		echo json_encode($info);
	break;	
	case 'del_conv':
		$sid = secureEncode($_POST['id']);
		$mysqli->query("UPDATE chat set seen = 2 WHERE r_id = '".$uid."' AND s_id = '".$sid."'");
		$mysqli->query("UPDATE chat set notification = 2 WHERE s_id = '".$uid."' AND r_id = '".$sid."'");		
	break;		
}
$mysqli->close();