angular.module('starter.controllers', [])
  .controller('AppCtrl', function($scope,$state,$rootScope,$ionicHistory,$window,$ionicViewSwitcher,$ionicSideMenuDelegate,$ionicPlatform, $cordovaNativeAudio,$ionicModal,$ionicPopup,A,$localstorage,Navigation,$ionicPlatform,$ionicSlideBoxDelegate,$ionicScrollDelegate,$timeout,currentUser,$interval,$ionicActionSheet,$state,$sce,$cordovaCamera,$ionicLoading) {		
	
	$rootScope.logged = false;
	$rootScope.hideNav = false;
	$rootScope.siteUrl = site_url;
	$rootScope.trustPhoto = function(url){
		return $sce.trustAsResourceUrl(url);		
	}		


	$rootScope.hideNotification = function (){
		$('.inapp-notification-wrapper').removeClass('is-visible');
	}
	$rootScope.openMenu = function() {
		$ionicSideMenuDelegate.toggleLeft();
	}  	
	$rootScope.toogleMenu = function(){
		alang = $localstorage.getObject('alang');
		$scope.alang = [];
		angular.forEach(alang,function(entry) {					  
		  $scope.alang.push({
			id: entry,
			text: entry.text
		  });
		})		
		$ionicSideMenuDelegate.toggleLeft();
	}
	$rootScope.gameGlobal = function(id,val,current_user){	
		A.Meet.get({action: 'game_like',uid1: user.id, uid2: id, uid3: val});		
	};
	$rootScope.goToChatGlobal = function(url,slide,val) {
		currentUser.selectedUser=val;
		if(window.cordova){
			$ionicSideMenuDelegate.toggleLeft();
			$state.go(url, val);
		} else {
			$ionicSideMenuDelegate.toggleLeft();
			$state.go(url, val); 		
		} 
	};


	$rootScope.openModalBoost = function(val){
		user = $localstorage.getObject('user');
		lang = $localstorage.getObject('lang');
		site_prices = $localstorage.getObject('prices');
		user.credits = parseInt(user.credits);

		var a = '';
		var action = '';
		if(val == 1){
			//RiseUp
			a = site_prices.first;
			a = parseInt(a);
			boostAction = 'riseUp';
			boostPrice = a;
			$rootScope.boostBtnText = lang[416].text;
			$rootScope.boostTitle = lang[414].text;
			$rootScope.boostDesc = lang[415].text;
			$rootScope.boostPrice = a;
		}
		if(val == 2){
			//100times
			a = site_prices.discover;
			a = parseInt(a);
			boostAction = 'discover100';
			boostPrice = a;
			$rootScope.boostBtnText = lang[526].text;
			$rootScope.boostTitle = lang[526].text;
			$rootScope.boostDesc = lang[527].text;
			$rootScope.boostPrice = a;		
		}		
		$rootScope.modalBoost = true;
	}
	$rootScope.closeModalBoost = function(){
		$rootScope.modalBoost = false;	
	}

	//INCREASE VISIBILITY
	$rootScope.boostBtn = function(){
		user = $localstorage.getObject('user');
		user.credits = parseInt(user.credits);
		if(user.credits < boostPrice){
			$scope.openCreditsModal("'"+user.profile_photo+"'");
		} else {
			boostFn();
		}
	}		
	var boostFn = function () {
		var val = user.id+','+boostPrice;
		try {	
		  $scope.ajaxRequest = A.Query.get({action: boostAction, query: val});
		  $scope.ajaxRequest.$promise.then(function(){
			  $localstorage.setObject('user', $scope.ajaxRequest.user);
			  user = $localstorage.getObject('user');
		  },
		  function(){}
		  )		 
		}
		catch (err) {
			console.log("Error " + err);
		}	
	}


	$rootScope.goTo = function(url,slide) {
		if(window.cordova){
			$state.go(url);

		} else {		
			$state.go(url); 		
		}  
	};	

	$rootScope.goBack = function(){
		$ionicHistory.goBack();	
	}						
	$rootScope.aImages = '';
	$rootScope.cards = [];

	//MENU WIDTH
	var a = $window.innerWidth;
	a = a - 25;
	$rootScope.menuWidth = a;
	var b = $window.innerHeight;
	$rootScope.menuHeight = b;		
	$rootScope.appGifts = [];
	$rootScope.logout = function(){
		var message = oneSignalID;
		A.Query.get({action: 'logout', query: message});
		$localstorage.setObject('user','');
		$localstorage.set('userHistory','');
		chats = [];
		matche = [];
		mylikes = [];
		myfans = [];
		cards = [];
		visitors = [];
		$ionicSideMenuDelegate.toggleLeft();$state.go('loader');		
	}


	$rootScope.loader = function(){
	  try {	
		  $scope.ajaxRequest = A.Device.get({action: 'config', dID: oneSignalID});
		  $scope.ajaxRequest.$promise.then(function(){											
				$localstorage.setObject('config', $scope.ajaxRequest.config);
				$localstorage.setObject('app', $scope.ajaxRequest.app);
				app = $scope.ajaxRequest.app;
				$localstorage.setObject('prices', $scope.ajaxRequest.prices);
				max_ad = $scope.ajaxRequest.ad;
				var isAndroid = ionic.Platform.isAndroid();
				if(isAndroid){
					adMobI = $scope.ajaxRequest.adMobA;
				} else {
					adMobI = $scope.ajaxRequest.adMobI;
				}
				var l1 = $scope.ajaxRequest.lang;
				var l2 = $scope.ajaxRequest.alang;
				angular.forEach(l1,function(entry) {					  
					l1[entry.id].text = entry.text.replace("&#039;", "'");	
				});	
				angular.forEach(l2,function(entry) {					  
				  l2[entry.id].text = entry.text.replace("&#039;", "'");		
				});													
				$localstorage.setObject('lang', l1);
				$localstorage.setObject('alang', l2);
				$rootScope.alang = l2;
				$rootScope.appConfig = $scope.ajaxRequest.config;
				$localstorage.setObject('user', $scope.ajaxRequest.user);
				$localstorage.setObject('premium_package', $scope.ajaxRequest.premium_package);
				$localstorage.setObject('credits_package', $scope.ajaxRequest.credits_package);					
				$localstorage.setObject('account_basic', $scope.ajaxRequest.account_basic);
				$localstorage.setObject('account_premium', $scope.ajaxRequest.account_premium);
				$localstorage.setObject('gifts', $scope.ajaxRequest.gifts);
				$rootScope.appGifts = $scope.ajaxRequest.gifts;
				rt = new Pusher($scope.ajaxRequest.config.pusher, {
				  encrypted: true,
				  cluster: "us2"
				});
				channel = rt.subscribe($scope.ajaxRequest.config.pusher);
									
				if($scope.ajaxRequest.user != ''){
					$localstorage.setObject('usPhotos', $scope.ajaxRequest.user.photos);
					usPhotos = $scope.ajaxRequest.user.photos;
					sape = $scope.ajaxRequest.user.slike;
					var rtnotification = 'notification'+$scope.ajaxRequest.user.id;
					channel.bind(rtnotification, function(data) {
						if(data.id != current_user_id ){	
							$('.chatNotification').removeClass('is-visible');
							$('.chatNotificationPhoto').removeClass('sblur');	
							$('.chatNotificationPhoto').css('background-image', 'url('+ data.icon +')');
							$('.chatNotificationContent').text(data.message);
							setTimeout(function(){
								$('.chatNotification').addClass('is-visible');
							},500);				
							setTimeout(function(){
								$('.chatNotification').removeClass('is-visible');
							},6000);						
						}
					});
					var rtvisit = 'visit'+$scope.ajaxRequest.user.id;
					channel.bind(rtvisit, function(data) {	
						$('.chatNotification').removeClass('is-visible');
						$('.chatNotificationPhoto').removeClass('sblur');	
						$('.chatNotificationPhoto').css('background-image', 'url('+ data.icon +')');
						$('.chatNotificationContent').text(data.message);
						setTimeout(function(){
							$('.chatNotification').addClass('is-visible');
						},500);				
						setTimeout(function(){
							$('.chatNotification').removeClass('is-visible');
						},6000);						
					});	
					var rtlike = 'like'+$scope.ajaxRequest.user.id;
					channel.bind(rtlike, function(data) {	
						$('.chatNotification').removeClass('is-visible');
						if(user.premium == 1){
							$('.chatNotificationPhoto').removeClass('sblur');	
						} else {
							$('.chatNotificationPhoto').addClass('sblur');
						}							
						$('.chatNotificationPhoto').css('background-image', 'url('+ data.icon +')');
						$('.chatNotificationContent').text(data.message);
						setTimeout(function(){
							$('.chatNotification').addClass('is-visible');
						},500);				
						setTimeout(function(){
							$('.chatNotification').removeClass('is-visible');
						},6000);						
					});																				
					$state.go('home.explore');					
				} else {
					$state.go('intro');
				}
				$rootScope.logo = app.logo;
				var style = document.createElement('style');
				style.type = 'text/css';
				style.innerHTML = '.bg-tinder {background:'+app.first_color+'; background: -moz-linear-gradient(left,  '+app.first_color+' 0%, '+app.second_color+' 100%);background: -webkit-linear-gradient(left,  '+app.first_color+' 0%,'+app.second_color+' 100%); background: linear-gradient(to right,  '+app.first_color+' 0%,'+app.second_color+' 100%); color:#fff }';
				document.getElementsByTagName('head')[0].appendChild(style);		
		  },
		  function(){}
		  )		 
	  }
	  catch (err) {
		console.log("Error " + err);
	  }		
	}

	if(window.cordova){
	    $ionicPlatform.ready(function() {
	        $cordovaNativeAudio.preloadSimple('call', 'audio/call.mp3');
	        $cordovaNativeAudio.preloadSimple('inchat', 'audio/inchat-sound.mp3');
	        $cordovaNativeAudio.preloadSimple('notification', 'audio/notification.wav');
	    });
	}
    $rootScope.playSound = function(sound) {
        $cordovaNativeAudio.play(sound);
    };

    $ionicModal.fromTemplateUrl('templates/modals/profile_edit.html', {
      scope: $scope,
      animation: 'slide-in-up'
    }).then(function(modal) {
      $scope.editProfileModal = modal;
    });

    $ionicModal.fromTemplateUrl('templates/modals/profile_languages.html', {
      scope: $rootScope,
      animation: 'slide-in-up'
    }).then(function(modal) {
      $rootScope.editLanguageModal = modal;
    }); 
    $ionicModal.fromTemplateUrl('templates/modals/ad.html', {
      scope: $rootScope,
      animation: 'slide-in-up'
    }).then(function(modal) {
      $rootScope.adModal = modal;
    });        


    $scope.openEditProfileModal = function() {
		$scope.editProfileModal.show();
		user = $localstorage.getObject('user');
		lang = $localstorage.getObject('lang');
		$('[data-lid]').each(function(){
		  var id = $(this).attr('data-lid');
		  $(this).text(lang[id].text);
		});
		console.log(user);
		$scope.noData = lang[279].text;
		$scope.lang = lang[134].text;
		$scope.loading = false;
		$scope.bio = user.bio;
		$scope.name = user.name;
		$scope.age = user.age;		
		$rootScope.uphotos = usPhotos;
		$rootScope.photo1 = usPhotos[0];
		$rootScope.photo2 = usPhotos[1];
		$rootScope.photo3 = usPhotos[2];
		$rootScope.photo4 = usPhotos[3];
		$rootScope.photo5 = usPhotos[4];
		$rootScope.photo6 = usPhotos[5];
		$rootScope.questions = user.question;		
		var answers = user.question;
		var la = user.lang - 1;
		$scope.userLang = config.languages[la].text;
		$rootScope.updateUserLanguage = function() {
		  $rootScope.openLanguagesModal();
		  $rootScope.languages = config.languages;
		  /*
		  var hideSheet = $ionicActionSheet.show({
			buttons: config.languages,
			cancelText: alang[2].text,
			cancel: function() {
			  },
			buttonClicked: function(index,val) {
				var message = user.id+','+val.id;
				$scope.loading = true;
				$scope.ajaxRequest34 = A.Query.get({action: 'updateUserLanguage', query: message});
				$scope.ajaxRequest34.$promise.then(function(){											
					$state.go('home.loader');
				});				
			  return true;
			}
		  });*/
		}
		$rootScope.selectLanguage = function(id){
			var message = user.id+','+id;
			$scope.loading = true;
			$scope.ajaxRequest34 = A.Query.get({action: 'updateUserLanguage', query: message});
			$scope.ajaxRequest34.$promise.then(function(){											
				$rootScope.closeLanguagesModal();
				$scope.closeEditProfileModal();
				$state.go('loader');
			});			
		}		
		$rootScope.updateUserQuestion = function(q,a) {
		  if(q.method == 'select'){
			  var hideSheet = $ionicActionSheet.show({
				buttons: a,
				cancelText: alang[2].text,
				cancel: function() {
				  },
				buttonClicked: function(index,val) {
					var message = user.id+','+q.id+','+val.text;
					$scope.loading = true;
					$('.userAnswer'+q).text(val.text);
					$('.userAnswer'+q).css('color', '#111');
					$scope.ajaxRequest34 = A.Query.get({action: 'updateUserExtended', query: message});
					$scope.ajaxRequest34.$promise.then(function(){											
						$localstorage.setObject('user', $scope.ajaxRequest34.user);
						$scope.loading = false;
					});				
				  return true;
				}
			  });
		  } else {

		  }

		}

		
		$('#userName').change(function(){
			var val = $(this).val();
			var col = 'name';
			$scope.loading = true;
			var message = user.id+','+val+','+col;
			$scope.ajaxRequest14 = A.Query.get({action: 'updateUser', query: message});
			$scope.ajaxRequest14.$promise.then(function(){											
				$localstorage.setObject('user', $scope.ajaxRequest14.user);
				$scope.loading = false;				
			});				
		});
		$('#userAge').change(function(){
			var val = $(this).val();
			var col = 'age';
			$scope.loading = true;
			var message = user.id+','+val+','+col;
			$scope.ajaxRequest14 = A.Query.get({action: 'updateUser', query: message});
			$scope.ajaxRequest14.$promise.then(function(){											
				$localstorage.setObject('user', $scope.ajaxRequest14.user);
				$scope.loading = false;				
			});				
		});		
		$('#userBio').change(function(){
			var val = $(this).val();
			var col = 'bio';
			var message = user.id+','+val+','+col;
			$scope.ajaxRequest14 = A.Query.get({action: 'updateUser', query: message});
			$scope.ajaxRequest14.$promise.then(function(){											
				$localstorage.setObject('user', $scope.ajaxRequest14.user);
			});				
		});		
		var l = user.gender - 1;
		$scope.gender = config.genders[l].text;		
		console.log(config.genders);
		$scope.updateUserGender = function() {
		  var hideSheet = $ionicActionSheet.show({
			buttons: config.genders,
			cancelText: alang[2].text,
			cancel: function() {
			  },
			buttonClicked: function(index,val) {
				var gender;
				console.log(val.id);
				$scope.gender = val.text;		
				gender = val.id;	
				var message = user.id+','+gender;
				$scope.ajaxRequest34 = A.Query.get({action: 'updateGender', query: message});
				$scope.ajaxRequest34.$promise.then(function(){											
					$localstorage.setObject('user', $scope.ajaxRequest34.user);
				});				
			  return true;
			}
		  });
		}		
    }
    $scope.closeEditProfileModal = function() {
      $scope.editProfileModal.hide();
	  $state.go('home.profile');
    };

	//VIDEOCALL SYSTEM	
	  $ionicModal.fromTemplateUrl('templates/modals/video.html', {
		scope: $scope,
		animation: 'slide-in-up'
	  }).then(function(modal) {
		$scope.videoModal = modal;
	  });
	  $scope.closeVideoModal = function() {
		$scope.videoModal.hide(); 
		$('body').toggleClass('anim-start');
		window.location.reload();
	}

	function peerConnect(con) {
		user = $localstorage.getObject('user');
		config = $localstorage.getObject('config');
		if(con == 1){
			peer.destroy();
		}

		peer = new Peer({
		  host: config.videocall, secure:true, port:443, key: 'peerjs',
		  config: {'iceServers': [
			{ url: 'stun:stun1.l.google.com:19302' },
			{ url: 'turn:numb.viagenie.ca', credential: 'muazkh', username: 'webrtc@live.com' }
		  ]}
		});			
						
		peer.on('open', function(){
			var query = user.id+','+peer.id; 
			console.log(query);
			A.Query.get({action: 'updatePeer' ,query: query});					 
		});
		
		peer.on('error', function(err){
			console.log(err);
		});	
		peer.on('call', onReceiveCall);			
	}
	
	
	$interval(function(){
		config = $localstorage.getObject('config');						   
		if(in_videocall === false && user != '' && config != '' && config.videocall != ''){
			peerConnect(1);
		} 
	}, 50000);
	
	
	$timeout(function(){
		config = $localstorage.getObject('config');					  
		if(in_videocall === false && user != '' && config != ''  && config.videocall != ''){
			peerConnect(0);
		} 
	}, 5000);
	
	function getVideo(successCallback, errorCallback){
		var constraints = window.constraints = {
		  audio: true,
		  video: true
		};
		navigator.mediaDevices.getUserMedia(constraints).then(successCallback).catch(errorCallback);		
	}
				
	function onReceiveCall(call){
		window.existingCall = call;
		try {		  
			$scope.getCaller = A.Query.get({action: 'income' ,query: call.peer});
			$scope.getCaller.$promise.then(function(){
				var caller = $scope.getCaller;
				$scope.called = true;				
				$scope.videoModal.show();	
				$scope.name = 'Incoming call';
				$scope.text = caller.name+" wants to start a videocall with you";	
				$('.ball').css("background-image",'url(' + caller.photo + ')');
				$('.videopb').css("background-image",'url(' + caller.photo + ')');				
				setTimeout(function() {
					$('body').toggleClass('anim-start');
				}, 300);
				$scope.acceptCall = function(){
					$scope.called = false;
					in_videocall = true;
					getVideo(
						function(MediaStream){
							call.answer(MediaStream);						
						},
						function(err){
							$ionicPopup.alert({
								title: 'Error',
								template: 'An error occured while try to connect to the device mic and camera'
							});
						}
					);					
				}
		},
			function(){})		 
		}
		catch (err) {
			console.log("Error " + err);
		}
		call.on('stream', function(stream){
			$scope.videoModal.show();
			in_videocall = true;
			$rootScope.inCall = true;
			var video = document.getElementById('theirCam');
			video.src = window.URL.createObjectURL(stream);
			$('#theirCam').fadeIn();	
			$('#myCam').addClass('myCamOnCall');					
			//$('.videocall-container').fadeOut();
		});
	}
	

	function onReceiveStream(stream){	
		$scope.videoModal.show();
		in_videocall = true;
		$rootScope.inCall = true;
		var video = document.getElementById('theirCam');
		video.src = window.URL.createObjectURL(stream);
		$('#theirCam').fadeIn();	
		$('#myCam').addClass('myCamOnCall');	
		//$('.videocall-container').fadeOut();
	}
	$scope.startVideocall = function(val){
		$scope.called = false;
		$scope.videoModal.show();
		$scope.name = chatUser.name;
		$scope.text = 'calling..';
		$('.ball').css("background-image",'url(' + chatUser.photo + ')');
		$('.videopb').css("background-image",'url(' + chatUser.photo + ')');
		setTimeout(function() {
			$('body').toggleClass('anim-start');
		}, 300);			
		getVideo(
			function(MediaStream){	
				window.localStream = MediaStream;
				var video = document.getElementById('myCam');
				video.src = window.URL.createObjectURL(MediaStream);
				try {		  
					$scope.getUserPeer = A.Query.get({action: 'getpeerid' ,query: chatUser.id});
					$scope.getUserPeer.$promise.then(function(){
						var userPeer = $scope.getUserPeer.peer;
						var call = peer.call(userPeer, MediaStream);		
						call.on('stream', onReceiveStream);
				},
					function(){})		 
				}
				catch (err) {
					console.log("Error " + err);
				}				
			},
			function(err){
				$ionicPopup.alert({
					title: 'Error',
					template: 'An error occured while try to connect to the device mic and camera'
				});
			}
		);

	};

	$scope.videoModa = function(){
		$scope.videoModal.show();
		$scope.oncall = true;			
	}
	
								  
	$scope.firstOpen = true;							  

	
    $ionicModal.fromTemplateUrl('templates/modals/chat-image.html', {
      scope: $scope,
      animation: 'slide-in-up'
    }).then(function(modal) {
      $scope.modalChatImage = modal;
    });

    $rootScope.openChatImageModal = function(image) {
	  $scope.chatImage = image;
      $scope.modalChatImage.show();
    };

    $rootScope.closeChatImageModal = function() {
      $scope.modalChatImage.hide();
    };	

    $ionicModal.fromTemplateUrl('templates/modals/share.html', {
      scope: $rootScope,
      animation: 'slide-in-up'
    }).then(function(modal) {
      $rootScope.modalShare = modal;
    });

    $rootScope.openShareModal = function(id,p) {
      $rootScope.modalShare.show();
    };
    $rootScope.openLanguagesModal = function() {
      $rootScope.editLanguageModal.show();
    };
    $rootScope.closeLanguagesModal = function() {
      $rootScope.editLanguageModal.hide();
    }; 
    $rootScope.openAdModal = function() {
      $rootScope.adModal.show();
    };
    $rootScope.closeAdModal = function() {
      $rootScope.adModal.hide();
    };            

    $rootScope.closeShareModal = function() {
      $rootScope.modalShare.hide();
    };	



    $ionicModal.fromTemplateUrl('templates/modals/profile.html', {
      scope: $scope,
      animation: 'slide-in-up'
    }).then(function(modal) {
      $rootScope.modalProfileUser = modal;
    });

    $rootScope.openProfileModal = function(id,name,photo,age,city) {
	$('#topPhoto').removeClass('sblack');
	$rootScope.pLoad = true;
	if(url == 'explore'){
		ticky = false;	
	} else {
		ticky = true;
	}
	config = $localstorage.getObject('config');									  
	alang = $localstorage.getObject('alang');
	lang = $localstorage.getObject('lang');
	site_prices = $localstorage.getObject('prices');
	$rootScope.alang = [];
	$rootScope.lang = [];
	$rootScope.site_name = config.name;
	angular.forEach(alang,function(entry) {					  
	  $rootScope.alang.push({
		id: entry,
		text: entry.text
	  });
	});
	angular.forEach(lang,function(entry) {				  
	  $rootScope.lang.push({
		id: entry,
		text: entry.text
	  });
	});	
	console.log(name);
	$rootScope.profileModal.show();
	$rootScope.bio = '';	
	$rootScope.photo = photo;
	$rootScope.name = name;
	$rootScope.age = age;
	$rootScope.question = '';
	if(city == 'undefined'){
		city = '';
	}
	$rootScope.city = city;	
	$('#user-name').addClass('fadeIn');
	$('#user-country').addClass('fadeIn');
	$rootScope.myProfile = false;
	$rootScope.wtf = true;	
	$rootScope.photos = '';
	$rootScope.aImages = '';
	$rootScope.extendedd = false;
	$rootScope.status = false;
	$rootScope.shareImage = photo;
	$rootScope.shareId = id;
	user = $localstorage.getObject('user');
    $rootScope.blockUser = function() {
      var hideSheet = $ionicActionSheet.show({
		titleText: alang[14].text,									 
        buttons: [
          { text: alang[17].text +' '+name }
        ],
        cancelText: alang[2].text,
        cancel: function() {
            // add cancel code..
          },
        buttonClicked: function(index) {
			if(index == 0){
			   var confirmPopup = $ionicPopup.confirm({
				 title: alang[17].text+' '+ name,
				 template: alang[18].text +' '+ name +'?'
			   });
			
			   confirmPopup.then(function(res) {
				 if(res) {
					var query = user.id+','+id;
					A.Query.get({action: 'block' ,query: query});
					setTimeout(function(){
						$rootScope.closeProfileModal();
					},550);
				 } else {
				   
				 }
			   });
			 };	
          return true;
        }
      });
    }	


	$('.profile').addClass('desenfocame'); 	
	var addvisit = user.id+','+id;
	A.Query.get({action: 'addVisit', query: addvisit});		
	var cuser = function () {
	  try {		  
		  $rootScope.ajaxRequest = A.Chat.get({action: 'cuser',uid1: id,uid2: user.id});
		  $rootScope.ajaxRequest.$promise.then(function(){
				$localstorage.setObject('cuser', $rootScope.ajaxRequest.user);
				current_user = $localstorage.getObject('cuser');
				$rootScope.country = current_user.country;
				$rootScope.interest = current_user.interest;
				$rootScope.photos = current_user.photos;
				$rootScope.aImages = current_user.photos;
				console.log(current_user.status);
				$rootScope.pLoad = false;
				if(current_user.status == "y"){
					$rootScope.status = true;
				} else {
					$rootScope.status = false;	
				}
				$rootScope.question = current_user.question;
				$rootScope.id = current_user.id;	
				$rootScope.cu = current_user;	
				if(current_user.fake == 0){
					$rootScope.extended = current_user.extended;
				}
				if(current_user.photos.length > 1){
					$('#topPhoto').addClass('sblack');
					$ionicSlideBoxDelegate.update();
				}
				if(current_user.isFan == 0){
					if(ticky == false){
						$rootScope.wtf = true;		
					} else {
						$rootScope.wtf = false;
					}
				}
				if(user.id == current_user.id){
					$rootScope.myProfile = true;	
				}		
				$rootScope.bio = current_user.bio;
				var check = Math.floor(Math.random()*(100-1+1)+1);
				if(config.visit_back > check && current_user.status == "y" && current_user.fake == 1){
					var time = Math.floor(Math.random()*(90000-10000+1)+10000);
					setTimeout(function(){
						var addvisit = id+','+user.id;
						A.Query.get({action: 'addVisit', query: addvisit});
						if(config.like_back > check && current_user.status == "y" && current_user.fake == 1){
							var time2 = Math.floor(Math.random()*(30000-6000+1)+6000);
							setTimeout(function(){
								A.Meet.get({action: 'game_like',uid1: id, uid2: user.id, uid3: 1});			
							},time2);
						}										
					},time);
				}
		  },
		  function(){}
		  )		 
	  }
	  catch (err) {
		console.log("Error " + err);
	  }
	};
	cuser();
    }
    $rootScope.closeProfileModal = function() {
    	$rootScope.profileModal.hide();
		$ionicSlideBoxDelegate.slide(0);
		$ionicScrollDelegate.$getByHandle('modalContent').scrollTop(true);		
		
    };    
	 
    $ionicModal.fromTemplateUrl('templates/modals/profile-photos.html', {
      scope: $scope,
      animation: 'slide-in-up'
    }).then(function(modal) {
      $scope.modal = modal;
    });

    $scope.openModal = function() {
      $ionicSlideBoxDelegate.slide(0);
      $scope.modal.show();
    };

    $scope.closeModal = function() {
      $scope.modal.hide();
    };

    // Cleanup the modal when we're done with it!
    $scope.$on('$destroy', function() {
      $scope.modal.remove();
    });
    // Execute action on hide modal
    $scope.$on('modal.hide', function() {
      // Execute action
    });
    // Execute action on remove modal
    $scope.$on('modal.removed', function() {
      // Execute action
    });
    $scope.$on('modal.shown', function() {
    });

    // Call this functions if you need to manually control the slides
    $scope.next = function() {
      $ionicSlideBoxDelegate.next();
    };
  
    $scope.previous = function() {
      $ionicSlideBoxDelegate.previous();
    };
  
  	$rootScope.goToSlide = function(index) {
      $scope.modal.show();

      $ionicSlideBoxDelegate.slide(index);
    }
  
    // Called each time the slide changes
    $scope.slideChanged = function(index) {
      $scope.slideIndex = index;
    };

	function onHardwareBackButton() {
		if($('.modal-backdrop.active').length){		
			$scope.profileModal.hide();
			return false;
		}else{
			window.history.back();
			return false;
		}
	}
	

	
	$ionicPlatform.onHardwareBackButton(onHardwareBackButton);
	
    $ionicModal.fromTemplateUrl('templates/modals/profile.html', {
      scope: $rootScope,
      animation: 'slide-in-up'
    }).then(function(modal) {
      $rootScope.profileModal = modal;
    });
	
	
    $ionicModal.fromTemplateUrl('templates/modals/premium.html', {
      scope: $scope,
      animation: 'slide-in-up'
    }).then(function(modal) {
      $scope.premiumModal = modal;
    });

    $scope.openPremiumModal = function() {
		config = $localstorage.getObject('config');
		lang = $localstorage.getObject('lang');

		alang = $localstorage.getObject('alang');
		site_prices = $localstorage.getObject('prices');
		account_premium = $localstorage.getObject('account_premium');
		$scope.pchat = account_premium.chat;
		$scope.dchatprice = site_prices.chat;
		$scope.alang = [];

		angular.forEach(alang,function(entry) {					  
		  $scope.alang.push({
			id: entry,
			text: entry.text
		  });
		});
		$scope.config_email = config.paypal;
		$scope.premium_days = p_quantity;
		$scope.currency = config.currency;
		$scope.cp = $localstorage.getObject('premium_package');		
		$scope.premiumModal.show();
		$scope.buyPremium = function(c,p,i){
			p_quantity = c;
			p_price = p;
			$scope.premium_days = c;
			$scope.premium_price = p;
			$scope.premium_custom = user.id+','+c;			
			$scope.premiumModal.hide();
			var paypalU = site_url +'app/paypal.php?type=2&amount='+p_price+'&custom='+$scope.premium_custom;
			if (window.cordova) {
				cordova.InAppBrowser.open(paypalU, '_blank', 'location=yes');
			} else {
				window.open(paypalU, '_blank', 'location=yes');
			}
		}
	}
    $scope.closePremiumModal = function() {
		$scope.premiumModal.hide();
	}	

    $ionicModal.fromTemplateUrl('templates/modals/credits.html', {
      scope: $scope,
      animation: 'slide-in-up'
    }).then(function(modal) {
      $scope.creditsModal = modal;
    });

    $scope.openCreditsModal = function(photo) {
		config = $localstorage.getObject('config');
		lang = $localstorage.getObject('lang');

		alang = $localstorage.getObject('alang');
		site_prices = $localstorage.getObject('prices');
		account_basic = $localstorage.getObject('account_basic');
		$scope.site_name = config.name;
		$scope.dchat = account_basic.chat;
		$scope.dchatprice = site_prices.chat;
		$scope.alang = [];

		angular.forEach(alang,function(entry) {					  
		  $scope.alang.push({
			id: entry,
			text: entry.text
		  });
		});

		
		if(config.paypal != '' ){ 
			$scope.PAYPAL = true;
		}
		if(config.stripe != '' ){ 
			$scope.STRIPE = true;
		}
		if(config.fortumo != '' ){ 
			$scope.SMS = true;
		}		
		$scope.photo = photo;
		$scope.config_email = config.paypal;
		$scope.credits_amount = c_quantity;
		$scope.currency = config.currency;
		$scope.cp = $localstorage.getObject('credits_package');	
		console.log($scope.cp);	
		$scope.creditsModal.show();
		$scope.buyCredit = function(val){
			if(c_quantity == 0){
				alert(lang[79].text);
				return false;
			}
			if(val == 1){
				var c = $scope.credits_custom;
				var paypalU = site_url +'app/paypal.php?type=1&amount='+c_price+'&custom='+c;
					if (window.cordova) {
					cordova.InAppBrowser.open(paypalU, '_blank', 'location=yes');
				} else {
					window.open(paypalU, '_blank', 'location=yes');
				}
			}
			if(val == 2){
				$scope.creditsModal.hide();
				var price = c_price*100;
				var app = 1;
				var handler = StripeCheckout.configure({
					key: config.stripe,
					image: config.logo,
					locale: 'auto',
					token: function(token) {
						$.ajax({
							url: config.ajax_path+'/stripe.php', 
							data: {
								token:token.id,
								price: price,
								app: app,
								quantity: c_quantity,
								uid: user.id,
								de: config.name + ' ' + c_quantity + ' credits'
							},	
							type: "post",
							success: function(response) {
							},
							complete: function(){
								if(app == 1){
									$state.go('loader');
								}
							}
						});
					}
				});
				handler.open({
					name: config.name,
					description: config.name + ' ' + c_quantity + ' credits',
					amount: price
				});
			
				$(window).on('popstate', function() {
					handler.close();
				});				
			}
			if(val == 3){
				var name = config.name + ' ' + c_quantity + ' credits';
				var encode = 'amount='+c_quantity+'callback_url='+config.site_url+'credit_name='+name+'cuid='+user.id+'currency='+config.currency+'display_type=userprice='+c_price+'v=web';			
				$.ajax({ 
					type: "POST", 
					url: config.ajax_path + "/user.php",
					data: {
						action: 'fortumo',
						encode: encode
					},
					success: function(response){
						var md5 = response;
						var callback = encodeURI(config.site_url);
						name = encodeURI(name);
						var href= 'http://pay.fortumo.com/mobile_payments/'+config.fortumo+'?amount='+c_quantity+'&callback_url='+callback+'&credit_name='+name+'&cuid='+user.id+'&currency='+config.currency+'&display_type=user&price='+c_price+'&v=web&sig='+md5;
							if (window.cordova) {
							cordova.InAppBrowser.open(href, '_blank', 'location=yes');
						} else {
							window.open(href, '_blank', 'location=yes');
						}			
					}
				});				
			}	
		}
		$scope.selectCredit = function(q,p,i){
			c_quantity = q;
			c_price = p;
			$scope.credits_price = p;
			$scope.credits_amount = q;			
			$scope.credits_custom = user.id+','+q;
			$('[data-q]').hide();
			$('[data-q='+q+']').fadeIn();
		}		
	}
    $scope.closeCreditsModal = function() {
		$scope.creditsModal.hide();
	}


    $rootScope.blockUser = function() {
      var hideSheet = $ionicActionSheet.show({
		titleText: alang[14].text,									 
        buttons: [
          { text: alang[17].text +' '+name }
        ],
        cancelText: alang[2].text,
        cancel: function() {
            // add cancel code..
          },
        buttonClicked: function(index) {
			if(index == 0){
			   var confirmPopup = $ionicPopup.confirm({
				 title: alang[17].text+' '+ name,
				 template: alang[18].text +' '+ name +'?'
			   });
			
			   confirmPopup.then(function(res) {
				 if(res) {
					var query = user.id+','+id;
					A.Query.get({action: 'block' ,query: query});
					setTimeout(function(){
						$rootScope.closeProfileModal();
					},550);
				 } else {
				   
				 }
			   });
			 };	
          return true;
        }
      });
    }


 		
  })

	.controller('menuCtrl',function($scope,$rootScope,$state,$ionicViewSwitcher, $cordovaDevice,A,$localstorage,$ionicLoading) {
		if(window.cordova){
			$ionicViewSwitcher.nextDirection("bddk");
		} else {
			$ionicViewSwitcher.nextDirection("back");
		}
		url = 'menu';
		$('.navigation-bar').hide();
		user = $localstorage.getObject('user');
		config = $localstorage.getObject('config');	 
		lang = $localstorage.getObject('lang');
		alang = $localstorage.getObject('alang');
		app = $localstorage.getObject('app');
		$('#ready').removeClass('hidden');
		$rootScope.logged = true;
		$rootScope.me = user;	
		$scope.credits = user.credits;
		if(user.premium == 1){
			$scope.premium = 'Activated';
		} else {
			$scope.premium	= 'No'
		}

		$scope.alang = [];
		angular.forEach(alang,function(entry) {					  
		  $scope.alang.push({
			id: entry,
			text: entry.text
		  });
		});	

		app = $localstorage.getObject('app');
		$scope.logo = app.logo;
	

	})  
	.controller('LoaderCtrl',function($scope,$rootScope,$state,$ionicViewSwitcher, $cordovaDevice,A,$localstorage,$ionicLoading) {

		 mobileUser = $localstorage.get('userHistory');
		 $ionicViewSwitcher.nextDirection("exit");
		if(mobileUser == null){
			oneSignalID = Math.floor((Math.random() * 9999999) + 1);
			$localstorage.set('userHistory', oneSignalID);			
		} else {
			oneSignalID = mobileUser;
		}
		console.log(oneSignalID);

		/*

		if (window.cordova) {
			document.addEventListener('deviceready', function () {
				var notificationOpenedCallback = function(jsonData) { 
				};
				window.plugins.OneSignal.init("04f22177-366a-40dc-99cf-6d1342c4e1f5",
											 {googleProjectNumber: "633977981600"},
											 notificationOpenedCallback);
				window.plugins.OneSignal.enableNotificationsWhenActive(true);
				window.plugins.OneSignal.getIds(function(ids) {
				  oneSignalID = ids.userId;
		    	  loader();			  
				});	
			}, false);
		} else {
			loader();
		} */
		$('#ready').removeClass('hidden');
		$rootScope.loader();
	})
  

  .controller('WelcomeCtrl', function($scope, $state,$ionicViewSwitcher,$http,awlert, $ionicLoading,$ionicActionSheet, $timeout,A,$cordovaOauth,$localstorage,Navigation) {
	if(config == ''){
		$state.go('loader');
	}
	config = $localstorage.getObject('config');
	if(window.cordova){
		$ionicViewSwitcher.nextDirection("forward");
	} else {
		$ionicViewSwitcher.nextDirection("back");
	}

	lang = $localstorage.getObject('lang');
	alang = $localstorage.getObject('alang');
	$('#ready').removeClass('hidden');	
	url = 'welcome';
	$('[data-alid]').each(function(){
	  var id = $(this).attr('data-alid');
	  $(this).text(alang[id].text);
	});
	$scope.openPrivacy = function(){
		if (window.cordova) {
			cordova.InAppBrowser.open(site_url+'index.php?page=pp', '_blank', 'location=yes');
		} else {
			window.open(site_url+'index.php?page=pp', '_blank', 'location=yes');
		}		
	}
	$scope.openTerms = function(){
		if (window.cordova) {
			cordova.InAppBrowser.open(site_url+'index.php?page=tac', '_blank', 'location=yes');
		} else {
			window.open(site_url+'index.php?page=tac', '_blank', 'location=yes');
		};			
	}
	$scope.site_url = site_url;
	$scope.alang = [];
	angular.forEach(alang,function(entry) {					  
	  $scope.alang.push({
		id: entry,
		text: entry.text
	  });
	});	
   $scope.register = function() {
      var hideSheet = $ionicActionSheet.show({
		titleText: alang[25].text,									 
        buttons: [
          { text: alang[246].text},
          { text: alang[159].text}
        ],
        cancelText: alang[2].text,
        cancel: function() {
            // add cancel code..
          },
        buttonClicked: function(index) {
			if(index == 0){
				$state.go('home.register');
			 };	
			if(index == 1){
				$scope.fb();
			 };				 
          return true;
        }
      });
    }	
	app = $localstorage.getObject('app');
	$scope.slideTitleLang1 = alang[240].text;
	$scope.slideLang1 = alang[241].text;
	$scope.slideTitleLang2 = alang[242].text;
	$scope.slideLang2 = alang[243].text;
	$scope.slideTitleLang3 = alang[244].text;
	$scope.slideLang3 = alang[245].text;		
	$scope.logo = config.logo;

	var val = 0;
	$scope.forgetBtn = false;
	$scope.recoverPass = function(){
		$scope.forgetBtn = true;
		$scope.loginBtn = true;
	}

	$scope.backLogin = function(){
		$scope.forgetBtn = false;
		$scope.loginBtn = false;
	}
	$scope.isActive = true;
	$scope.keyup = function(key){
		val = key;
		if(val > 4){
			$scope.isActive = false;
		} else {
			$scope.isActive = true;
		}
    }

	$scope.loginBtn = false;

	$scope.send = function(user) {
		if(val < 4){
			return false;
		}		
		$scope.master = angular.copy(user);
		$scope.loginBtn = true;
		var dID = oneSignalID;
		$scope.ajaxRequest = A.User.get({action : 'login',login_email: $scope.master.login_email, login_pass:$scope.master.login_pass , dID : dID });
		$scope.ajaxRequest.$promise.then(function(){						
			if($scope.ajaxRequest.error == 1){
				awlert.neutral($scope.ajaxRequest.error_m, 3000);
				$scope.loginBtn = false;
				$scope.isActive = true;		
			} else {		
				$localstorage.setObject('user', $scope.ajaxRequest.user);
				$localstorage.setObject('usPhotos', $scope.ajaxRequest.user.photos);
				usPhotos = $scope.ajaxRequest.user.photos;
				sape = $scope.ajaxRequest.user.slike;
					var rtnotification = 'notification'+$scope.ajaxRequest.user.id;
					channel.bind(rtnotification, function(data) {
						if(data.id != current_user_id ){	
							$('.chatNotification').removeClass('is-visible');
							$('.chatNotificationPhoto').removeClass('sblur');	
							$('.chatNotificationPhoto').css('background-image', 'url('+ data.icon +')');
							$('.chatNotificationContent').text(data.message);
							setTimeout(function(){
								$('.chatNotification').addClass('is-visible');
							},500);				
							setTimeout(function(){
								$('.chatNotification').removeClass('is-visible');
							},6000);						
						}
					});
					var rtvisit = 'visit'+$scope.ajaxRequest.user.id;
					channel.bind(rtvisit, function(data) {	
						$('.chatNotification').removeClass('is-visible');
						$('.chatNotificationPhoto').removeClass('sblur');	
						$('.chatNotificationPhoto').css('background-image', 'url('+ data.icon +')');
						$('.chatNotificationContent').text(data.message);
						setTimeout(function(){
							$('.chatNotification').addClass('is-visible');
						},500);				
						setTimeout(function(){
							$('.chatNotification').removeClass('is-visible');
						},6000);						
					});	
					var rtlike = 'like'+$scope.ajaxRequest.user.id;
					channel.bind(rtlike, function(data) {	
						$('.chatNotification').removeClass('is-visible');
						if(user.premium == 1){
							$('.chatNotificationPhoto').removeClass('sblur');	
						} else {
							$('.chatNotificationPhoto').addClass('sblur');
						}							
						$('.chatNotificationPhoto').css('background-image', 'url('+ data.icon +')');
						$('.chatNotificationContent').text(data.message);
						setTimeout(function(){
							$('.chatNotification').addClass('is-visible');
						},500);				
						setTimeout(function(){
							$('.chatNotification').removeClass('is-visible');
						},6000);						
					});					
				if(window.cordova){
					$state.go('home.explore'); 	
				} else {
					$state.go('home.explore'); 		
				} 				
				
				$localstorage.set('mobileUser',$scope.ajaxRequest.user.app_id);
			}
		},
		function(){
			awlert.neutral('Something went wrong. Please try again later',3000);
		}
	)};
		
	$scope.forget = function(user) {	
		$scope.master = angular.copy(user);
		$scope.ajaxRequest = A.Query.get({action : 'recover',query: $scope.master.login_email });
		$scope.ajaxRequest.$promise.then(function(){						
			if($scope.ajaxRequest.error == 1){
				awlert.neutral($scope.ajaxRequest.error_m, 3000);		
			} else {		
				awlert.neutral(lang[341].text);
			}
		},
		function(){
			awlert.neutral('Something went wrong. Please try again later',3000);
		}
	)};

    FB.init({
      appId: config.fb_app_id,
      status: true,
      cookie: true,
      xfbml: true,
      version: 'v2.2'
    });	
	$scope.fb = function() {
		if (window.cordova) {
			 $cordovaOauth.facebook('844622042382060', ["email"]).then(function(result) {
				$http.get("https://graph.facebook.com/v2.2/me", { params: { access_token: result.access_token, fields: "id,name,email,gender", format: "json" }}).then(function(result) {
					var dID = oneSignalID;
					var query = result.data.id+','+result.data.email+','+result.data.name+','+result.data.gender+','+dID;
				$scope.ajaxRequest = A.Query.get({action : 'fbconnect',query: query });
				$scope.ajaxRequest.$promise.then(function(){							
					$localstorage.setObject('user', $scope.ajaxRequest.user);
					usPhotos = $scope.ajaxRequest.user.photos;
					$state.go('home.explore');	
				},
				function(){
					awlert.neutral('Something went wrong. Please try again later',3000);
				});
				
				}, function(error) {
				alert("There was a problem getting your profile.  Check the logs for details.");
					console.log(error);
				});
			 }, function(error) {
				 alert("Auth Failed..!!"+error);
			 });	
			} else {
				FB.getLoginStatus(function(response) {
				    if (response.status === 'connected') {
			            FB.api('/me', {
			              	 fields: 'id,name,email,gender'
			            }, function(response) {
							var dID = oneSignalID;
							var query = response.id+','+response.email+','+response.name+','+response.gender+','+dID;
							$scope.ajaxRequest = A.Query.get({action : 'fbconnect',query: query });
							$scope.ajaxRequest.$promise.then(function(){							
								$localstorage.setObject('user', $scope.ajaxRequest.user);
								usPhotos = $scope.ajaxRequest.user.photos;
								$state.go('home.explore');	
							},
							function(){
								awlert.neutral('Something went wrong. Please try again later',3000);
							});		
						});
				    } else {
						FB.login(function(response){
							if(response.authResponse){
					            FB.api('/me', {
					                fields: 'id,name,email,gender'
					            }, function(response) {
									var dID = oneSignalID;
									var query = response.id+','+response.email+','+response.name+','+response.gender+','+dID;
									$scope.ajaxRequest = A.Query.get({action : 'fbconnect',query: query });
									$scope.ajaxRequest.$promise.then(function(){							
										$localstorage.setObject('user', $scope.ajaxRequest.user);
										usPhotos = $scope.ajaxRequest.user.photos;
										$state.go('home.explore');	
									},
									function(){
										awlert.neutral('Something went wrong. Please try again later',3000);
									});		
								});
							}
						})	
				    } 
				});				
			}		 
		};	
	//$scope.site_name = lang[0].text;

  })
  .controller('MeetCtrl', function($scope,$rootScope,$sce,$ionicPlatform,$ionicScrollDelegate,$ionicViewSwitcher, $state,$ionicModal, $ionicLoading,A, $timeout,$localstorage,Navigation,$window,preloader) {
	//$sce.trustAsResourceUrl(url);
	var cc = 0;
	current_user_id = 0;
	url = 'meet';
	$('#ready').removeClass('hidden');	
	$ionicViewSwitcher.nextDirection("forward");
	if(config == ''){
		$state.go('loader');
	}
	config = $localstorage.getObject('config');								  
	lang = $localstorage.getObject('lang');

	alang = $localstorage.getObject('alang');
	site_prices = $localstorage.getObject('prices');
	$scope.alang = [];
	user = $localstorage.getObject('user');
	prices = $localstorage.getObject('prices');
	$rootScope.logged = true;
	$rootScope.me = user;

	if(rt == ''){
		rt = new Pusher(config.pusher, {
		  encrypted: true,
		  cluster: "us2"

		});
		channel = rt.subscribe(config.pusher);		
	}

	if(window.cordova){
		$ionicViewSwitcher.nextDirection("forward");
	} else {
		$ionicViewSwitcher.nextDirection("back");
	}

	angular.forEach(alang,function(entry) {					  
	  $scope.alang.push({
		id: entry,
		text: entry.text
	  });
	});


	if(user.s_radius >= 1000){
		$scope.check = 'All the world'	
	}
	if(user.s_radius < 550 && user.s_radius >= 500 ){
		$scope.check = user.city;	
	}
	if(user.s_radius < 550 && user.s_radius >= 500 ){
		$scope.check = user.country;	
	}
	if(user.s_radius < 50 ){
		$scope.check = user.city;	
	}
	if(user.s_radius > 30 && user.s_radius < 500 || user.s_radius > 550 && user.s_radius < 1000){
		$scope.check = user.s_radius+' KM';	
	}

    var n = new Date().getTime() / 1000;
    console.log(user.last_access + ' - ' + n);
    if(user.last_access > n && user.meet == 1){
    	$scope.showRiseUp = false;
    } else {
    	$scope.showRiseUp = true;
    }

	$scope.photo = user.profile_photo;


	$scope.goToChat = function(){
		$ionicViewSwitcher.nextDirection('back'); // 'forward', 'back', etc.
		$state.go('home.matches');		
	}
	
	$('[data-lid]').each(function(){
	  var id = $(this).attr('data-lid');
	  $(this).text(lang[id].text);
	});
	
	
	var result = [];
	var loadMore = [];
	$scope.imageLocations = [];
	$scope.loading = true;
    $scope.meet = [];
    $scope.noResult = false;
	var meet = function () {
		meet_limit = 0;
		try {		  
		  $scope.ajaxRequest = A.Meet.get({action: 'meet',uid1: user.id, uid2: meet_limit, uid3 : onlineMeet});
		  $scope.ajaxRequest.$promise.then(function(){											
				result = $scope.ajaxRequest.result;
				var i = 0;
				if(result){
					result.forEach(function(entry) {
						i++;
						entry.show = i;		
						$scope.meet.push(entry);	

						$scope.imageLocations.push(entry.photo);
					});	
					cc++;
					$scope.loading = false;
					preloader.preloadImages( $scope.imageLocations )
					.then(function() {
						
					},
					function() {
						// Loading failed on at least one image.
					});					
				} else {
					  $scope.noResult = true;
				}
		  },
		  function(){}
		  )		 
		}
		catch (err) {
			console.log("Error " + err);
		}	
	}
	
	var loadMore = function () {
		meet_limit = meet_limit+1;
		$scope.imageLocations = [];
		try {		  
		  $scope.ajaxRequest = A.Meet.get({action: 'meet',uid1: user.id, uid2: meet_limit, uid3 : onlineMeet});
		  $scope.ajaxRequest.$promise.then(function(){											
				result = $scope.ajaxRequest.result;
				$scope.loadMores = $scope.ajaxRequest.result;
				var i = 0;
				result.forEach(function(entry) {
					i++;
					entry.show = i;					  
					$scope.meet.push(entry);
					$scope.imageLocations.push(entry.photo);
				});
				preloader.preloadImages( $scope.imageLocations )
				.then(function() {
					show = meet_limit * 9;
					var maxShow = show + 10;
					var show_search = setInterval(function(){
						show++;	
						if(show == maxShow){
							clearInterval(show_search);	
							$scope.$broadcast('scroll.infiniteScrollComplete');
						}
					},150);
				},
				function() {
					// Loading failed on at least one image.
				});				
		  },
		  function(){}
		  )		 
		}
		catch (err) {
			console.log("Error " + err);
		}	
	}

	meet();	
	
	$scope.spot_price = prices.spotlight;
	$scope.openSpot = function(){
		$scope.showSpot = true;
	}
	$scope.cancelSpot = function(){
		$scope.showSpot = false;	
	}
	$scope.addToSpotBtn = function(){
		user.credits = parseInt(user.credits);
		if(user.credits < prices.spotlight){
			$scope.openCreditsModal("'"+user.profile_photo+"'");
		} else {
			$scope.showMe = false;
			addToSpotlight();
		}
	}


	//ADMOB
	if(show_ad == max_ad && user.premium == 0){
		if(window.AdMob) window.AdMob.prepareInterstitial( {adId:adMobI, autoShow:true} );
		show_ad = 0;	
	}
	show_ad++;	

 
  $scope.loadMore = function() {
	  loadMore();
  };
 


  })  
  
  .controller('LoginCtrl', function($scope,$ionicPlatform,$http, $state,$ionicViewSwitcher,$ionicModal,A,awlert,$cordovaOauth,Navigation) {
	var app = $localstorage.getObject('app');
	var val = 0;
	$('#ready').removeClass('hidden');	

	if(window.cordova){
		$ionicViewSwitcher.nextDirection("forward");
	} else {
		$ionicViewSwitcher.nextDirection("back");
	}

	lang = $localstorage.getObject('lang');
	alang = $localstorage.getObject('alang');

	$('[data-alid]').each(function(){
	  var id = $(this).attr('data-alid');
	  $(this).text(alang[id].text);
	});
	$('[data-lid]').each(function(){
	  var id = $(this).attr('data-lid');
	  $(this).text(lang[id].text);
	});

	$scope.alang = [];
	$scope.lang = [];
	angular.forEach(alang,function(entry) {					  
	  $scope.alang.push({
		id: entry,
		text: entry.text
	  });
	});
	angular.forEach(lang,function(entry) {					  
	  $scope.lang.push({
		id: entry,
		text: entry.text
	  });
	});
  })  

  .controller('RegisterCtrl', function($scope, $state,$ionicViewSwitcher,$ionicModal,A,awlert, $ionicLoading, $timeout,$localstorage,$cordovaCamera, $cordovaFile, $cordovaFileTransfer, $cordovaDevice) {
	var reg = '';								   
	var app = $localstorage.getObject('app'); 
	var w;
	if(window.cordova){
		$ionicViewSwitcher.nextDirection("forward");
	} else {
		$ionicViewSwitcher.nextDirection("back");
	}	
	if(config == ''){
		$state.go('loader');
	}
	config = $localstorage.getObject('config');	
	lang = $localstorage.getObject('lang');
	alang = $localstorage.getObject('alang');
	$('#ready').removeClass('hidden');	
	$('[data-alid]').each(function(){
	  var id = $(this).attr('data-alid');
	  $(this).text(alang[id].text);
	});
	$('[data-lid]').each(function(){
	  var id = $(this).attr('data-lid');
	  $(this).text(lang[id].text);
	});

	$scope.alang = [];
	angular.forEach(alang,function(entry) {					  
	  $scope.alang.push({
		id: entry,
		text: entry.text
	  });
	});	

	app = $localstorage.getObject('app');
	$scope.logo = app.logo;

	$scope.lname = lang[26].text;
	$scope.lemail = lang[28].text;
	$scope.lpass = lang[29].text;
	$scope.nexttext = alang[26].text;
	$scope.regPhoto = '';
	alang = $localstorage.getObject('alang');
	lang = $localstorage.getObject('lang');

	var div = angular.element(document.getElementById('photo-upload'));
	w = angular.element(document.getElementById('photo-upload')).prop('offsetWidth'); 
	div.css('height',w+'px');
	window.addEventListener('native.keyboardshow', keyboardHandler);
	window.addEventListener('native.keyboardhide', keyboardHandler);
	function keyboardHandler(e){
		var div = angular.element(document.getElementById('photo-upload')); 
		w = angular.element(document.getElementById('photo-upload')).prop('offsetWidth'); 
		div.css('height',w+'px');
	}
	
	var val = 0;
	$scope.isActive = false;
	$('#regpass').keyup(function(){
		val = $('#regpass').val().length;
		if(val > 4){
			$scope.isActive = true;
		} else {
			$scope.isActive = false;
		}
    });	
	$scope.regBtn = false;
	var regPhoto = '';
	var con = false;
	$scope.next = function(user) {
		if(val < 4){
			return false;
		}
		if(con == false){
			awlert.neutral(alang[3].text,1000);
			return false;
		}		
		if(user.reg_name == ''){
			awlert.neutral(alang[4].text,1000);		
			return false;
		}
		if(user.reg_email == ''){
			awlert.neutral(alang[4].text,1000);
			return false;
		}
		if (!validateEmail(user.reg_email)) {		
			awlert.neutral(alang[5].text,1000);
			return false;		
		}
		if(user.reg_pass == ''){
			awlert.neutral(alang[4].text,1000);	
			return false;
		}
		regName = user.reg_name;
		reg = user.reg_name+'  '+user.reg_email+'  '+user.reg_pass;
		$localstorage.set('register',reg);
		$state.go('home.register3');
	};
	
	
	function validateEmail(email) {
		var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		return re.test(email);
	}

		 $scope.processFiles = function(files){
	    angular.forEach(files, function(flowFile, i){
	       var fileReader = new FileReader();
	          fileReader.onload = function (event) {
	            var uri = event.target.result;
					var image = uri;
					var r = Math.floor((Math.random() * 225) + 4000);
					reg_photo = site_url+'assets/sources/uploads/'+oneSignalID+'.jpg';
					var div = angular.element(document.getElementById('photo-upload')); 
					div.css('background-image','url('+image+')');
					$('#photo-upload i').hide();
					con = true;
					$.ajax({
						url: site_url+'assets/sources/appupload.php',
						data:{
							action: 'register',
							base64: image,
							uid: oneSignalID
						},
						cache: false,
						contentType: "application/x-www-form-urlencoded",				  
						type:"post",
						success:function(){
						}
					});	                
	          };
	          fileReader.readAsDataURL(flowFile.file);
	    });
	  };

	$scope.pick = function() {
		if (window.cordova) {
		var options = {
			quality: 40,
			destinationType: Camera.DestinationType.DATA_URL,
			sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
			encodingType: Camera.EncodingType.JPEG,
			allowEdit : true,
		};
		$cordovaCamera.getPicture(options).then(function(imageData) {
			var image = "data:image/jpeg;base64," + imageData;
			reg_photo = site_url+'assets/sources/uploads/'+oneSignalID+'.jpg';
			var div = angular.element(document.getElementById('photo-upload')); 
			div.css('background-image','url('+image+')');
			con = true;
			$.ajax({
				url: site_url+'assets/sources/appupload.php',
				data:{
					action: 'register',
					base64: image,
					uid: oneSignalID
				},
				cache: false,
				contentType: "application/x-www-form-urlencoded",				  
				type:"post",
				success:function(){
				}
			});
		}, function(err) {
		  // error
		});
		} else {
			$('#uploadRegPhoto').click();
		}		
	};		
	
	$ionicViewSwitcher.nextDirection("exit");	
  })
  
  .controller('Register2Ctrl', function($scope, $state,$ionicViewSwitcher,$ionicModal,A,awlert, $ionicLoading, $timeout,$localstorage,$cordovaCamera) {  
	var looking = 2;									
	
	if(config == ''){
		$state.go('loader');
	}
	config = $localstorage.getObject('config');	
	$scope.isActive = true;
	$scope.regBtn = false;
	$scope.girl = true;
	$scope.boy = false;
	lang = $localstorage.getObject('lang');
	alang = $localstorage.getObject('alang');

	$('[data-alid]').each(function(){
	  var id = $(this).attr('data-alid');
	  $(this).text(alang[id].text);
	});
	$('[data-lid]').each(function(){
	  var id = $(this).attr('data-lid');
	  $(this).text(lang[id].text);
	});

	$scope.nexttext = alang[26].text;

	$scope.selectGirl = function(){
		if($scope.girl){
			$scope.girl = false;
			looking = looking-2;
			if(looking == 0){
				$scope.isActive = false;	
			}
			console.log(looking);
		} else {
			$scope.girl = true;	
			$scope.isActive = true;
			looking = looking+2;
			console.log(looking);
		}
	}
	
	$scope.selectGender = function(val){
		if($scope.boy){
			$scope.boy = false;
			looking = looking-1;
			console.log(looking);
			if(looking == 0){
				$scope.isActive = false;	
			}			
		} else {
			$scope.boy = true;	
			$scope.isActive = true;
			looking = looking+1;
			console.log(looking);
		}
	}	
		
  })
  
  .controller('Register3Ctrl', function($scope, $state,$ionicViewSwitcher,$ionicModal,A,awlert, $ionicLoading, $timeout,$localstorage,$cordovaCamera) {
	var gender = 0;
	var reg = $localstorage.get('register');
	lang = $localstorage.getObject('lang');
	alang = $localstorage.getObject('alang');
	config = $localstorage.getObject('config');
	$('[data-alid]').each(function(){
	  var id = $(this).attr('data-alid');
	  $(this).text(alang[id].text);
	});
	$('[data-lid]').each(function(){
	  var id = $(this).attr('data-lid');
	  $(this).text(lang[id].text);
	});

	$scope.lang31 = alang[31].text;
	$scope.nexttext = alang[26].text;
	
	$scope.isActive = false;
	$scope.regBtn = false;
	$scope.girl = false;
	$scope.boy = false;
	$scope.name = regName;	
	$scope.genders = config.genders;
	gender = 0;
	var looking = 0;
	$scope.selectGender = function(val){
		$('[data-gender]').removeClass('active');
		$('#gender'+val).addClass('active');
		console.log(val);
		gender = val;
	}
	$scope.selectLooking = function(val){
		$('[data-looking]').removeClass('active');
		$('#looking'+val).addClass('active');
		console.log(val);
		looking = val;
		if(gender > 0){
			$scope.isActive = true;
		}
	}	
		

	$scope.send = function() {
		var date = $('#birth').val();
		if(date == ''){
			awlert.neutral(alang[6].text,3000);	
			return false;
		}
		if(gender == 0){
			return false;
		}
		if(looking == 0){
			return false;
		}
		console.log(gender + ' ' + looking);	
		reg = reg +'  '+ date +'  '+ gender;
		console.log(reg);	
		$localstorage.set('register',reg);		
		$scope.regBtn = true;
		var register =  new Array();
		register = reg.split('  ');		
		var dID = oneSignalID;
		$scope.ajaxRequest = A.Reg.get({action : 'register',reg_name: register[0], reg_email: register[1] , reg_pass: register[2], reg_birthday: register[3], reg_gender: gender, reg_looking: looking , reg_photo : reg_photo, dID : dID });
		$scope.ajaxRequest.$promise.then(function(){						
			if($scope.ajaxRequest.error == 1){
				awlert.error($scope.ajaxRequest.error_m, 3000);
				$scope.regBtn = false;
				$scope.isActive = true;			
			} else {		
				$localstorage.setObject('user', $scope.ajaxRequest.user);	
				$localstorage.setObject('usPhotos', $scope.ajaxRequest.user.photos);
				usPhotos = $scope.ajaxRequest.user.photos;
				sape = $scope.ajaxRequest.user.slike;
					var rtnotification = 'notification'+$scope.ajaxRequest.user.id;
					channel.bind(rtnotification, function(data) {
						if(data.id != current_user_id ){	
							$('.chatNotification').removeClass('is-visible');
							$('.chatNotificationPhoto').removeClass('sblur');	
							$('.chatNotificationPhoto').css('background-image', 'url('+ data.icon +')');
							$('.chatNotificationContent').text(data.message);
							setTimeout(function(){
								$('.chatNotification').addClass('is-visible');
							},500);				
							setTimeout(function(){
								$('.chatNotification').removeClass('is-visible');
							},6000);						
						}
					});
					var rtvisit = 'visit'+$scope.ajaxRequest.user.id;
					channel.bind(rtvisit, function(data) {	
						$('.chatNotification').removeClass('is-visible');
						$('.chatNotificationPhoto').removeClass('sblur');	
						$('.chatNotificationPhoto').css('background-image', 'url('+ data.icon +')');
						$('.chatNotificationContent').text(data.message);
						setTimeout(function(){
							$('.chatNotification').addClass('is-visible');
						},500);				
						setTimeout(function(){
							$('.chatNotification').removeClass('is-visible');
						},6000);						
					});	
					var rtlike = 'like'+$scope.ajaxRequest.user.id;
					channel.bind(rtlike, function(data) {	
						$('.chatNotification').removeClass('is-visible');
						if(user.premium == 1){
							$('.chatNotificationPhoto').removeClass('sblur');	
						} else {
							$('.chatNotificationPhoto').addClass('sblur');
						}							
						$('.chatNotificationPhoto').css('background-image', 'url('+ data.icon +')');
						$('.chatNotificationContent').text(data.message);
						setTimeout(function(){
							$('.chatNotification').addClass('is-visible');
						},500);				
						setTimeout(function(){
							$('.chatNotification').removeClass('is-visible');
						},6000);						
					});				
				$localstorage.set('mobileUser',$scope.ajaxRequest.user.app_id);
				$state.go('home.explore');	
			}
		},
		function(){
			awlert.error('Something went wrong. Please try again later',3000);
		}
	)};	
	$ionicViewSwitcher.nextDirection("exit");
  })
  
  .controller('ExploreCtrl', function($scope,$rootScope,$ionicSlideBoxDelegate,$ionicViewSwitcher,$state,$sce,$ionicPlatform,preloader,$timeout, $ionicModal,A,$localstorage,Navigation,awlert,$ionicViewSwitcher,currentUser) {
	url = 'explore';
	current_user_id = 0;
	user = $localstorage.getObject('user');
	if(config == ''){
		$state.go('loader');
	}
	config = $localstorage.getObject('config'); 
	lang = $localstorage.getObject('lang');
	alang = $localstorage.getObject('alang');
	app = $localstorage.getObject('app');
	$scope.exploreResult = true;
	$('#ready').removeClass('hidden');
	$rootScope.logged = true;
	$rootScope.me = user;
	$scope.newChat = false;
	$ionicSlideBoxDelegate.slide(0);
	if(rt == ''){
		rt = new Pusher(config.pusher, {
		  encrypted: true,
		  cluster: "us2"

		});
		channel = rt.subscribe(config.pusher);		
	}
	console.log(user.id);


	if(window.cordova){
		$ionicViewSwitcher.nextDirection("forward");
	} else {
		$ionicViewSwitcher.nextDirection("back");
	}	
	
	$scope.trustSrc = function(src) {
		return $sce.trustAsResourceUrl(src);
	}  
	
	$scope.logo = app.logo;

	$scope.alang = [];
	$scope.lang = [];

	angular.forEach(alang,function(entry) {					  
	  $scope.alang.push({
		id: entry,
		text: entry.text
	  });
	});

	//load chat
	var chat = function () {
		try {
		  $scope.ajaxRequest2 = A.Game.get({action: 'getChat', id: user.id});
		  $scope.ajaxRequest2.$promise.then(function(){
				$scope.matches = $scope.ajaxRequest2.matches;
				$scope.unread = $scope.ajaxRequest2.unread;
				chats = $scope.matches;
				unread = $scope.unread;
				if(unread != null){
					$scope.unrread = unread.length;
					unread = unread.length;
				}
		  },
		  function(){}
		  )		 
		}
		catch (err) {
			console.log("Error " + err);
		}	
	}

	chat();

	//ADMOB
	if(show_ad == max_ad){
		if(window.cordova){
			if(window.AdMob) window.AdMob.prepareInterstitial( {adId:adMobI, autoShow:true} );	
			show_ad = 0;	
		}
	}
	show_ad++;

	$scope.cu2 = [];

	$scope.chatUser = function(url,slide,val) {
		currentUser.selectedUser=val;
		$state.go(url, val);  
	};	
	
	var w = window.innerWidth;
	w = w/2;
	if(w > 200){
		w = 200;
	}

	$scope.w = w;

	s_age = user.sage;
	user_country = user.country;
	user_city = user.city;	
	
	$scope.superLike = 5;
	$scope.uphoto = user.profile_photo;


	$scope.goToChat = function(){
		$ionicViewSwitcher.nextDirection('back'); // 'forward', 'back', etc.
		$state.go('home.matches');		
	}

	$scope.goToSettings = function(){
		$ionicViewSwitcher.nextDirection('forward'); // 'forward', 'back', etc.
		$state.go('home.settings');		
	}	


	

	var gameAction = function (id,action) {
		try {		  
		  A.Meet.get({action: 'game_like',uid1: user.id, uid2: id, uid3: action});		 
		}
		catch (err) {
			console.log("Error " + err);
		}		
	}
	

	$scope.imageLocations = [];	
	var card = function (val) {
		console.log('loading profiles');
		if(val == 4){
			cards = [];
		}
		try {		  
		  $scope.ajaxRequest = A.Game.get({action: 'game',id: user.id});
		  $scope.ajaxRequest.$promise.then(function(){										
				$scope.ajaxRequest.game.forEach(function(entry) {
					if(cards.indexOf(entry) !== -1) {
  						console.log('alredy in game');
  					} else {
  						if(entry.id != user.id){
							cards.push(entry);								  
							$scope.imageLocations.push(entry.photo);
  						}
					}
				});

				$scope.loading = false;
				preloader.preloadImages( $scope.imageLocations )
				.then(function() {
				},
				function() {
				
				});
				if(val == 1 || val == 4){							
					cu = cards[0].id;
					$scope.cu2 = cards[0];
					$rootScope.cards = cards;
				    $rootScope.aImages = cards[0].full.galleria; 
			    }
			    $rootScope.cards = cards;				
		  },
		  function(){ 
		  	$scope.loading = alang[7].text;

			}
		  )		 
		}
		catch (err) {
			console.log("Error " + err);
		}	
	}

    $scope.cardDestroyed = function(index,act) {
		if(act == 1){
			if ($rootScope.cards[index].isFan == 1){
				$scope.itsaMatch = true;
				var w = window.innerWidth;
				w = w/3;
				$scope.width = w;
				$scope.cu3 = $rootScope.cards[index];
				$scope.myPhoto = user.profile_photo;
				angular.forEach(alang,function(entry) {					  
					$scope.alang.push({
						id: entry,
						text: entry.text
					});
				});			 
			};
		}
      addCards(1);
	  cu = $rootScope.cards[index].id;
	  $scope.cu2 = $rootScope.cards[index];
    };
	
   function addCards(v) {
		if(cards.length == 30){
			card(2);
		}
		if(cards.length == 29){
			card(2);
		}		
		$timeout(function(){
		    $scope.yesVoted = false;
		    $scope.noVoted = false;
		    cards.splice(0, 1);
	  		$rootScope.cards.splice(0, 1);							
			$rootScope.aImages = cards[0].full.galleria;			    		    
		}, 120);    		
   }


	if(cards.length == 0){
		$scope.loading = true;
		card(1);
	} else {
		if(uLat != user.lat){
			uLat = user.lat;
			$scope.loading = true;
			card(4);			
		} else {
			$scope.loading = false;	
			$rootScope.cards = cards;
			console.log(cards);
		}
	}
	


    $scope.yesVoted = false;
    $scope.noVoted = false;
	$scope.like = function(){
		$ionicSlideBoxDelegate.slide(0);
		$ionicSlideBoxDelegate.update();
		$scope.yesVoted = true;
	 	gameAction(cu,1);
	}

	$scope.nolike = function(){
	  $ionicSlideBoxDelegate.slide(0);
	  $ionicSlideBoxDelegate.update();
	  $scope.noVoted = true;		
	  gameAction(cu,0);				
	}	

	
	$scope.slike = function(){
	  if($scope.cards.length > 0){
		  if($scope.superLike > 0){
			  awlert.neutral(alang[9].text, 3000);
			  var int = parseInt($scope.superLike);
			  $scope.superLike = int-1;	 
			  sape = sape-1;
			  gameAction(cu,3);	
			  $scope.cardDestroyed(0,1);
		  } else {
			  $scope.slikephoto = $scope.cu2.photo;
			  $scope.noSlike = true;
		  }
	  }
	}	
	
	$scope.buySlike = function(){
		user.credits = parseInt(user.credits);
		if(400 > user.credits){
			$scope.openCreditsModal();
		} else {
			$scope.noSlike = false;
			var ma = user.id + ',400,10';
			awlert.neutral(alang[9].text, 3000);	  
			gameAction(cu,3);
			$scope.cardDestroyed(0,1);			
			try {	
			  $scope.ajaxRequest = A.Query.get({action: 'slike', query: ma});
			  $scope.ajaxRequest.$promise.then(function(){		
			  $localstorage.setObject('user',$scope.ajaxRequest.user);
			  user = $localstorage.getObject('user'); 
			  $scope.superLike = user.slike;
				var int = parseInt($scope.superLike);
				$scope.superLike = int-1;
				sape = user.slike;
				sape = sape-1;				
			  },
			  function(){}
			  )		 
			}
			catch (err) {
				console.log("Error " + err);
			}
		}
	};	
	
	$scope.noBtnSlike = function(){
	  $scope.noSlike = false;			
	}	
	

	//SPOTLIGHT
	var spot = function () {
		try {		  
		  $scope.ajaxRequest5 = A.Game.get({action: 'spotlight', id: user.id});
		  $scope.ajaxRequest5.$promise.then(function(){											
				spotlight = $scope.ajaxRequest5.spotlight;
				console.log(spotlight);
				$rootScope.spotlight = [];
				$rootScope.spotlight = spotlight;
				
		  },
		  function(){}
		  )		 
		}
		catch (err) {
			console.log("Error " + err);
		}	
	}
	if(spotlight == ''){
		spot();
	}	else {
		$rootScope.spotlight = spotlight;	
		spot();
	}


  })

  .controller('profileCtrl', function($state,$ionicLoading,$rootScope,$ionicActionSheet,$ionicViewSwitcher,$scope,A, $ionicModal,$localstorage,Navigation) {
	url = 'profile-me';
	if(window.cordova){
		$ionicViewSwitcher.nextDirection("forward");
	} else {
		$ionicViewSwitcher.nextDirection("back");
	}

	
	user = $localstorage.getObject('user');
	if(config == ''){
		$state.go('loader');
	}
	config = $localstorage.getObject('config');
	lang = $localstorage.getObject('lang');
	alang = $localstorage.getObject('alang');
	app = $localstorage.getObject('app');
	usPhotos = $localstorage.getObject('usPhotos');
	$('[data-lid]').each(function(){
	  var id = $(this).attr('data-lid');
	  $(this).text(lang[id].text);
	});	

	$('#ready').removeClass('hidden');
	$rootScope.logged = true;
	$rootScope.me = user;

	$scope.alang = [];
	angular.forEach(alang,function(entry) {					  
	  $scope.alang.push({
		id: entry,
		text: entry.text
	  });
	});	
		
	if(rt == ''){
		rt = new Pusher(config.pusher, {
		  encrypted: true,
		  cluster: "us2"

		});
		channel = rt.subscribe(config.pusher);		
	}	
	app = $localstorage.getObject('app');
	$scope.logo = app.logo;

		$scope.loading = false;
		$scope.bio = user.bio;
		$scope.name = user.name;
		$scope.age = user.age;	
		$scope.credits = user.credits;
		if(user.premium == 1){
			$scope.premium = 'Activated';
		} else {
			$scope.premium	= 'No'
		}
		



   $rootScope.showPhotoOptions = function(val,pid,blocked,profile) {
      var hideSheet = $ionicActionSheet.show({
        buttons: [
          { text:  lang[289].text },
          { text:  lang[292].text },
        ],
        cancelText: 'Cancel',
        cancel: function() {
          },
        buttonClicked: function(index) {
		  if(index ==0){
			  var p = $rootScope.photo1;
			  if(val == 2){
				var n = $rootScope.photo2;
				$rootScope.photo1 = n;
				$rootScope.photo2 = p;
				var m = user.id +','+pid;
				$scope.ajaxRequest = A.Query.get({action: 'updateUserProfilePhoto', query: m});
				$scope.ajaxRequest.$promise.then(function(){							
					$localstorage.setObject('user', $scope.ajaxRequest.user);
					usPhotos = $scope.ajaxRequest.user.photos;	
				}); 
			  }
			  if(val == 3){
				var n = $rootScope.photo3;
				$rootScope.photo1 = n;
				$rootScope.photo3 = p;
				var m = user.id +','+pid;
				$scope.ajaxRequest = A.Query.get({action: 'updateUserProfilePhoto', query: m});
				$scope.ajaxRequest.$promise.then(function(){							
					$localstorage.setObject('user', $scope.ajaxRequest.user);
					usPhotos = $scope.ajaxRequest.user.photos;	
				}); 
			  }
			  if(val == 4){
				var n = $rootScope.photo4;
				$rootScope.photo1 = n;
				$rootScope.photo4 = p;
				var m = user.id +','+pid;
				$scope.ajaxRequest = A.Query.get({action: 'updateUserProfilePhoto', query: m});
				$scope.ajaxRequest.$promise.then(function(){							
					$localstorage.setObject('user', $scope.ajaxRequest.user);
					usPhotos = $scope.ajaxRequest.user.photos;	
				}); 
			  }
			  if(val == 5){
				var n = $rootScope.photo5;
				$rootScope.photo1 = n;
				$rootScope.photo5 = p;
				var m = user.id +','+pid;
				$scope.ajaxRequest = A.Query.get({action: 'updateUserProfilePhoto', query: m});
				$scope.ajaxRequest.$promise.then(function(){							
					$localstorage.setObject('user', $scope.ajaxRequest.user);
					usPhotos = $scope.ajaxRequest.user.photos;	
				}); 
			  }
			  if(val == 6){
				var n = $rootScope.photo6;
				$rootScope.photo1 = n;
				$rootScope.photo6 = p;
				var m = user.id +','+pid;
				$scope.ajaxRequest = A.Query.get({action: 'updateUserProfilePhoto', query: m});
				$scope.ajaxRequest.$promise.then(function(){							
					$localstorage.setObject('user', $scope.ajaxRequest.user);
					usPhotos = $scope.ajaxRequest.user.photos;	
				}); 
			  }
		  }
		  if(index == 1){
			  if(val == 2){
				$rootScope.photo2 = null;
				var m = user.id +','+pid;
				$scope.ajaxRequest = A.Query.get({action: 'deletePhoto', query: m});
				$scope.ajaxRequest.$promise.then(function(){							
					usPhotos = $scope.ajaxRequest.user.photos;	
				}); 				
			  }
			  if(val == 3){
				$rootScope.photo3 = null;
				var m = user.id +','+pid;
				$scope.ajaxRequest = A.Query.get({action: 'deletePhoto', query: m});
				$scope.ajaxRequest.$promise.then(function(){							
					usPhotos = $scope.ajaxRequest.user.photos;	
				});
			  }
			  if(val == 4){
				$rootScope.photo4 = null;
				var m = user.id +','+pid;
				$scope.ajaxRequest = A.Query.get({action: 'deletePhoto', query: m});
				$scope.ajaxRequest.$promise.then(function(){							
					usPhotos = $scope.ajaxRequest.user.photos;	
				});
			  }
			  if(val == 5){
				$rootScope.photo5 = null;
				var m = user.id +','+pid;
				$scope.ajaxRequest = A.Query.get({action: 'deletePhoto', query: m});
				$scope.ajaxRequest.$promise.then(function(){							
					usPhotos = $scope.ajaxRequest.user.photos;	
				});
			  }
			  if(val == 6){
				$rootScope.photo6 = null;
				var m = user.id +','+pid;
				$scope.ajaxRequest = A.Query.get({action: 'deletePhoto', query: m});
				$scope.ajaxRequest.$promise.then(function(){							
					usPhotos = $scope.ajaxRequest.user.photos;	
				});
			  }
			  
		  }
          return true;
        }
      });
    }	

 $scope.processFiles = function(files){
    angular.forEach(files, function(flowFile, i){
       var fileReader = new FileReader();
          fileReader.onload = function (event) {
            var uri = event.target.result;
				var image = uri;
				con = true;
				$.ajax({
					url: site_url+'assets/sources/appupload.php',
					data:{
						action: 'upload',
						base64: image,
						uid: user.id
					},
					cache: false,
					contentType: "application/x-www-form-urlencoded",				  
					type:"post",
					dataType:'JSON',
					success:function(response){
						userInfo(user.id);						
					}
				});	                
          };
          fileReader.readAsDataURL(flowFile.file);
    });
  };
	 $rootScope.processUserFiles = function(files){
	    angular.forEach(files, function(flowFile, i){
	       var fileReader = new FileReader();
	          fileReader.onload = function (event) {
	            var uri = event.target.result;
					var image = uri;
					$ionicLoading.show({
					content: 'Loading',
					animation: 'fade-in',
					showBackdrop: true,
					maxWidth: 200,
					showDelay: 0
					});
					$.ajax({
						url: site_url+'assets/sources/appupload.php',
						data:{
							action: 'upload',
							base64: image,
							uid: user.id
						},
						cache: false,
						contentType: "application/x-www-form-urlencoded",				  
						type:"post",
						dataType:'JSON',
						success:function(response){
							$rootScope.uphotos = response.user.photos;
							usPhotos = response.user.photos;
							$rootScope.photo1 = usPhotos[0];
							$rootScope.photo2 = usPhotos[1];
							$rootScope.photo3 = usPhotos[2];
							$rootScope.photo4 = usPhotos[3];
							$rootScope.photo5 = usPhotos[4];
							$rootScope.photo6 = usPhotos[5];
							    $ionicLoading.hide();
						}
					});	                
	          };
	          fileReader.readAsDataURL(flowFile.file);
	    });
	  };

    $rootScope.uploadPhoto = function(val) {
	alang = $localstorage.getObject('alang');
	  if (window.cordova) {
	      var hideSheet = $ionicActionSheet.show({
	        buttons: [
	          { text: alang[0].text },
	          { text: alang[1].text }
	        ],
	        cancelText: alang[2].text,
	        cancel: function() {
	          },
	        buttonClicked: function(x) {
				if(x == 1){
					var options = {
						quality: 40,
						destinationType: Camera.DestinationType.DATA_URL,
						sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
						encodingType: Camera.EncodingType.JPEG,
						allowEdit : true,
					};
				}else {
					var options = {
						quality: 40,
						destinationType: Camera.DestinationType.DATA_URL,
						encodingType: Camera.EncodingType.JPEG,
						allowEdit : true,
					};
				}
				$cordovaCamera.getPicture(options).then(function(imageData) {
					var image = "data:image/jpeg;base64," + imageData;
					$.ajax({
						url: site_url+'assets/sources/appupload.php',
						data:{
							action: 'upload',
							base64: image,
							uid: user.id
						},
						cache: false,
						contentType: "application/x-www-form-urlencoded",				  
						type:"post",
						dataType:'JSON',
						success:function(response){
							$rootScope.uphotos = response.user.photos;
							usPhotos = response.user.photos;
							$scope.photo1 = usPhotos[0];
							$scope.photo2 = usPhotos[1];
							$scope.photo3 = usPhotos[2];
							$scope.photo4 = usPhotos[3];
							$scope.photo5 = usPhotos[4];
							$scope.photo6 = usPhotos[5];
						}
					});
				}, function(err) {
				  // error
				});			  
	          return true;
	        }
	      });
		} else {
			$('#uploadUserPhoto').click();
		}	      
    }	


	function userInfo(id){
		try {	
		  $scope.ajaxRequest = A.Device.get({action: 'userProfile', id: id});
		  $scope.ajaxRequest.$promise.then(function(){											
				$localstorage.setObject('user', $scope.ajaxRequest.user);	
				$rootScope.uphotos = $scope.ajaxRequest.user.photos;	
				$localstorage.setObject('usPhotos',$scope.ajaxRequest.user.photos); 
		  },
		  function(){}
		  )		 
		}
		catch (err) {
		console.log("Error " + err);
		}	
	} 
	userInfo(user.id);   			
  })

  .controller('popularityCtrl', function($state,$rootScope,$ionicViewSwitcher,$scope,A, $ionicModal,$localstorage,Navigation) {
	user = $localstorage.getObject('user');
	lang = $localstorage.getObject('lang');

	alang = $localstorage.getObject('alang');
	site_prices = $localstorage.getObject('prices');
	$scope.spotlightprice = site_prices.spotlight;
	$scope.alang = [];
	$('#ready').removeClass('hidden');
	$rootScope.logged = true;
	$rootScope.me = user;


  })  	

  .controller('SettingsCtrl', function($state,$rootScope,$ionicViewSwitcher,$ionicActionSheet,$scope,A, $ionicModal,$localstorage,Navigation) {
	user = $localstorage.getObject('user');
	lang = $localstorage.getObject('lang');
	config = $localstorage.getObject('config');
	alang = $localstorage.getObject('alang');
	site_prices = $localstorage.getObject('prices');
	$scope.spotlightprice = site_prices.spotlight;
	$scope.alang = [];
	$('#ready').removeClass('hidden');
	$rootScope.logged = true;
	$rootScope.me = user;
	$scope.newChat = false;

	$scope.ageMin = 18;
	$scope.ageMax = 99;
	$scope.range = {
		from: ag1,
		to: ag2
	};

	if(window.cordova){
		$ionicViewSwitcher.nextDirection("forward");
	} else {
		$ionicViewSwitcher.nextDirection("back");
	}

	$scope.lang = [];
	if(user.notification.fan == 1){
		$scope.likes = true;
	} else {
		$scope.likes = false;
	}
	if(user.notification.visit == 1){
		$scope.visits = true;
	} else {
		$scope.vists = false;
	}
	if(user.notification.superlike == 1){
		$scope.superlike = true;
	} else {
		$scope.superlike = false;
	}
	if(user.notification.match_m == 1){
		$scope.matches = true;
	} else {
		$scope.matches = false;
	}
	if(user.notification.message == 1){
		$scope.messages = true;
	} else {
		$scope.messages = false;
	}								
	$scope.openPrivacy = function(){
		if (window.cordova) {
			cordova.InAppBrowser.open(site_url+'index.php?page=pp', '_blank', 'location=yes');
		} else {
			window.open(site_url+'index.php?page=pp', '_blank', 'location=yes');
		}		
	}
	$scope.openTerms = function(){
		if (window.cordova) {
			cordova.InAppBrowser.open(site_url+'index.php?page=tac', '_blank', 'location=yes');
		} else {
			window.open(site_url+'index.php?page=tac', '_blank', 'location=yes');
		};			
	}
	$scope.deleteProfile = function(){
		  var hideSheet = $ionicActionSheet.show({
			buttons: [
			  { text: lang[150].text }
			],
			cancelText: alang[2].text,
			cancel: function() {
			  },
			buttonClicked: function(index) {	
				var message = user.id;
				A.Query.get({action: 'logout', query: message});
				$localstorage.setObject('user','');
				chats = [];
				matche = [];
				mylikes = [];
				myfans = [];
				cards = [];
				visitors = [];		
				$state.go('loader');
			}
		  });

	}	
	angular.forEach(alang,function(entry) {					  
	  $scope.alang.push({
		id: entry.id,
		text: entry.text
	  });
	});

	$scope.city = user.city;
	$scope.country = user.country;
	$scope.s_age = user.sage;
	if(user.looking == 1){
		$scope.gender = lang[120].text;			
	}
	if(user.looking == 2){
		$scope.gender = lang[121].text;
	}
	if(user.looking == 3){
		$scope.gender = lang[122].text;			
	}
	var l = user.looking-1;
	$scope.gender = config.genders[l].text;		
	console.log(config.genders);
	$scope.updateGender = function() {
	  var hideSheet = $ionicActionSheet.show({
		buttons: config.genders,
		cancelText: alang[2].text,
		cancel: function() {
		  },
		buttonClicked: function(index,val) {
			var gender;
			console.log(val.id);
			$scope.gender = val.text;		
			gender = val.id;	
			var message = user.id+','+gender;
			$scope.ajaxRequest34 = A.Query.get({action: 'updateGender', query: message});
			$scope.ajaxRequest34.$promise.then(function(){											
				$localstorage.setObject('user', $scope.ajaxRequest34.user);
			});				
		  return true;
		}
	  });
	}		

	if($scope.firstOpen){
		$scope.data = {};
		$scope.data.location = user.city+','+user.country;
		$scope.firstOpen = false;			
	}
	$scope.onAddressSelection = function (location) {
		$scope.data.location = location.name;
		console.log(location);
		var lat = location.geometry.location.lat();
		var lng = location.geometry.location.lng();
		var country;
		var city;

		for (var i = 0; i < location.address_components.length; i++){
		 if(location.address_components[i].types[0] == "country") {
				country = location.address_components[i].long_name;
			}
		 if(location.address_components[i].types[0] == "locality") {
				city = location.address_components[i].long_name;
			}					
		 }
		var message = user.id+','+lat+','+lng+','+city+','+country;
		$scope.ajaxRequest36 = A.Query.get({action: 'updateLocation', query: message});
		$scope.ajaxRequest36.$promise.then(function(){											
			$localstorage.setObject('user', $scope.ajaxRequest36.user);
		});				 
	};
	$scope.updateNotification = function(e,a) {
		var message = user.id+','+e+','+a;
		if(a === true){
			a = 1;
		} else {
			a = 0;
		}
		$scope.ajaxRequest = A.Query.get({action: 'updateNotification', query: message});
		$scope.ajaxRequest.$promise.then(function(){											
		});			
	};

	$scope.updateDistance = function(e) {
		var message = user.id+','+e;
		$scope.ajaxRequest3 = A.Query.get({action: 'updateSRadius', query: message});
		$scope.ajaxRequest3.$promise.then(function(){											
			$localstorage.setObject('user', $scope.ajaxRequest3.user);
		});			
	};


	$scope.updateAge = function(e,a) {
		ag1 = e;
		ag2 = a;
		var message = user.id+','+e+','+a;
		$scope.ajaxRequest31 = A.Query.get({action: 'updateAge', query: message});
		$scope.ajaxRequest31.$promise.then(function(){											
		});			
	};	
	$scope.online = onlineMeet;
	$scope.updateOnline = function() {
		if(onlineMeet == 0){
			onlineMeet = 1;
			$scope.online = onlineMeet;
		} else {
			onlineMeet = 0;
			$scope.online = onlineMeet;
		}
	};	
	$scope.goToVisitors = function(){
		$ionicViewSwitcher.nextDirection('forward'); // 'forward', 'back', etc.
		$state.go('home.visitors');		
	}		
	
	
  })
  
  .controller('VisitorsCtrl', function($scope,$ionicViewSwitcher,$ionicPlatform,$state,Navigation,$localstorage,A,$sce,$ionicScrollDelegate,$interval,currentUser) {
	url = 'visitors';
	lang = $localstorage.getObject('lang');
	if(config == ''){
		$state.go('loader');
	}
	config = $localstorage.getObject('config');
	if(window.cordova){
		$ionicViewSwitcher.nextDirection("forward");
	} else {
		$ionicViewSwitcher.nextDirection("back");
	}

	alang = $localstorage.getObject('alang');
	site_prices = $localstorage.getObject('prices');
	$scope.spotlightprice = site_prices.spotlight;
	$scope.alang = [];

	angular.forEach(alang,function(entry) {					  
	  $scope.alang.push({
		id: entry,
		text: entry.text
	  });
	});
	//ADMOB
	if(show_ad == max_ad){
		if(window.AdMob) window.AdMob.prepareInterstitial( {adId:adMobI, autoShow:true} );
		
		show_ad = 0;	
	}	
	show_ad++;	
	if(rt == ''){
		rt = new Pusher(config.pusher, {
		  encrypted: true,
		  cluster: "us2"

		});
		channel = rt.subscribe(config.pusher);		
	}	

	user = $localstorage.getObject('user');
	var aBasic = $localstorage.getObject('account_basic');
	var aPremium = $localstorage.getObject('account_premium');	
	var viewScroll = $ionicScrollDelegate.$getByHandle('userMessageScroll');	
	
	$scope.changePage = function(url,slide,val) {
		if($scope.canSeeVisitors){
			currentUser.selectedUser=val;
			$state.go(url, val); 
		}  
	};	
	
    $scope.show = 1;
	$scope.photo = user.profile_photo;
	var w = window.innerWidth;
	w = w/2;
	if(w > 200){
		w = 200;
	}
	$scope.w = w;
	$scope.noVisitors = false;
	if(user.premium == 0 && aBasic.visits == 0){
		$scope.canSeeVisitors = false;
	} else {
		$scope.canSeeVisitors = true;
	}
	$scope.max = 20;
	
	var visits = function () {
		try {
		  $scope.visitors = visitors;
		  $scope.ajaxRequest = A.Game.get({action: 'getVisitors', id: user.id});
		  $scope.ajaxRequest.$promise.then(function(){
				if($scope.ajaxRequest.visitors != null){				
					$scope.visitors = $scope.ajaxRequest.visitors;
					visitors = $scope.visitors;
				} else {
					$scope.noVisitors = true;	
					visitors = $scope.visitors;
				}	
				
		  },
		  function(){$scope.noVisitors = true;}
		  )		 
		}
		catch (err) {
			console.log("Error " + err);
		}	
	}	
	visits();
	$scope.title = alang[10].text;
  })
    
  .controller('MatchCtrl', function($scope,$ionicViewSwitcher,$ionicPlatform,$state,Navigation,$localstorage,A,$sce,$ionicScrollDelegate,$interval,currentUser) {
	user = $localstorage.getObject('user');
	lang = $localstorage.getObject('lang');
	if(config == ''){
		$state.go('loader');
	}
	config = $localstorage.getObject('config');
	alang = $localstorage.getObject('alang');
	site_prices = $localstorage.getObject('prices');
	$scope.firstmeprice = site_prices.first;
	$scope.cienmeprice = site_prices.discover;
	$scope.alang = [];

	if(window.cordova){
		$ionicViewSwitcher.nextDirection("forward");
	} else {
		$ionicViewSwitcher.nextDirection("back");
	}

	angular.forEach(alang,function(entry) {					  
	  $scope.alang.push({
		id: entry,
		text: entry.text
	  });
	});

	//ADMOB
	if(show_ad == max_ad){
		if(window.AdMob) window.AdMob.prepareInterstitial( {adId:adMobI, autoShow:true} );
		show_ad = 0;	
	}	
	show_ad++;	
	if(rt == ''){
		rt = new Pusher(config.pusher, {
		  encrypted: true,
		  cluster: "us2"

		});
		channel = rt.subscribe(config.pusher);		
	}	

	url = 'match';
	var aBasic = $localstorage.getObject('account_basic');
	var aPremium = $localstorage.getObject('account_premium');		
	var viewScroll = $ionicScrollDelegate.$getByHandle('userMessageScroll');	
	$scope.changePage = function(url,slide,val) {
		if($scope.canSeeFans || $scope.canSeeFans == false && $scope.show != 2){
			currentUser.selectedUser=val;
			$state.go(url, val); 
		}
	};	
	$scope.show = 1;
   	$scope.onTabShow = function(val,title){
		$scope.show = val;	
		$scope.title = title;		
		if(user.premium == 0 && aBasic.fans == 0 && val == 2){
			$scope.canSeeFans = false;
		} else {
			$scope.canSeeFans = true;
		}		
	    viewScroll.scrollTop(true);
	}
	$scope.photo = user.profile_photo;
	var w = window.innerWidth;
	w = w/2;
	if(w > 200){
		w = 200;
	}
	$scope.w = w;
	$scope.noMatches = false;
	$scope.noLikes = false;
	$scope.noFans = false;
	$scope.noSuperLike= false;
	
	$scope.newlikes = 0;
	$scope.newfans = 0;	
	$scope.max = 20;
	
	var matches = function () {
		try {
		  $scope.matches = matche;
		  $scope.mylikes = mylikes;
		  $scope.myfans = myfans;
		  $scope.superlikes = superlikes;
		  
		  $scope.ajaxRequest = A.Game.get({action: 'getMatches', id: user.id});
		  $scope.ajaxRequest.$promise.then(function(){
				if($scope.ajaxRequest.matches != null){				
					$scope.matches = $scope.ajaxRequest.matches;
					matche = $scope.matches;
				} else {
					$scope.noMatches = true;	
					matche = $scope.matches;
				}
				if($scope.ajaxRequest.mylikes != null){				
					$scope.mylikes = $scope.ajaxRequest.mylikes;
					mylikes = $scope.mylikes;
				} else {
					$scope.noLikes = true;	
					mylikes = $scope.mylikes;
				}
							
				if($scope.ajaxRequest.myfans != null){				
					$scope.myfans = $scope.ajaxRequest.myfans;
					myfans = $scope.myfans;
				} else {
					$scope.noFans = true;	
					myfans = $scope.myfans;
				}							
		  },
		  function(){}
		  )		 
		}
		catch (err) {
			console.log("Error " + err);
		}	
	}	
	matches();
	$scope.title = alang[11].text;
  })
  
  
  

  .controller('MatchesCtrl', function($scope,$rootScope,$filter,$timeout,$ionicPlatform,$ionicViewSwitcher,$ionicListDelegate,$state,Navigation,$localstorage,A,$sce,$ionicScrollDelegate,$interval,currentUser) {
	$interval.cancel(chatInterval);
	user = $localstorage.getObject('user');
	config = $localstorage.getObject('config');	
	url = 'messages';
	current_user_id = 0;
	alang = $localstorage.getObject('alang');
	site_prices = $localstorage.getObject('prices');
	$rootScope.me = user;
	$scope.spotlightprice = site_prices.spotlight;
	$scope.alang = [];
	$('#ready').removeClass('hidden');
	if(chats == ''){
		$scope.loader = true;
	}
	var aBasic = $localstorage.getObject('account_basic');
	var aPremium = $localstorage.getObject('account_premium');	
	if(rt == ''){
		rt = new Pusher(config.pusher, {
		  encrypted: true,
		  cluster: "us2"

		});
		channel = rt.subscribe(config.pusher);		
	}	
	$scope.spot_price = site_prices.spotlight;

	//ADD TO SPOTLIGHT
	$scope.openSpot = function(){
		$scope.showSpot = true;
	}
	$scope.cancelSpot = function(){
		$scope.showSpot = false;	
	}
	$scope.addToSpotBtn = function(){
		user.credits = parseInt(user.credits);
		if(user.credits < site_prices.spotlight){
			$scope.openCreditsModal("'"+user.profile_photo+"'");
		} else {
			$scope.showMe = false;
			addToSpotlight();
		}
	}	
	var addToSpotlight = function () {
		try {	
		  $scope.ajaxRequest2 = A.Query.get({action: 'addToSpotlight', query: user.id});
		  $scope.ajaxRequest2.$promise.then(function(){	
		  	$rootScope.spotlight = [];
			spot();
		  },
		  function(){}
		  )		 
		}
		catch (err) {
			console.log("Error " + err);
		}	
	}	
	var w = window.innerWidth;
	w = w/3;
	if(w > 120){
		w = 120;
	}

	$scope.w = w;	
	angular.forEach(alang,function(entry) {					  
	  $scope.alang.push({
		id: entry,
		text: entry.text
	  });
	});
	var viewScroll = $ionicScrollDelegate.$getByHandle('userMessageScroll');	
	if(window.cordova){
		$ionicViewSwitcher.nextDirection("forward");
	} else {
		$ionicViewSwitcher.nextDirection("back");
	}

	$scope.showBoostDiscover = false;
    var n = new Date().getTime() / 1000;
    console.log(user.last_access + ' - ' + n);
    if(user.last_access > n && user.discover > 0){
    	$scope.showBoostDiscover = false;
    } else {
    	$scope.showBoostDiscover = true;
    }

	$scope.mymatches = [];
	$scope.mylikes = [];
	$scope.myfans = [];
	var matches = function () {
		try {
			$scope.ajaxRequest = A.Game.get({action: 'getMatches', id: user.id});
		  	$scope.ajaxRequest.$promise.then(function(){
				if($scope.ajaxRequest.matches != null){				
					$scope.mymatches = $scope.ajaxRequest.matches;
				}
				if($scope.ajaxRequest.mylikes != null){				
					$scope.mylikes = $scope.ajaxRequest.mylikes;
				}		
				if($scope.ajaxRequest.myfans != null){				
					$scope.myfans = $scope.ajaxRequest.myfans;
				}						
		  },
		  function(){}
		  )		 
		}
		catch (err) {
			console.log("Error " + err);
		}	
	}	
	matches();	



	$scope.changePage = function(url,slide,val) {
		currentUser.selectedUser=val;
		if(window.cordova){
			$state.go(url, val); 
		} else {
			$state.go(url,slide, val); 		
		} 		 
	};	
    $scope.show = 1;
	$scope.loadM = parseInt(10);
	$scope.tab1 = 'is-active';
	$scope.showExtra = false;
	$scope.canSeeFans = true;
   	$scope.onTabShow = function(val){
		if(user.premium == 0 && aBasic.fans == 0 && val == 5){
			$scope.canSeeFans = false;
		} else {
			$scope.canSeeFans = true;
		}	   		
		$scope.tab1 = '';   		
		$scope.tab2 = '';
		$scope.tab3 = '';	
		$scope.tab4 = '';
		$scope.tab5 = '';					
		$scope.tab6 = '';					
		if(val == 1){
		 $scope.all = true;
		 $scope.unread = false;
		 $scope.online = false;	
		 $scope.showExtra = false;	
		 $scope.extra = [];
		 viewScroll.scrollTop(true);
		 $scope.loadM = parseInt(10);
		 $scope.tab1 = 'is-active';
		 $scope.$broadcast('scroll.infiniteScrollComplete');
		}
		if(val == 2){
		 $scope.all = false;
		 $scope.unread = true;
		 $scope.online = false;		 
		 $scope.showExtra = false;
		 $scope.extra = [];		 
		 viewScroll.scrollTop(true);
		 $scope.loadM = parseInt(10);
		 $scope.tab2 = 'is-active';
		 $scope.$broadcast('scroll.infiniteScrollComplete');
		}
		if(val == 3){
		 $scope.all = false;
		 $scope.unread = false;
		 $scope.online = true;
		 $scope.showExtra = false;
		 $scope.extra = [];		 
		 viewScroll.scrollTop(true);
		 $scope.loadM = parseInt(10);
		 $scope.tab3 = 'is-active';	
		 $scope.$broadcast('scroll.infiniteScrollComplete');	 
		}
		if(val == 4){
		 $scope.all = false;
		 $scope.unread = false;
		 $scope.online = false;
		 $scope.showExtra = true;			
		 $scope.extra = $scope.mymatches;
		 viewScroll.scrollTop(true);
		 $scope.loadM = parseInt(10);
		 $scope.tab4 = 'is-active';	
		 $scope.$broadcast('scroll.infiniteScrollComplete');
		}
		if(val == 5){
		 $scope.all = false;
		 $scope.unread = false;
		 $scope.online = false;
		 $scope.showExtra = true;		
		$scope.extra = $scope.myfans;
		 viewScroll.scrollTop(true);
		 $scope.loadM = parseInt(10);
		 $scope.tab5 = 'is-active';	
		 $scope.$broadcast('scroll.infiniteScrollComplete');	 
		}
		if(val == 6){
		 $scope.all = false;
		 $scope.unread = false;
		 $scope.online = false;
		 $scope.showExtra = true;		
			$scope.extra = $scope.mylikes;
		 viewScroll.scrollTop(true);
		 $scope.loadM = parseInt(10);
		 $scope.tab6 = 'is-active';	
		 $scope.$broadcast('scroll.infiniteScrollComplete');	 
		}										
	}
	$scope.searching = false;
   $scope.adn = {};
	 $scope.srchchange = function () {

        $scope.matches = null;
        var filtervalue = [];
		var serachData= chats;
		$scope.searching = true;
        for (var i = 0; i <serachData.length; i++) {

            var fltvar = $filter('uppercase')($scope.adn.item);
            var jsval = $filter('uppercase')(serachData[i].name);

            if (jsval.indexOf(fltvar) >= 0) {
                filtervalue.push(serachData[i]);
            }
        }
        if($scope.adn.item.length == 0){
			$scope.ressetserach();
        }
        $scope.matches = filtervalue;

    };

    $scope.ressetserach = function () {
        $scope.adn.item = "";
        $scope.matches = chats;
        $scope.searching = false;
    }

	//ADMOB
	if(show_ad == max_ad){
		if(window.AdMob) window.AdMob.prepareInterstitial( {adId:adMobI, autoShow:true} );
		
		show_ad = 0;	
	}	
	show_ad++;	

	$scope.unread = false;
	$scope.online = false;	
	$scope.all = true;	
	
	var chat = function () {
		try {
		  $scope.matches = chats;
		  $scope.ajaxRequest2 = A.Game.get({action: 'getChat', id: user.id});
		  $scope.ajaxRequest2.$promise.then(function(){
				$scope.matches = $scope.ajaxRequest2.matches;
				chats = $scope.matches;
				$scope.loader = false;
				$scope.contacts = 1;
				console.log(chats);
		  },
		  function(){ $scope.loader = false; }
		  )		 
		}
		catch (err) {
			console.log("Error " + err);
		}	
	}	
	chat();

	$scope.onItemDelete = function(item) {
		var query = user.id+','+item.id;
		A.Query.get({action: 'del_conv' ,query: query});	
		$('.item-content').css({
		  'transform'         : 'translate3d(0px,0px,0px)'
		});
	};

	$scope.loaderMore = false;
	$scope.loadMore = function(){
		$scope.loaderMore = true;
		$timeout(function(){
			$scope.loaderMore = false;
			$scope.loadM = $scope.loadM + 10;		
		}, 300);		

	}	
	$scope.shouldShowDelete = true;
	$scope.listCanSwipe = true;

	$rootScope.spotlight = [];
		//SPOTLIGHT
		var spot = function () {
			try {		  
			  $scope.ajaxRequest5 = A.Game.get({action: 'spotlight', id: user.id});
			  $scope.ajaxRequest5.$promise.then(function(){											
					spotlight = $scope.ajaxRequest5.spotlight;
					console.log(spotlight);
					
					$rootScope.spotlight = spotlight;
					
			  },
			  function(){}
			  )		 
			}
			catch (err) {
				console.log("Error " + err);
			}	
		}
		if(spotlight == ''){
			spot();
		}	else {
			$rootScope.spotlight = spotlight;	
			spot();
		}	
		
  })

  .controller('MessagingCtrl', function($state,$scope,$rootScope,$ionicPlatform,$interval,$ionicViewSwitcher,A, $stateParams, Giphy, $ionicScrollDelegate, $timeout, $ionicActionSheet,Navigation,currentUser,$localstorage,$ionicHistory,$ionicPopup,$cordovaCamera) {	
	user = $localstorage.getObject('user');
	alang = $localstorage.getObject('alang');
	config = $localstorage.getObject('config');
	$rootScope.appGifts = $localstorage.getObject('gifts');	
	//currentUser.selectedUser = user;
	if(currentUser.selectedUser){
		chatUser = currentUser.selectedUser;
	} else {
		$state.go('loader');
	}

	$scope.photo = currentUser.selectedUser.photo;
	
	if(currentUser.selectedUser.photo === undefined){
		$scope.photo = currentUser.selectedUser.profile_photo;
	}	

	if(window.cordova){
		$ionicViewSwitcher.nextDirection("forward");
	} else {
		$ionicViewSwitcher.nextDirection("back");
	}
	
	url = 'inchat';
	if (window.cordova) {
		$scope.app = true;
	}
	var gifts = $localstorage.getObject('gifts');
	alang = $localstorage.getObject('alang');
	site_prices = $localstorage.getObject('prices');
	$scope.dailychatprice = site_prices.chat;
	$scope.alang = [];
	$scope.focusInput = false;
	$scope.wait = false;
	//ADMOB
	if(show_ad == max_ad){
		if(window.AdMob) window.AdMob.prepareInterstitial( {adId:adMobI, autoShow:true} );
		
		show_ad = 0;	
	}
	show_ad++;
	angular.forEach(alang,function(entry) {					  
	  $scope.alang.push({
		id: entry,
		text: entry.text
	  });
	});
	$scope.gifts = gifts;
	$scope.sendGiftShow = false;
	

	$scope.buyDailyChat = function(){
		user.credits = parseInt(user.credits);
		if(site_prices.chat > user.credits){
			$scope.openCreditsModal();
		} else {
			var ma = user.id + ','+ site_prices.chat;
			$scope.chatLimit = false;
			try {	
			  $scope.ajaxRequest = A.Query.get({action: 'chat_limit', query: ma});
			  $scope.ajaxRequest.$promise.then(function(){		
			  	$localstorage.setObject('user',$scope.ajaxRequest.user);
			  },
			  function(){}
			  )		 
			}
			catch (err) {
				console.log("Error " + err);
			}
		}
	};
	

	$scope.processFiles = function(files){
	angular.forEach(files, function(flowFile, i){
	   var fileReader = new FileReader();
	      fileReader.onload = function (event) {
	        var uri = event.target.result;
				var image = uri;
				$scope.$apply(function () {
				  $scope.nmessages.push({
					isMe: true,
					seen:1,
					type: 'image',
					body: image
				  });
				});
				viewScroll.scrollBottom(true);   			
				con = true;
				$.ajax({
					url: site_url+'assets/sources/appupload.php',
					data:{
						action: 'sendChat',
						base64: image,
						uid: user.id,
						rid: currentUser.selectedUser.id
					},
					cache: false,
					contentType: "application/x-www-form-urlencoded",				  
					type:"post",
					dataType:'JSON',
					success:function(){
					}
				});	                
	      };
	      fileReader.readAsDataURL(flowFile.file);
	});
	};	

	$scope.sendPhoto = function(x){
		if (window.cordova) {
		if(x == 1){
			var options = {
				quality: 40,
				destinationType: Camera.DestinationType.DATA_URL,
				sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
				encodingType: Camera.EncodingType.JPEG,
				allowEdit : false,
			};
		}else {
			var options = {
				quality: 40,
				destinationType: Camera.DestinationType.DATA_URL,
				encodingType: Camera.EncodingType.JPEG,
				allowEdit : false,
			};
		}

		$cordovaCamera.getPicture(options).then(function(imageData) {
			var image = "data:image/jpeg;base64," + imageData;
			  $scope.nmessages.push({
				isMe: true,
				seen:1,
				type: 'image',
				body: image
			  });
			$.ajax({
				url: site_url+'assets/sources/appupload.php',
				data:{
					action: 'sendChat',
					base64: image,
					uid: user.id,
					rid: currentUser.selectedUser.id
				},
				cache: false,
				contentType: "application/x-www-form-urlencoded",				  
				type:"post",
				dataType:'JSON',
				success:function(response){
					
				}
			});
		}, function(err) {
		  // error
		});	
		} else {
			$('#uploadSendPhoto').click();
		}	
	}
	$scope.sendGift = function(icon,price){
		$scope.gift_icon = icon;
		$scope.gift_price = price;
		user.credits = parseInt(user.credits);
		if(user.credits < price){
			$scope.openCreditsModal("'"+user.profile_photo+"'");
		} else {
			$scope.sendGiftShow = true;
		}
	}
	$scope.cancelGift = function(){		
		$scope.sendGiftShow = false;
	}	
	$scope.changePage = function(url,slide,val) {
		$state.go(url, val);  
	};
	$interval.cancel(chatInterval);

	/*
	$scope.goToChat = function(){
		$ionicViewSwitcher.nextDirection('back'); // 'forward', 'back', etc.
		$state.go('home.matches');		
	}
	*/
	$scope.actions = true;
	$scope.visible = function(val){
		if(val == 1){
			$scope.actions = false;	
		} else {
			$scope.isGifShown = false;
		}
	}
	var bIds = {};	
	
	$scope.showm = 15;
	
	$scope.loadMoreMen = function(more){
		var total = more + $scope.showm;
		var totalMe = $scope.totalMen - more;
		if(totalMe <= 0 ){
			totalMe = 0;	
			$scope.moreMen = false;
		}
		$scope.totalMen = totalMe;
		$scope.showm = total;
	}
	
	var w = window.innerWidth;
	w = w/2;
	if(w > 200){
		w = 200;
	}
	$scope.w = w;
	var premium = 0;
	var blocked = 0;
	$scope.maxDaily = false;
	$scope.chatLimit = false;
    var viewScroll = $ionicScrollDelegate.$getByHandle('userMessageScroll');
	$scope.messages = [];
	$scope.nmessages = [];   
	$scope.loader = true; 
	var me = 0;
	var you = 0;
	$scope.wait = false;
	var getChat = function (id) {
		try {	
		  $scope.ajaxRequest = A.Chat.get({action: 'userChat', uid1: user.id, uid2: id});
		  $scope.ajaxRequest.$promise.then(function(){		
		  $scope.messages=$scope.ajaxRequest.chat;
		  premium = $scope.ajaxRequest.premium;
		  blocked = $scope.ajaxRequest.blocked;
			angular.forEach($scope.ajaxRequest.chat,function(entry) {					  
				if(entry.isMe == true){
					me++;
				} else {
					you++;
				}
			});			  
			if(me >= 2 && you == 0){
				$scope.wait = true;
			}
		  if(blocked == 1){
		   var confirmPopup = $ionicPopup.confirm({
			 title: alang[12].text+' '+ currentUser.selectedUser.name,
			 template: currentUser.selectedUser.name +' ' + alang[13].text
		   });
		   confirmPopup.then(function(res) {
			 if(res) {
				$ionicHistory.goBack();
			 }
		   });				  
		  }
		  if(premium == 1){
			 $scope.chatLimit = true;
		  }
			if ($scope.messages === undefined || $scope.messages.length == 0) {
			  $scope.focusInput = true;
			  $scope.loader =false;	
			  return false;
			}
		  if($scope.messages.length > 15){
			$scope.moreMen = true;
			$scope.totalMen = $scope.messages.length - 15;
		  }

		  $scope.loader = false;
		  viewScroll.scrollBottom(true);
		  },
		  function(){

		  }
		  )		 
		}
		catch (err) {
			
			console.log("Error " + err);
		}	
	}

	var sendMessage = function (message) {

		try {	
			if ($scope.messages === undefined || $scope.messages.length == 0 && $scope.nmessages === undefined || $scope.nmessages.length == 0) {
				 A.Query.get({action: 'today', query: user.id});
			}
		  
		  $scope.ajaxRequest2 = A.Query.get({action: 'sendMessage', query: message});
		  $scope.ajaxRequest2.$promise.then(function(){	
			
		  },
		  function(){}
		  )		 
		}
		catch (err) {
			console.log("Error " + err);
		}	
	} 	

	
	$scope.name = currentUser.selectedUser.name;

	$scope.age = currentUser.selectedUser.age;
	$scope.city = currentUser.selectedUser.city;
	$scope.id = currentUser.selectedUser.id;
	current_user_id = currentUser.selectedUser.id;
	$scope.status = false;
	$scope.chatLimit = false;
	getChat(currentUser.selectedUser.id);	

	if(currentUser.selectedUser.status == 1){
		$scope.status = true;
	}	
    $scope.isNew = false;
    $scope.gifs = [];
    $scope.gifQuery = '';
    $scope.isGifShown = false;
    $scope.isGiftShown = false;
    $scope.isGifLoading = false;


    $scope.message = '';
	var sendNewChat = 0;

	var tt = true;
	var sent = false;

	function updateLastTypedTime() {
	    lastTypedTime = new Date();
	}	
	

	$scope.writing = false;


	var textarea = $('#chat-input-textarea');
	var typingDelayMillis = 750; // how long user can "think about his spelling" before we show "No one is typing -blank space." message
	updateLastTypedTime();
	$scope.refreshTypingStatus = function(val) {
	    if (val.length < 2) {
			var message = user.id+','+currentUser.selectedUser.id+','+0;
			A.RT.get({action: 'typing', query: message});
			console.log('no typing');
	    } else {
	    	var t = new Date().getTime() - lastTypedTime.getTime();
	    	t = parseInt(t);
	    	if( t > typingDelayMillis){
		    	updateLastTypedTime();
		    	console.log('typing more');
		    	var message = user.id+','+currentUser.selectedUser.id+','+1;
				A.RT.get({action: 'typing', query: message});
			}	    	
	    	console.log('waiting');
	    }
	}
	//setInterval(refreshTypingStatus, 1000);
	//textarea.keypress(refreshTypingStatus);
	//textarea.blur(refreshTypingStatus);
	var typing = 'typing'+user.id+chatUser.id;
	channel.unbind();
    channel.bind(typing, function(data) {
    	$scope.$apply(function () {
	    	if(data.t == 1){
	    		$scope.writing = true;  
	    	} else {
				$scope.writing = false; 
	    	}
    	})  
    });	
    	
	var event = 'chat'+user.id+chatUser.id;
    channel.bind(event, function(data) {
	  sendNewChat = $scope.nmessages.length + 1;
		$scope.$apply(function () {
			$scope.nmessages.push({
				isMe: false,
				seen:1,
				type: data.type,
				body: data.message
			});
			$scope.writing = false; 	      
	  	})
		if (window.cordova) {
			$rootScope.playSound('inchat');
		} else {
			//$('#chatSound')[0].play();
		}
	  	you++;
		$scope.wait = false;
	  viewScroll.scrollBottom(true);      
    });		

    $scope.sendText = function(m) {
		sent = true;
		sendNewChat = $scope.nmessages.length + 1;
		$scope.nmessages.push({
			isMe: true,
			seen:0,
			type: 'text',
			body: m
		});
		var send = user.id+','+currentUser.selectedUser.id+','+user.profile_photo+','+user.first_name+','+m+',text';      
		var message = user.id+','+currentUser.selectedUser.id+','+m+',text';
		A.RT.get({action: 'message', query: send});	
		var t = user.id+','+currentUser.selectedUser.id+','+0;
		A.RT.get({action: 'typing', query: t});
		console.log('no typing');	  
		viewScroll.scrollBottom(true);
		me++;
		if(me >= 2 && you == 0){
			$scope.wait = true;
		} else {
			$scope.wait = false;
		}	  
		sendMessage(message);
    }

    $scope.newGif = function(newValue) {
      if (newValue.length) {
        $scope.isGifLoading = true;
        $scope.gifs = [];

        Giphy.search(newValue)
          .then(function(gifs) {
            $scope.gifs = gifs;
            $scope.isGifLoading = false;
          })
      } else {
        _initGiphy();
      }
    }

    $scope.sendGif = function(imageUrl) {
      $scope.nmessages.push({
        isMe: true,
        type: 'text',
        body: '<img src="'+imageUrl+'"/>'
      });
      var send = user.id+','+currentUser.selectedUser.id+','+user.profile_photo+','+user.first_name+','+imageUrl+',image';      
	  A.RT.get({action: 'message', query: send});	      
	  var message = user.id+','+currentUser.selectedUser.id+','+imageUrl+',image';
	  sendMessage(message);
      $scope.cmen = '';
	  $scope.isGifShown = false;
	  viewScroll.scrollBottom(true);
    }
	
    $scope.sendGiftBtn = function(imageUrl,price) {
	  var m = '<img src="'+imageUrl+'"/>';
      $scope.nmessages.push({
        isMe: true,
        type: 'text',
        body: '<img src="'+imageUrl+'"/>'
      });
      var send = user.id+','+currentUser.selectedUser.id+','+user.profile_photo+','+user.first_name+','+imageUrl+',image';      
	  A.RT.get({action: 'message', query: send});      
	  var message = user.id+','+currentUser.selectedUser.id+','+m+',gift,'+price;
	  sendMessage(message);
      $scope.cmen = '';
	  $scope.isGiftShown = false;
	  viewScroll.scrollBottom(true);
    }

    $scope.openGiphy = function() {
	if($scope.isGifShown == true){
		$scope.isGifShown = false; 
	} else {
  		$scope.isGifShown = true; 		
	}
	$scope.isGiftShown = false;      
	$scope.actions = true;
	$scope.message = '';
    }
    $scope.openGift = function() {
	if($scope.isGiftShown == true){
		$scope.isGiftShown = false; 
	} else {
  		$scope.isGiftShown = true; 		
	}
	  $scope.isGifShown = false;      
	  $scope.actions = true;
      $scope.message = '';
    }

    $rootScope.showStickers = false;
    $scope.openStickers = function() {
	if($rootScope.showStickers == true){
		$rootScope.showStickers = false; 
	} else {
  		$rootScope.showStickers = true; 		
	}
	  $scope.isGifShown = false;      
	  $scope.actions = true;
      $scope.message = '';
    }    	
	
    $scope.closeGift = function() {
      $scope.isGiftShown = false;
    }		
	
    $scope.closeGiphy = function() {
      $scope.isGifShown = false;
      $scope.message = '';
    }	

    var _scrollBottom = function(target) {
      target = target || '#type-area';

      viewScroll.scrollBottom(true);
      _keepKeyboardOpen(target);
      if ($scope.isNew) $scope.isNew = false;
    }

    // Warning: Demo purpose only. Stay away from DOM manipulating like this
    var _keepKeyboardOpen = function(target) {
      target = target || '#type-area';

      txtInput = angular.element(document.body.querySelector(target));
      console.log('keepKeyboardOpen ' + target);
      txtInput.one('blur', function() {
        console.log('textarea blur, focus back on it');
        txtInput[0].focus();
      });
    }


    // Show the action sheet
    $scope.showUserOptions = function() {
      var hideSheet = $ionicActionSheet.show({
		titleText: alang[14].text,									 
        buttons: [
          { text: alang[15].text },
          { text: alang[16].text },
          { text: alang[17].text +' '+currentUser.selectedUser.name }
        ],
        cancelText: alang[2].text,
        cancel: function() {
            // add cancel code..
          },
        buttonClicked: function(index) {
			if(index == 0){
				$rootScope.openProfileModal(currentUser.selectedUser.id,currentUser.selectedUser.name,$scope.photo,currentUser.selectedUser.age,currentUser.selectedUser.city);
			}
			if(index == 1){
				var query = user.id+','+currentUser.selectedUser.id;
				A.Query.get({action: 'del_conv' ,query: query});
				$state.go('home.matches');
			}
			if(index == 2){

				   var confirmPopup = $ionicPopup.confirm({
					 title: alang[17].text+' '+ currentUser.selectedUser.name,
					 template: alang[18].text +' '+ currentUser.selectedUser.name +'?'
				   });
				
				   confirmPopup.then(function(res) {
					 if(res) {
						var query = user.id+','+currentUser.selectedUser.id;
						A.Query.get({action: 'block' ,query: query});
						setTimeout(function(){
							$state.go('home.matches');
						},550);
					 } else {
					   
					 }
				   });
				 };	
			
          return true;
        }
      });
    }

    // Onload
    var _initGiphy = function() {
      Giphy.trending()
        .then(function(gifs) {
          $scope.gifs = gifs;
        });
    }
    _initGiphy();
  })
  
