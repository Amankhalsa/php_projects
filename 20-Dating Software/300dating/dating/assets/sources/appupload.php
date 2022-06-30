<?php
header("Access-Control-Allow-Origin: *");
require_once("../includes/core.php");
require_once("../includes/custom/app_core.php");
require_once 'S3.php';
$options = array(
'cluster' => 'us2',    
'encrypted' => true
);
$rt =  new Pusher(
    siteConfig('pusher_key'),
    siteConfig('pusher_secret'),
    siteConfig('pusher_id'),
    $options
);  



function regImage($base64img,$uid){
    global $sm;
    $base64img = str_replace('data:image/jpeg;base64,', '', $base64img);

    $data = base64_decode($base64img);

	$time = time();

    $file = 'uploads/'.$uid.'.jpg';

    $photo = $sm['config']['site_url'].'/assets/sources/'.$file;    

    file_put_contents($file, $data);

}

function sendPhoto($base64img,$uid,$rid){
    global $mysqli,$sm,$rt;
    $base64img = str_replace('data:image/jpeg;base64,', '', $base64img);
    $data = base64_decode($base64img);
	$time = time();
    $file = 'uploads/'.$uid.$time.'.jpg';
    $photo = $sm['config']['site_url'].'/assets/sources/'.$file;
    file_put_contents($file, $data);


	$mysqli->query("INSERT INTO chat (s_id,r_id,time,message,photo) VALUES ('".$uid."','".$rid."','".$time."','".$photo."' , 1)");	
        $event = 'chat'.$rid.$uid;
        $arr['type'] = 'image';
        $arr['message'] = $photo;
        $arr['id'] = $uid;
        $arr['chatHeaderRight']='<div class="js-message-block" id="you">
                <div class="message">
                    <div class="brick brick--xsm brick--hover">
                        <div class="brick-img profile-photo" data-src="'.$photo.'"></div>
                    </div>
                    <div class="message__txt">
                        <span class="lgrey message__time" style="margin-right: 15px;">'.date("H:i", $time).'</span>
                        <div class="message__name lgrey"></div>
                        <a href="#img'.$time.'">
                            <p class="montserrat chat-text">
                                <div class="message__pic_ js-wrap" style="cursor:pointer;">
                                    <img  src="'.$photo.'" />
                                </div>
                            </p>
                        </a>
                    </div>
                </div>
            </div>  
        ';     
        $rt->trigger( siteConfig('pusher_key'), $event, $arr );    
}



function uploadImage($base64img,$uid){

	global $mysqli,$sm;

	$arr = array();

    $base64img = str_replace('data:image/jpeg;base64,', '', $base64img);

    $data = base64_decode($base64img);

	$time = time();

	$file = 'uploads/'.$time.'.jpg';
	$iurl = $sm['config']['site_url'].'/assets/sources/'.$file;
    file_put_contents($file, $data);

	$mysqli->query("INSERT INTO users_photos(u_id,photo,thumb,approved,private)

														   VALUES ('$uid','$iurl', '$iurl','".$sm['config']['photo_review']."','$iurl')");													   

	$arr['user']['photos'] = userAppPhotos($uid);

	echo json_encode($arr);

}



switch ($_POST['action']) {

	case 'register':

		regImage($_POST['base64'],$_POST['uid']);

	break;

	case 'upload':

		uploadImage($_POST['base64'],$_POST['uid']);

	break;

	case 'sendChat':

		sendPhoto($_POST['base64'],$_POST['uid'],$_POST['rid']);

	break;	

}



