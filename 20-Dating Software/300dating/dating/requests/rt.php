<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
require('../assets/includes/config.php');
require('../assets/includes/pusher.php');

$options = array(
'cluster' => 'us2',    
'encrypted' => true
);
$mysqli = new mysqli($db_host, $db_username, $db_password,$db_name);

if (mysqli_connect_errno($mysqli)) {
    exit(mysqli_connect_error());
}

function checkUnreadMessages($uid){

    global $mysqli;
    $query = $mysqli->query("SELECT count(id) as total FROM chat WHERE r_id = '".$uid."' AND seen = 0");    
    $total = $query->fetch_assoc();
    return $total['total']; 

}
function siteConfig($val) {

    global $mysqli,$sm;
    $config = $mysqli->query("SELECT * FROM config");
    $result = $config->fetch_object();
    return $result->$val;

}

$rt =  new Pusher(
    siteConfig('pusher_key'),
    siteConfig('pusher_secret'),
    siteConfig('pusher_id'),
    $options
);  



function secureEncode($string) {

    $string = trim($string);

    $string = mysqli_real_escape_string($mysqli, $string);

    $string = htmlspecialchars($string, ENT_QUOTES);

    $string = str_replace('\\r\\n', '<br>',$string);

    $string = str_replace('\\r', '<br>',$string);

    $string = str_replace('\\n\\n', '<br>',$string);

    $string = str_replace('\\n', '<br>',$string);

    $string = str_replace('\\n', '<br>',$string);

    $string = stripslashes($string);

    $string = str_replace('&amp;#', '&#',$string);

    

    return $string;

}



switch ($_GET['action']) {

    case 'message':

        $query = $_GET['query'];
        $data = explode(',',$query);
        $s_id = $data[0];
        $r_id = $data[1];
        $photo = $data[2];
        $name = $data[3];
        $m = $data[4];
        $type = $data[5];
        $time = time();

        $event = 'chat'.$r_id.$s_id;
        $arr['type'] = $type;
        $arr['message'] = $m;
        $arr['id'] = $s_id;
        $arr['chatHeaderRight']='<div class="js-message-block" id="you">

                <div class="message">

                    <div class="brick brick--xsm brick--hover">

                        <div class="brick-img profile-photo" data-src="'.$photo.'"></div>

                    </div>

                    <div class="message__txt">

                        <span class="lgrey message__time" style="margin-right: 15px;">'.date("H:i", time()).'</span>

                        <div class="message__name lgrey">'.$name.'</div>

                        <p class="montserrat chat-text">'.$m.'</p>

                    </div>

                </div>

            </div>  

        ';     


        $noti= 'notification'.$r_id;
        $data['id'] = $s_id;
        $data['message'] = $m;
        $data['time'] = date("H:i", time());
        $data['type'] = 1;
        $data['icon'] = $photo;
        $data['name'] = $name;      
        $data['photo'] = 0;
        $data['unread'] = checkUnreadMessages($r_id);       
        $rt->trigger(siteConfig('pusher_key'), $noti, $data);  
        $rt->trigger( siteConfig('pusher_key'), $event, $arr );

    break;



    case 'typing':

        $query = $_GET['query'];

        $data = explode(',',$query);

        $s_id = $data[0];

        $r_id = $data[1];

        $t = $data[2];

        $time = time();

        $event = 'typing'.$r_id.$s_id;

        $arr['t'] = $t;

        $rt->trigger( siteConfig('pusher_key'), $event, $arr );

    break;    



}



