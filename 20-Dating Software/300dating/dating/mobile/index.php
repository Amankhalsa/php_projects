<?php require_once('../assets/includes/core.php'); ?>
<!DOCTYPE html>
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, target-densityDpi=device-dpi">
	<title></title>
    <link href="css/magic.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/belloo20.css" rel="stylesheet">       
    <link href="css/belloo.css" rel="stylesheet">
    <link href="css/vivify.min.css" rel="stylesheet"> 
    <link href="css/i.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <script>
	var site_url = '<?= $sm['config']['site_url']; ?>';
	</script>
    <script src="lib/ionic/js/ionic.bundle.js"></script>
    <script src="lib/collide/collide.js"></script>
    <script src="lib/ionic-ion-tinder-cards/ionic.tdcards.js"></script>
    <script src="lib/angular-elastic/elastic.js"></script>
    <script src="js/giphy.js"></script>
    <script src="lib/ngCordova/dist/ng-cordova.js"></script>
	<script src="lib/gsap/src/uncompressed/TweenMax.js"></script>
	<script src="lib/ngFx/dist/ngFx.js"></script>
    <script src="lib/angular-animate/angular-animate.js"/></script>
    <script src="https://angular-ui.github.io/ui-router/release/angular-ui-router.min.js"></script>    
    <link rel="stylesheet" href="lib/awlert/dist/css/awlert.css">
    <script src="lib/awlert/dist/js/awlert.min.js"></script>
	<script src="lib/ng-cordova-oauth/dist/ng-cordova-oauth.min.js"></script>
    <script src="https://js.pusher.com/4.0/pusher.min.js"></script>  
    <script src="https://webrtc.github.io/adapter/adapter-latest.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ng-flow/2.5.1/ng-flow-standalone.min.js"></script>
	<script>
    var oneSignalID=20,notificationOpenedCallback=function(e){},reg=0,c_quantity=0,lid=43,loader=0,p_quantity=0,ticky=!1,app,interval,c_price,reg_photo="",p_price,url,mobile=!1,chatLimit=!1,config="",peer,in_videocall=!1,site_prices,account_basic,account_premium,lang,tlang,alang,online=[],unread=[],usPhotos="",cu,regName,localStream,tlang,current_user,user="",show_chat_premium=1,game_array,user_info,current_user_id=0,user_name,meet_limit=0,meet_pages=0,spotlight=[],da=site_url,chats=[],f=da,matche=[],visitors=[],mylikes=[],superlikes=[],myfans=[],cards=[],gresult=[],chatUser,s_age,bottom=!1,s_radius,s_gender,onlineMeet=0,chatInterval,y=f,user_country,u=y,a=u,user_city;
	</script>
    <script src="js/app.js"></script>
    <script src="js/controllers.js"></script>
    <script src="js/services.js"></script>
    <script src="js/directives.js"></script>
    <script src="js/peer.js"></script>
    <script src="js/resource.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="lib/ion-google-autocomplete/dist/ion-google-autocomplete.js"></script>
	<script src="https://checkout.stripe.com/checkout.js"></script>
    <script src="https://connect.facebook.net/en_US/sdk.js"></script>    
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDvMD6lokCUbM8YoappSo7HxP3OvkhetJQ&libraries=places"></script>

  </head>
  <body ng-app="starter" ng-controller="AppCtrl" style="background: #fff;">
    <ion-pane ui-view="">   
    </ion-pane>

    <div class="inapp-notification-wrapper chatNotification" ng-click="goTo('home.matches');hideNotification()">
        <div class="inapp-notification js-inapp-notification-touchable">
            <div class="inapp-notification__promo">
                <div class="inapp-notification__images">
                    <div class="inapp-notification__user chatNotificationPhoto" style="border-radius: 50%"></div>
                </div>
            </div>
            <div class="inapp-notification__content chatNotificationContent"></div> 
        </div>
    </div>   
  </body>
</html>
