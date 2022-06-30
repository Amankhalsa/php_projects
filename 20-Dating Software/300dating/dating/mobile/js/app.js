var show_ad = 0;
var max_ad;
var adMob;
var discoverChat = true;
var mobileUser = '';
var rt = '';
var lag = [];
var channel = '';
var uLat = '';
var ag1 = 18;
var ag2 = 30;
var boostAction;
var boostPrice;
var current_user_id = 0;
var lastTypedTime = new Date(0);
window.localStream = null;
angular.module('starter', [
  'ionic',
  'awlert',
  'flow',
  'starter.controllers',
  'starter.services',
  'starter.directives',
  'ionic.contrib.ui.tinderCards',
  'ionic.giphy',
  'ngResource',
  'ngCordovaOauth',
  'ion-google-autocomplete',
  'ngCordova',
  'ngAnimate',              // inject the ngAnimate module
  'ngFx',
  'ui.router'  
])

.run(function($ionicPlatform,$rootScope, $location, $state, $stateParams) {
  $rootScope.$location = $location;
  $rootScope.$state = $state;
  $rootScope.$stateParams = $stateParams;  
  $ionicPlatform.ready(function() {
    if (window.cordova && window.cordova.plugins && window.cordova.plugins.Keyboard) {
  		cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
  		cordova.plugins.Keyboard.disableScroll(false);
  		$ionicConfigProvider.scrolling.jsScrolling(false);
    }
    if(window.MobileAccessibility){
    	window.MobileAccessibility.usePreferredTextZoom(false);
    }
    if (window.StatusBar) {
      StatusBar.styleDefault();
    }


  });
})


.config(function($ionicConfigProvider) {
  $ionicConfigProvider.views.transition('none');
  $ionicConfigProvider.navBar.alignTitle('center');
  $ionicConfigProvider.views.swipeBackEnabled(true);
  $ionicConfigProvider.views.maxCache(0);
  $ionicConfigProvider.tabs.position('bottom');
})

.config(function($stateProvider, $urlRouterProvider) {
  $urlRouterProvider.otherwise('/loader');

  $stateProvider

    .state('privacy', {
      url: '/privacy',
      templateUrl: 'templates/welcome/privacy.html',
      controller: 'WelcomeCtrl'
    })
    .state('intro', {
      url: '/intro',
      templateUrl: 'templates/welcome/slide.html',
      controller: 'WelcomeCtrl'
    })    
    .state('terms', {
      url: '/terms',
      templateUrl: 'templates/welcome/terms.html',
      controller: 'WelcomeCtrl'
    })
    .state('home', {
      url: '/home',
      abstract: true,
      templateUrl: 'templates/home/index.html'
    })

    .state('loader', {
      url: '/loader',
      templateUrl: 'templates/welcome/loader.html',
      controller: 'LoaderCtrl'
    })
    .state('home.welcome', {
      url: '/welcome',
      templateUrl: 'templates/welcome/welcome.html',
      controller: 'WelcomeCtrl'
    })


    .state('home.register', {
      url: '/register',
      templateUrl: 'templates/home/register.html',
      controller: 'RegisterCtrl'
    })

    .state('home.register2', {
      url: '/register2',
      templateUrl: 'templates/home/register2.html',
      controller: 'Register2Ctrl'
    })

    .state('home.register3', {
      url: '/register3',
      templateUrl: 'templates/home/register3.html',
      controller: 'Register3Ctrl'
    })

    .state('home.explore', {
      url: '/explore',
      templateUrl: 'templates/home/explore.html',
      controller: 'ExploreCtrl'
    })

    .state('home.menu', {
      url: '/menu',
      templateUrl: 'templates/home/menu.html',
      controller: 'menuCtrl'
    })    

    .state('home.settings', {
      url: '/settings',
      templateUrl: 'templates/home/settings.html',
      controller: 'SettingsCtrl'
    })

    .state('home.matches', {
      url: '/matches',
      templateUrl: 'templates/home/matches.html',
      controller: 'MatchesCtrl'
    })
    .state('home.profile', {
      url: '/profile',
      templateUrl: 'templates/home/profile.html',
            controller: 'profileCtrl'
    })
    .state('home.match', {
      url: '/match',
      templateUrl: 'templates/home/match.html',
      controller: 'MatchCtrl'
    })

    .state('home.visitors', {
      url: '/visitors',
      templateUrl: 'templates/home/visitors.html',
      controller: 'VisitorsCtrl'
    })

    .state('home.meet', {
      url: '/meet',
      templateUrl: 'templates/home/meet.html',
      controller: 'MeetCtrl'
    })

    .state('home.messaging', {
      url: '/messaging',
      templateUrl: 'templates/home/messaging.html',
      controller: 'MessagingCtrl'
    })
})

.run(function($rootScope, $state) {
  $rootScope.$state = $state;
})

var sape = 0;
function profilePhoto(o){var e=window.innerWidth;e/=2,e>200&&(e=200);angular.element(document.querySelector(".profilePhoto"));"explore"==url?(e=$(".profilePhoto").attr("data-w"),$(".profilePhoto").css("background-image","url("+o+")"),$(".profilePhoto").css("width",e+"px"),$(".profilePhoto").css("height",e+"px")):($(".profilePhoto").css("background-image","url("+o+")"),$(".profilePhoto").css("width",e+"px"),$(".profilePhoto").css("height",e+"px"))}function escapeRegExp(o){return o.replace(/[.*+?^${}()|[\]\\]/g,"\\$&")}
