<!DOCTYPE HTML>
<html lang="en">
<head>
    <title>Installer</title>

    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
    <style>body{background-color:#d9d9d9;font-family:Roboto,sans-serif;font-size:16px;color:#555;padding:70px 20px 0}.panel{background-color:#fafafa;border-radius:3px;-webkit-border-radius:3px;-moz-border-radius:3px;width:950px;margin:0 auto;box-shadow:2px 2px 4px rgba(0,0,0,.3)}.panel>table{width:100%}.logo{padding:25px 0 15px 30px}table tr,table tr td{margin:0;padding:0}table tr td:nth-child(2){background-color:#fff;padding:30px 35px}nav ul{margin:0 0 15px;padding:0;list-style:none}nav ul li{display:block;margin:0;padding:7px 0 8px 25px;color:#666;position:relative}nav ul li a{color:inherit;font-size:16px}nav ul li.active{background-color:#ff3f33;color:#fff}nav ul li.active:after{left:100%;top:50%;border:solid transparent;content:" ";height:0;width:0;position:absolute;pointer-events:none;border-color:rgba(21,101,192,0);border-left-color:#ff3f33;border-width:17px;margin-top:-17px}h1,p{margin:0 0 20px}h1{font-size:21px;font-weight:400}.terms{border:1px solid #ddd;background-color:#eee;margin:0 0 15px;padding:25px;border-radius:3px;max-height:200px;overflow-y:auto;font-size:14px}.terms strong{display:block;margin:0 0 4px;font-size:15px}.terms p{margin:0 0 15px}.terms p:last-child{margin-bottom:0}.btn{display:inline-block;padding:0 15px;height:32px;border:1px solid #cfcfcf;background-color:#f7f7f7;line-height:32px;font-size:13px;font-weight:500;color:#666;text-align:center;border-radius:5px;-webkit-border-radius:5px;-moz-border-radius:5px;cursor:pointer}.btn:hover{background-color:#f0f0f0}.btn.blue{background-color:#ff3f33;color:#fff}
    </style>
</head>
<body>
<?php
$error = false;

function checkPHPVersion() {
    global $error;
    $version = phpversion();
    if($version >= 5.3) {
        return '<b>OK</b>';
    } else {
        $error = true;
        return '<b>Error!</b>';
    }
}
function checkMySQLi() {
    global $error;
    if(function_exists('mysqli_connect')) {
        return '<b>OK</b>';
    } else {
        $error = true;
        return '<b>Error!</b>';
    }
}
function checkShortTag() {
    global $error;
    if(ini_get('short_open_tag')) {
        return '<b>OK</b>';
    } else {
        $error = true;
        return '<b>Error!</b>';
    }
}
function checkAllowUrlOpen(){
    global $error;
    if( ini_get('allow_url_fopen') ) {
        return '<b>OK</b>';
    } else {
        $error = true;
        return '<b>Error!</b>';
    }    
}

?>
    <div class="panel">
        <table cellspacing="0" cellpadding="0">
            <tr valign="top">
                <td width="225px">
                    <div class="logo">
                        <img src="" width="150px">
                    </div> 
                    <nav>
                        <ul>
                            <li class="active"><a>License agreement</a></li>                        
                            <li><a>Database setup</a></li>
                            <li><a>Activate license</a></li>
                            <li><a>Setup account</a></li>
                        </ul>
                    </nav>
                </td>
                <td>
                    <h1>Belloo Script Installer</h1>
                    <p class="rq"> PHP Version: <?=checkPHPVersion()?> </p>
                    <p class="rq"> MySQLi extension: <?=checkMySQLi()?> </p>
                    <p class="rq"> allow_url_fopen: <?=checkAllowUrlOpen()?> </p>                    
                    <p class="rq"> short_open_tag: <?=checkShortTag()?> </p>
                    <?php if($error){
                        echo'
                        <b class="help-block" style="width:300px;"> Having issues? <a href="https://premiumdatingscript.com/" target="_blank" class="text-success"> Live chat with our support</a> </b>                    
                        <p>Please review this important information about the services embedded in this product and our collection of data.</p>';
                    } else { 
                        echo '
                        <h3>License agreement</h3>
                        <div class="terms">'.file_get_contents("EULA.html").'</div>

                        <div style="text-align: right;">
                            <a class="btn blue" href="dbsetup.php">Accept</a>
                        </div> ';
                    } ?>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
