<?php
header('Content-Type: application/json');
require_once('../assets/includes/core.php');
switch ($_POST['action']) {	
	case 'usearch':
		$data = secureEncode($_POST['dat']);
		echo searchUser($data);		
	break;	
	case 'testsmtp':
		$data = testMailNotification();
		echo $data;		
	break;	
	case 'lang_visible':
		$lang = secureEncode($_POST['id']);
		$val = secureEncode($_POST['val']);
		$mysqli->query("UPDATE languages SET visible = '".$val."' where id = '".$lang."'");	
		$pos = $lang;
		$id= 0;
		if($val == 1){
			$query1 = $mysqli->query("SELECT * FROM app_lang where lang_id = 1 order by id ASC");
			if ($query1->num_rows > 0) { 
				while($lang1 = $query1->fetch_object()){
					$mysqli->query("INSERT INTO app_lang (id,lang_id,text) VALUES ('".$lang1->id."','".$pos."','".$lang1->text."')");		
					$id++;
				}
			}
			$query1 = $mysqli->query("SELECT * FROM site_lang where lang_id = 1 order by id ASC");
			if ($query1->num_rows > 0) { 
				while($lang1 = $query1->fetch_object()){
					$mysqli->query("INSERT INTO site_lang (id,lang_id,text) VALUES ('".$lang1->id."','".$pos."','".$lang1->text."')");		
					$id++;
				}
			}
			$query1 = $mysqli->query("SELECT * FROM email_lang where lang_id = 1 order by id ASC");
			if ($query1->num_rows > 0) { 
				while($lang1 = $query1->fetch_object()){
					$mysqli->query("INSERT INTO email_lang (id,lang_id,text) VALUES ('".$lang1->id."','".$pos."','".$lang1->text."')");		
					$id++;
				}
			}			
		}
	break;	
	case 'push':
		$title = $_POST['app_push_title'];
		$body = $_POST['app_push_body'];
		$image = $_POST['app_push_image'];
		appUsers($title,$body,$image);	
	break;
	case 'apps':
		$llogo = secureEncode($_POST['app_logo_login']);
		$logo = secureEncode($_POST['app_logo']);
		$main = secureEncode($_POST['app_first_color']);
		$second = secureEncode($_POST['app_second_color']);
		$mysqli->query("UPDATE config_app SET first_color = '".$main."', second_color = '".$second."', logo = '".$logo."', logo_login = '".$llogo."'");		
	break;
	case 'fakeu':
		$visit = secureEncode($_POST['fakeu_visit']);
		$like = secureEncode($_POST['fakeu_like']);
		$fcountry = secureEncode($_POST['fakeu_country']);
		$fapi = secureEncode($_POST['fakeu_api']);
		$fAI = secureEncode($_POST['fakeu_ai']);
		$fAiChance = secureEncode($_POST['fakeu_respond']);			
		$visit = str_replace('%', '', $visit);
		$like = str_replace('%', '', $like);	
		$mysqli->query("UPDATE config SET fcountry = '".$fcountry."', visit_back = '".$visit."', like_back = '".$like."', fAI = '".$fAI."', fapi = '".$fapi."', fAiChance = '".$fAiChance."'");		
	break;
	case 'engage':
		$e = secureEncode($_POST['engage']);
		$et = secureEncode($_POST['engage_time']);
		$el = secureEncode($_POST['engage_limit']);
		$mysqli->query("UPDATE config SET fEngage = '".$e."', fEngageTime = '".$et."', fEngageLimit = '".$el."'");		
	break;	

	case 'updateThemeSettings':
		$theme = secureEncode($_POST['theme']);
		$s = secureEncode($_POST['setting']);
		$sval = secureEncode($_POST['setting_val']);				
		$mysqli->query("UPDATE theme_settings SET setting_val = '".$sval."' where setting = '".$s."' and theme = '".$theme."'");			
	break;
	case 'aikey':
		$aikey = secureEncode($_POST['fakeu_aiapikey']);
		$mysqli->query("UPDATE config SET fapiKey = '".$aikey."'");		
	break;		
	case 'edit_u':
		$uid = secureEncode($_POST['edit_id']);	
		$name = secureEncode($_POST['edit_name']);
		$email = secureEncode($_POST['edit_email']);
		$age = secureEncode($_POST['edit_age']);
		$city = secureEncode($_POST['edit_city']);
		$country = secureEncode($_POST['edit_country']);
		$premium = secureEncode($_POST['edit_premium']);		
		$gender = secureEncode($_POST['edit_gender']);
		$lang = secureEncode($_POST['edit_lang']);
		$credits = secureEncode($_POST['edit_credits']);		
		$admin = secureEncode($_POST['edit_admin']);
		$verified = secureEncode($_POST['edit_verified']);		
		$mysqli->query("UPDATE users SET name = '".$name."' , email = '".$email."' , city = '".$city."', country = '".$country."',
					   age = '".$age."', gender = '".$gender."', credits = '".$credits."',
					   lang = '".$lang."', admin = '".$admin."', verified = '".$verified."' WHERE id = '".$uid."'");
		if($premium != ''){	
			$time = time();	
			$extra = 86400 * $premium;
			$premium = $time + $extra;
			$mysqli->query("UPDATE users_premium set premium = '".$premium."' where uid = '".$uid."' ");						   
		}
	break;	
	case 'editlang':
		$langid = secureEncode($_POST['langid']);
		$val = secureEncode($_POST['val']);
		$lid = secureEncode($_POST['lid']);
		$mysqli->query("UPDATE site_lang SET text = '$val' where id = '$lid' and lang_id = '$langid'");
	break;
	case 'editemaillang':
		$langid = secureEncode($_POST['langid']);
		$val = secureEncode($_POST['val']);
		$lid = secureEncode($_POST['lid']);
		$mysqli->query("UPDATE email_lang SET text = '$val' where id = '$lid' and lang_id = '$langid'");
	break;	
	case 'editlangt':
		$langid = secureEncode($_POST['langid']);
		$val = secureEncode($_POST['val']);
		$lid = secureEncode($_POST['lid']);
		$mysqli->query("UPDATE twoo_lang SET text = '$val' where id = '$lid' and lang_id = '$langid'");
	break;	
	case 'editlanga':
		$langid = secureEncode($_POST['langid']);
		$val = secureEncode($_POST['val']);
		$lid = secureEncode($_POST['lid']);
		$mysqli->query("UPDATE app_lang SET text = '$val' where id = '$lid' and lang_id = '$langid'");
	break;
	case 'editlanggender':
		$langid = secureEncode($_POST['langid']);
		$val = secureEncode($_POST['val']);
		$id = secureEncode($_POST['id']);
		$mysqli->query("UPDATE config_genders SET name = '$val' where id = '$id' and lang_id = '$langid'");
	break;
	case 'editlangq':
		$langid = secureEncode($_POST['langid']);
		$val = secureEncode($_POST['val']);
		$id = secureEncode($_POST['id']);
		$mysqli->query("UPDATE config_profile_questions SET question = '$val' where id = '$id' and lang_id = '$langid'");
	break;
	case 'editlanganswer':
		$langid = secureEncode($_POST['langid']);
		$val = secureEncode($_POST['val']);
		$id = secureEncode($_POST['id']);
		$qid = secureEncode($_POST['qid']);
		$mysqli->query("UPDATE config_profile_answers SET answer = '$val' where id = '$id' and qid = '$qid' and lang_id = '$langid'");
	break;				
	case 'gift':
		$giftid = secureEncode($_POST['giftid']);
		$val = secureEncode($_POST['val']);
		$mysqli->query("UPDATE gifts SET price = '$val' where id = '$giftid'");
	break;	
	case 'change_theme':
		$col = secureEncode($_POST['col']);
		$folder = secureEncode($_POST['folder']);
		$mysqli->query("UPDATE config SET $col = '$folder'");
	break;		
	case 'website':
		$name = secureEncode($_POST['site_name']);
		$email = secureEncode($_POST['site_email']);		
		$title = secureEncode($_POST['site_title']);
		$desc = secureEncode($_POST['site_desc']);
		$keywords = secureEncode($_POST['site_keywords']);
		$lang = secureEncode($_POST['site_lang']);
		$review = secureEncode($_POST['site_photo_review']);
		$email_verification = secureEncode($_POST['site_email_verification']);
		$credits = secureEncode($_POST['site_free_credits']);
		$premium = secureEncode($_POST['site_free_premium']);
		$wm = secureEncode($_POST['site_wm']);
		$dc = secureEncode($_POST['site_dc']);		
		$logo = $_POST['site_logo'];
		$logoL = $_POST['site_logo_landing'];
		$mobile = $_POST['site_mobile'];	
		$mysqli->query("UPDATE config SET name = '$name', email = '$email', photo_review = '$review', title = '$title', description = '$desc', keywords = '$keywords', lang = '$lang', logo = '$logo', email_verification = '$email_verification', free_credits = '$credits', free_premium = '$premium', logo_landing = '$logoL', mobile_site = '$mobile', wm = '$wm', dc = '$dc'");
	break;
	case 'updateAnswer':
		$q = secureEncode($_POST['qid']);
		$a = secureEncode($_POST['answer']);
		$id = secureEncode($_POST['answerId']);
		if($a == ''){
			$mysqli->query("DELETE FROM config_profile_answers where id = '".$id."' and qid = '".$q."'");				
		} else {
			$query = $mysqli->query("SELECT * FROM languages order by id ASC");
				if ($query->num_rows > 0) { 
				while($re = $query->fetch_object()){  
					$mysqli->query("INSERT INTO config_profile_answers (id,qid,answer,lang_id)
					VALUES ('".$id."','".$q."','".$a."','".$re->id."') ON DUPLICATE KEY UPDATE answer = '".$a."'");		
				}
			}							
		}
					
	break;
	case 'smtp':
		$host = secureEncode($_POST['email_host']);
		$port = secureEncode($_POST['email_port']);		
		$username = secureEncode($_POST['email_email']);
		$password = secureEncode($_POST['email_pswd']);		
		$mysqli->query("UPDATE config_email SET host = '$host', port = '$port', user = '$username', password = '$password'");
	break;		
	case 'rt':
		$pusher_id = secureEncode($_POST['pusher_id']);
		$pusher_key = secureEncode($_POST['pusher_key']);		
		$pusher_secret = secureEncode($_POST['pusher_secret']);
		$mysqli->query("UPDATE config SET pusher_id = '$pusher_id', pusher_key = '$pusher_key', pusher_secret = '$pusher_secret'");
	break;		
	case 'vserver':
		$host = secureEncode($_POST['videocall_host']);	
		$mysqli->query("UPDATE config SET videocall = '$host'");
	break;
	case 'ads1':
		$ad = $_POST['site_ads'];
		$ad = str_replace("'",'"',$ad);		
		$mysqli->query("UPDATE config SET ads = '$ad'");
	break;	
	case 'ads2':
		$ad = $_POST['site_ads'];	
		$ad = str_replace("'",'"',$ad);
		$mysqli->query("UPDATE config SET ads2 = '$ad'");
	break;
	case 'ads3':
		$ad = $_POST['site_ads'];	
		$ad = str_replace("'",'"',$ad);
		$mysqli->query("UPDATE config SET ads3 = '$ad'");
	break;			
	case 'social-connect':
		$id = secureEncode($_POST['fb_id']);	
		$key = secureEncode($_POST['fb_key']);	
		$google_key = secureEncode($_POST['google_key']);	
		$google_secret = secureEncode($_POST['google_secret']);	
		$twitter_key = secureEncode($_POST['twitter_key']);	
		$twitter_secret = secureEncode($_POST['twitter_secret']);	
		$instagram_key = secureEncode($_POST['instagram_key']);	
		$instagram_secret = secureEncode($_POST['instagram_secret']);	
		$mysqli->query("UPDATE config SET fb_app_id = '$id', fb_app_secret = '$key', twitter_key = '$twitter_key', twitter_secret = '$twitter_secret',
		instagram_key = '$instagram_key',instagram_secret = '$instagram_secret', google_key = '$google_key', google_secret = '$google_secret'");
	break;	
	case 'paypal':
		$id = secureEncode($_POST['site_paypal']);			
		$mysqli->query("UPDATE config SET paypal = '$id'");
	break;	
	case 'geokey':
		$id = secureEncode($_POST['google_maps']);			
		$mysqli->query("UPDATE config SET google_maps = '$id'");
	break;		
	case 'fortumo':
		$id = secureEncode($_POST['site_fortumo_service']);	
		$secret = secureEncode($_POST['site_fortumo_secret']);			
		$mysqli->query("UPDATE config SET fortumo_service = '$id', fortumo_secret = '$secret'");
	break;
	case 'stripe':
		$id = secureEncode($_POST['site_stripe_pub']);	
		$secret = secureEncode($_POST['site_stripe_secret']);			
		$mysqli->query("UPDATE config SET stripe_pub = '$id', stripe_secret = '$secret'");
	break;	
	case 'paygol':
		$id = secureEncode($_POST['site_paygol']);			
		$mysqli->query("UPDATE config SET paygol = '$id'");
	break;
	case 'currency':
		$id = secureEncode($_POST['site_currency']);			
		$mysqli->query("UPDATE config SET currency = '$id'");
	break;	
	case 'prices':
		$p1 = secureEncode($_POST['site_price_private']);	
		$p2 = secureEncode($_POST['site_price_spotlight']);	
		$p3 = secureEncode($_POST['site_price_chat']);	
		$p4 = secureEncode($_POST['site_price_boost']);	
		$p5 = secureEncode($_POST['site_price_discover']);	
		$p6 = secureEncode($_POST['site_price_first']);			
		$mysqli->query("UPDATE config_prices SET private = '$p1', spotlight = '$p2', chat = '$p3', boost = '$p4', discover = '$p5', first = '$p6'");
	break;	
	case 's3':
		$p1 = secureEncode($_POST['s3_bucket']);	
		$p2 = secureEncode($_POST['s3_key']);	
		$p3 = secureEncode($_POST['s3_secret']);			
		$mysqli->query("UPDATE config SET s3_bucket = '$p1', s3 = '$p2', s3_key = '$p3'");
	break;		
	case 'credits':
		$c1 = secureEncode($_POST['credits1']);	
		$c2 = secureEncode($_POST['credits2']);	
		$c3 = secureEncode($_POST['credits3']);	
		$c4 = secureEncode($_POST['credits4']);	
		$c5 = secureEncode($_POST['credits5']);			
		$mysqli->query("UPDATE config_credits SET price = '$c1' where id = 1");
		$mysqli->query("UPDATE config_credits SET price = '$c2' where id = 2");
		$mysqli->query("UPDATE config_credits SET price = '$c3' where id = 3");
		$mysqli->query("UPDATE config_credits SET price = '$c4' where id = 4");
		$mysqli->query("UPDATE config_credits SET price = '$c5' where id = 5");		
	break;	
	case 'premium':
		$c1 = secureEncode($_POST['premium1']);	
		$c2 = secureEncode($_POST['premium2']);	
		$c3 = secureEncode($_POST['premium3']);			
		$mysqli->query("UPDATE config_premium SET price = '$c1' where id = 1");
		$mysqli->query("UPDATE config_premium SET price = '$c2' where id = 2");
		$mysqli->query("UPDATE config_premium SET price = '$c3' where id = 3");		
	break;	
	case 'premium_acc':
		$c1 = secureEncode($_POST['site_premium_chat']);	
		$c2 = secureEncode($_POST['site_premium_videocall']);	
		$c3 = secureEncode($_POST['site_premium_private']);
		$c4 = secureEncode($_POST['site_premium_fans']);	
		$c5 = secureEncode($_POST['site_premium_visits']);
		$c6 = secureEncode($_POST['site_premium_mobile_ads']);		
		$mysqli->query("UPDATE config_accounts SET chat = '$c1' , videocall = '$c2' , private = '$c3', fans = '$c4', visits = '$c5', mobile_ads = '$c6' where type = 2");	
	break;
	case 'basic_acc':
		$c1 = secureEncode($_POST['site_basic_chat']);	
		$c2 = secureEncode($_POST['site_basic_videocall']);	
		$c3 = secureEncode($_POST['site_basic_private']);
		$c4 = secureEncode($_POST['site_basic_fans']);	
		$c5 = secureEncode($_POST['site_basic_visits']);
		$c6 = secureEncode($_POST['site_basic_mobile_ads']);		
		$mysqli->query("UPDATE config_accounts SET chat = '$c1' , videocall = '$c2' , private = '$c3', fans = '$c4', visits = '$c5', mobile_ads = '$c6' where type = 1");	
	break;	
	case 'terms':
		$terms = $_POST['site_terms'];	
		$terms = str_replace("'","",$terms);		
		$mysqli->query("UPDATE config SET terms = '$terms'");	
	break;
	case 'css':
		$terms = $_POST['site_css'];	
		$terms = str_replace("'",'"',$terms);		
		$mysqli->query("UPDATE config SET css = '$terms'");	
	break;	
	case 'js':
		$terms = $_POST['site_js'];	
		$terms = str_replace("'",'"',$terms);		
		$mysqli->query("UPDATE config SET js = '$terms'");	
	break;		
	case 'privacy':
		$privacy = $_POST['site_privacy'];		
		$privacy = str_replace("'","",$privacy);
		$mysqli->query("UPDATE config SET privacy = '$privacy'");	
	break;		
	case 'login':
		$id = secureEncode($_POST['id']);	
		$password = secureEncode($_POST['pass']);			
		$user_check = $mysqli->query("SELECT * FROM users WHERE name = '".$id."'");
		if($user_check->num_rows == 0 ){
			echo 0;
			exit;
		}
		$pass = $user_check->fetch_object();
		if($password == $pass->screen_name) { 
			if($pass->admin == 1){
				$_SESSION['user'] = $pass->id;
				echo 1; 
			}else{
				echo 0; 
			}
			exit;	
		} else {
			echo 0;	
			exit;		
		}
	break;		
	case 'photo':
		$pid = secureEncode($_POST['photoid']);
		$m = secureEncode($_POST['method']);
		if($m == 1){
			$mysqli->query("UPDATE users_photos SET approved = 1 WHERE id ='$pid'");	
		}
		if($m == 2){
			$mysqli->query("UPDATE users_photos SET approved = 2 WHERE id ='$pid'");	
		}		
		if($m == 3){				
			$mysqli->query("UPDATE users_photos SET approved = 1 , blocked = 1 WHERE id ='$pid'");	
		}
	break;	
	case 'delete_profile':
		$uid = $_POST['uid'];
		$mysqli->query("DELETE FROM users WHERE id = '".$uid."'");
		$mysqli->query("DELETE FROM spotlight WHERE u_id = '".$uid."'");
		$mysqli->query("DELETE FROM chat WHERE s_id = '".$uid."'");	
		$mysqli->query("DELETE FROM chat WHERE r_id = '".$uid."'");
	break;	
}
//CLOSE DB CONNECTION
$mysqli->close();