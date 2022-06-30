<?php
header('Content-Type: text/html; charset=UTF-8');
ob_start();

$error = "";

$host = "localhost";
$user = "";
$pass = "";
$port = "3306";
$name = "";
$sql = "";

function secureEncode($string) {
    global $sql;
    $string = trim($string);
    $string = mysqli_real_escape_string($sql, $string);
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

error_reporting(0);

if (isset($_POST['host'])) {
    $host = $_POST['host'];
    $user = $_POST['username'];
    $pass = $_POST['password'];
    $port = $_POST['port'];
    $name = $_POST['name'];
    if ($user == "" || $name == "") {
        $error = "Please fill in all fields as required.";
    }
    else {
        $sql = new mysqli($host, $user, $pass, $name, $port);
        if ($sql->connect_error) {
            $error = $sql->connect_error;
        }
        else {
            $check1 = 0;
            $check2 = 0;
            if (file_exists("schema.sql")){
                $check1 = 1;
            }
            if (file_exists("install/schema.sql")){
                $check2 = 1;
            }  
            if($check1 == 0 && $check2 == 0){
                $error = "Missing database file schema.sql";
            } else {   
                $queries = file_get_contents("schema.sql");
                $sql->multi_query($queries);
                while ($sql->next_result()) {
                    if (!$sql->more_results()){
                        break;
                    } 
                }
                $sql->query('update config set client = "ENVATO"');
                if (substr($_SERVER['HTTP_HOST'], 0, 4) !== 'www.') {            
                    $www = 'www.';
                }else{
                    $www = '';
                }
                $mobile_site = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://".$www.$_SERVER[HTTP_HOST]."/mobile";
                $sql->query('update config set mobile_site = "'.$mobile_site.'"');
                $url = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://".$www.$_SERVER[HTTP_HOST].$_SERVER[REQUEST_URI];
                $url = str_replace("install/dbsetup.php", '', $url);
                $config = file_get_contents("config.tmp");
                $config = str_replace("%1", $host, $config);
                $config = str_replace("%2", $name, $config);
                $config = str_replace("%3", $user, $config);
                $config = str_replace("%4", $pass, $config);
                $config = str_replace("%5", $url, $config);
                $mobile = "var site_url = '".$url."';";
                $b = file_put_contents("../assets/includes/config.php", $config);
                if ($b === false) {
                    $error = "Failed to write to config.php file in parent directory.";
                }
                $m = file_put_contents("../mobile/js/url.js", $mobile);
                if ($m === false) {
                    $error = "Failed to write to url.js file in mobile directory.";
                }                
                else {
                    $sql->close();
                    header("Location: activate.php");
                    die;
                }
            }
        }
    }
}
?>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <title>Installer</title>

    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
    <style>body{background-color:#d9d9d9;font-family:Roboto,sans-serif;font-size:16px;color:#555;padding:70px 20px 0}.panel{background-color:#fafafa;border-radius:3px;-webkit-border-radius:3px;-moz-border-radius:3px;width:950px;margin:0 auto;box-shadow:2px 2px 4px rgba(0,0,0,.3)}.panel>table{width:100%}.logo{padding:25px 0 15px 30px}table tr,table tr td{margin:0;padding:0}.panel>table>tbody>tr>td:nth-child(2){background-color:#fff;padding:30px 35px}nav ul{margin:0 0 15px;padding:0;list-style:none}nav ul li{display:block;margin:0;padding:7px 0 8px 25px;color:#666;position:relative}nav ul li a{color:inherit;font-size:16px}nav ul li.active{background-color:#ff3f33;color:#fff}nav ul li.done{color:#aaa;text-decoration:line-through}nav ul li.active:after{left:100%;top:50%;border:solid transparent;content:" ";height:0;width:0;position:absolute;pointer-events:none;border-color:rgba(21,101,192,0);border-left-color:#ff3f33;border-width:17px;margin-top:-17px}h1,p{margin:0 0 20px}h1{font-size:21px;font-weight:400}.terms{border:1px solid #ddd;background-color:#eee;margin:0 0 15px;padding:25px;border-radius:3px;max-height:200px;overflow-y:auto;font-size:14px}.terms strong{display:block;margin:0 0 4px;font-size:15px}.terms p{margin:0 0 15px}.terms p:last-child{margin-bottom:0}.btn{display:inline-block;padding:0 15px;height:32px;border:1px solid #cfcfcf;background-color:#f7f7f7;line-height:32px;font-size:13px;font-weight:500;color:#666;text-align:center;border-radius:5px;-webkit-border-radius:5px;-moz-border-radius:5px;cursor:pointer}.btn:hover{background-color:#f0f0f0}.btn.blue{background-color:#ff3f33;color:#fff}input.fancy,select.fancy{border:1px solid #ddd;font:inherit;font-size:15px;color:#555;padding:6px 13px;margin:0;width:100%;display:block;box-sizing:border-box;-webkit-box-sizing:border-box;border-radius:2px;-webkit-border-radius:2px;-moz-border-radius:2px}.error,form>table strong{font-weight:500}form>table{margin:40px 0 0}form>table tr td{border-bottom:15px solid #fff}form>table tr td:nth-child(1){padding-right:35px}.error{color:#F44336;font-size:14px;border:1px solid #F44336;border-radius:3px;padding:10px 15px}
    </style>
</head>
<body>
    <div class="panel">
        <table cellspacing="0" cellpadding="0">
            <tr valign="top">
                <td width="225px">
                     <div class="logo">
                         <img src="" width="150px">
                    </div>

                    <nav>
                        <ul>
                            <li class="done"><a>License agreement</a></li>
                            <li class="active"><a>Database setup</a></li>
                            <li><a>Activate license</a></li>
                            <li><a>Setup account</a></li>
                        </ul>
                    </nav>
                </td>
                <td>
                    <h1>Database setup</h1>
                    <p>Enter the database credentials and the database will be automatically setup.</p>

                    <form action="" method="post">
                        <?php if ($error != "") echo "<div class=\"error\">$error</div>"; ?>

                        <table width="100%">
                            <tr>
                                <td width="80px" style="text-align: right;">
                                    <strong>Host</strong>
                                </td>
                                <td>
                                    <input type="text" class="fancy" name="host" placeholder="Database host" value="<?php echo $host; ?>">
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">
                                    <strong>Username</strong>
                                </td>
                                <td>
                                    <input type="text" class="fancy" name="username" placeholder="Database username" value="<?php echo $user; ?>">
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">
                                    <strong>Password</strong>
                                </td>
                                <td>
                                    <input type="password" class="fancy" name="password" placeholder="Database password" value="<?php echo $pass; ?>">
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">
                                    <strong>Database</strong>
                                </td>
                                <td>
                                    <input type="text" class="fancy" name="name" placeholder="Database name" value="<?php echo $name; ?>">
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">
                                    <strong>Port</strong>
                                </td>
                                <td>
                                    <input type="text" class="fancy" name="port" placeholder="Connection port" value="<?php echo $port; ?>">
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">

                                </td>
                                <td>
                                    <input type="submit" class="btn blue" value="Test & continue">
                                </td>
                            </tr>
                        </table>
                    </form>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
