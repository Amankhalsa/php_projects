<?php
require_once('../assets/includes/core.php');
$url = "https://www.cleverbot.com/getreply";
$key = siteConfig('fapiKey');
$time_now = time()-300;
$timestamp = time();
$dw = date( "w", $timestamp);

if(siteConfig('fapi') == 'Yes'){
$query = $mysqli->query("SELECT DISTINCT s_id,r_id FROM chat where fake = 1 and seen = 0 and online_day = '".$dw."' order by id DESC");
	if ($query->num_rows > 0) { 
		while($cre = $query->fetch_object()){
			$chance = rand(1, 100);
			if(siteConfig('fAiChance') > $chance){
				getUserInfo($cre->s_id,1);
				getUserInfo($cre->r_id,3);
				$m = getLastMessageMobile($cre->s_id,$cre->r_id);
				$r_id = secureEncode($cre->s_id);
				$s_id = secureEncode($cre->r_id);		
				$time = time();
				$fake = $sm['profile']['fake'];
				$mysqli->query("UPDATE chat set seen = 1 where s_id = '".$r_id."' and r_id = '".$s_id."'");
				$input = rawurlencode ($m);
				$apidata = json_decode (file_get_contents("$url?&input=$input&key=$key"));
				$message = $apidata->output;		
				$mysqli->query("INSERT INTO chat (s_id,r_id,time,message,fake) VALUES ('".$s_id."','".$r_id."','".$time."','".$message."','".$fake."')");
				$arr = array();
				$data = array();
		      	$event = 'chat'.$r_id.$s_id;
		        $arr['type'] = 1;
		        $arr['message'] = $message;
		        $arr['id'] = $s_id;
		        $arr['chatHeaderRight']='<div class="js-message-block" id="you">

		                <div class="message">

		                    <div class="brick brick--xsm brick--hover">

		                        <div class="brick-img profile-photo" data-src="'.$sm['chat']['profile_photo'].'"></div>

		                    </div>

		                    <div class="message__txt">

		                        <span class="lgrey message__time" style="margin-right: 15px;">'.date("H:i", time()).'</span>

		                        <div class="message__name lgrey">'.$sm['chat']['name'].'</div>

		                        <p class="montserrat chat-text">'.$message.'</p>

		                    </div>

		                </div>

		            </div>  

		        ';     
		        $noti= 'notification'.$r_id;
		        $data['id'] = $s_id;
		        $data['message'] = $message;
		        $data['time'] = date("H:i", time());
		        $data['type'] = 1;
		        $data['icon'] = $sm['chat']['profile_photo'];
		        $data['name'] = $sm['chat']['name'];      
		        $data['photo'] = 0;
		        $data['unread'] = checkUnreadMessages($r_id);       
		        $sm['push']->trigger(siteConfig('pusher_key'), $noti, $data);  
		        $sm['push']->trigger( siteConfig('pusher_key'), $event, $arr );				
				if($fake == 0){
					$sm['profile_notifications'] = userNotifications($sm['profile']['id']);
					if($sm['profile']['last_access']+300 >= time() && $sm['profile_notifications']['message'] == 1){
						chatMailNotification($r_id,$message);
					} 
				}						
			}		
		}
	}
}