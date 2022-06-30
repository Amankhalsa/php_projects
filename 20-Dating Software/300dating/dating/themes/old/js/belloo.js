user_info.credits = parseInt(user_info.credits);
var game_array = [];
var meet_age_array = user_info.s_age.split(",");
var meet_age = meet_age_array[0]+','+meet_age_array[1];
var meet_gender = user_info.s_gender;
var meet_radius = user_info.s_radius;
var meet_online = 0;
var meet_limit = 0;
var height_2 = $(window).height();
var backspace_alert = 0;
var searchIndex = [];
var emojiInit = false;
var d_url = 'about';
var offset;
var globalTimeout = null;
var in_videocall = false;
var search_users = false;
var called = false;	
var peer;
var payment_method = 0;
var video_user = 0;
var meet_pages = 0;	
var videocall_user = 0;	
var sec = 0;
var gift_price = 0;
var photos_count = 0;	
var timer;
var callSound;
var profile_url;
var current_user_chat;
var current_user;
var user_name;
var title = 0;	
var my_profile = 0;		
var galleria_photos;
var noti = 0;
var profile_slider_open = false;
var slider = 0;
var lastTypedTime = new Date(0);
emojione.ascii = true;
$(document).keyup(function(e) {
  if (e.keyCode === 27) {
	slider.classList.remove('opened');
	slider.classList.add('closed');
	$('.close-slider-btn').hide();
  }
});	
$('.grayScale').hover(function(){
	$(this).removeClass('grayScale'); 
  },function(){
	$(this).addClass('grayScale'); 
});
function closeSlider(){
	if ($('.slider-profile').hasClass('opened')) {
		slider.classList.add('closed');
		slider.classList.remove('opened');
		$('.close-slider-btn').hide();
	}	
}
slider = document.querySelector('.slider-profile');
var getRandomItem = function (list) {
  return Math.floor(Math.random()*list.length);
}
var Notifications = function(data) {
  this.name = data.name;
  this.message = data.message;
  this.picture = data.icon;
  this.elem;
  this.duration = 4000;
  this.create();
  this.animOptions = {
    duration: 400,
    easing: 'easeInOut'
  }
  this.show = function() {
    $(this.elem).velocity(
      {
        opacity: [1, 0],
        marginTop: [0, 20]
      }, this.animOptions
    );
    this.hide();
  }
  this.hide = function() {
    var opts = this.animOptions;
    opts['delay'] = this.duration;
    opts['display'] = 'none';
    $(this.elem).velocity(
      {
        opacity: [0, 1],
        marginTop: [-75, 0]
      }, opts
    );
  }
};
Notifications.prototype.create = function() {
  var box =
      document.createElement('div');
    box.classList.add('n-box');
    var close =
      document.createElement('div');
    close.classList.add('n-close');
    close.innerHTML = '';
    var picture =  document.createElement('img');
    picture.classList.add('n-picture');
    picture.src = this.picture;
    var body = 
      document.createElement('div');
    body.classList.add('n-body');
    var message = document.createElement('span');
    message.classList.add('n-message');
    message.innerHTML = this.message;
    box.appendChild(picture);
    box.appendChild(message);
    var wrapper = document.getElementById('middleContent'); 
    wrapper.appendChild(box);
    $('#middleContent').show();
    this.elem = box;
}
var Webnotifications = [];
function pushNotif(data){
   Notification.requestPermission(function(log) {
   	console.log(log);
      if (log == "granted") {
         var n = new Notification( data.name,{ 
            body: data.message,
            icon : data.icon
         });
			n.onclick = function(){
				window.location.href = site_url()+'chat/'+data.id+'/'+data.name;
				window.focus();
				n.close();
			};         
         } else {
          var n = new Notifications(data);
		  n.show();
		  Webnotifications.push(n);         	
         }
      });
};
var typingDelayMillis = 750; // how long user can "think about his spelling" before we show "No one is typing -blank space." messag
var t = false;
var gUrl = request_source()+'/rt.php';
var rtnotification = 'notification'+user_info.id;
channel.bind(rtnotification, function(data) {
	console.log(data);
	if(data.notification_chat != false){	   
		$('#usersFriends').html(data.notification_chat);
		scroller();
		profilePhoto();
		console.log(current_user_id);
		if(data.id == current_user_id){
			$('[data-chat]').removeClass('brick--outline');
			$('#user'+data.id).addClass('brick--outline');	
			$('#mark'+data.id).remove();				
		}			
		if(data.id != current_user_id){	
			$('#notiSound')[0].play();		
			var a = parseInt(data.unread);								  
			title = a;
			$('#chatCount').text(title); 
			$('#chatCount').fadeIn();
			$('#user'+current_user_id).addClass('brick--outline');	
			document.title = '( '+title+' ) '+ site_title();
			console.log(data);
			pushNotif(data);			
		}
	}
});	
var rtvisit = 'visit'+user_info.id;
channel.bind(rtvisit, function(data) {	
	pushNotif(data);						
});	
var rtlike = 'like'+user_info.id;
channel.bind(rtlike, function(data) {	
	pushNotif(data);						
});	
switch (url) {
	case "profile":	
		if(mobile == true){
			startGalleria(profile_user_photos);	
			privateLinks();
			$("#block-mobile").click(function(){ reportUser(profile_info.id,'"'+profile_info.name+'"','"'+profile_info.profile_photo+'"'); });
		}
		setTimeout(function(){
			profileLinks();
			game_btns2();
		},450);
	break;
	case "chat":
		$('#r_id').val(profile_info.id);
		$('#rid').val(profile_info.id);
		current_user = profile_info.id;
		current_user_id = profile_info.id;
		user_name = profile_info.name;	
		$('#user'+profile_info.id).addClass('brick--outline');				
		chatMessage();
		videocallBtn();
		giftBtn();
	break;
	case "messages":
	break;		
	case "discover":			
		game_start();
		game_btns2();				
	break;
	case 'meet':
		meetPagination();
		meetFilter();
		filterBtn();				
	break;
	case "settings":			
		profileForms();				
	break;
	case "mobile_photos":
	  managePhotos();
	  $('[data-mobile-edit-photo]').click(function() {    
		$('.add-photo').fadeIn(300);
		setTimeout(function(){
		   $('.btn').addClass('animation')      
		},10)      
	  });  
	  $('.add-photo').click(function(){
		setTimeout(function(){
		  $('.add-photo .btn').addClass('hide');
		  $('.btn').removeClass('hide');
		  setTimeout(function(){
			$('.add-photo').fadeOut(300);       
		  },300) 
		},10)   
		$('.btn').removeClass('animation');     
	  });		
	break;
	case "fans":
		if(mobile == true){
			$('a').each(function(){
				var href = $(this).attr('href');
				var re = href.replace('profile','m_profile');
				$(this).attr('href',re);
			});
		}
	break;
	case "visits":
		if(mobile == true){
			$('a').each(function(){
				var href = $(this).attr('href');
				var re = href.replace('profile','m_profile');
				$(this).attr('href',re);
			});
		}
	break;		
	case "popular":
	break;	
	case "matches":
		if(mobile == true){
			$('a').each(function(){
				var href = $(this).attr('href');
				var re = href.replace('profile','m_profile');
				$(this).attr('href',re);
			});
		}
	break;			
	default:			
	break;
}	
function menuLinks(){
	$('[data-murl]').click(function(){
		var murl = $(this).attr('data-murl');
		var menu = $(this);
		if ($('.slider-profile').hasClass('opened')) {
			slider.classList.add('closed');
			slider.classList.remove('opened');
			$('.close-slider-btn').hide();
		}		
	    $.ajax({
	        url: request_source()+'/belloo.php', 
	        data: {
	            action:"online_now"
	        },  
	        type: "post",
	        success: function(response) {
	            $('.chat__wrapper').html(response.r);
	            $('#onlineFriendsCount').text(response.total)
	        }
	    });  
		switch (murl) {
			case "meet":	
				$('#data-content').css("opacity","0.5");
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"meet_back"						
					},	
					type: "post",			
					success: function(response) {
						$('#data-content').html(response);
						filterBtn();	
						scroller();
						profilePhoto();
						meetFilter();
						meetPagination();	
						window.history.pushState("meet",site_title(),site_config.site_url+'meet');							
						$('#data-content').css("opacity","1");							
					},
				});				
			break;
			case "popular":	
				$('#data-content').css("opacity","0.5");
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"popular"						
					},	
					type: "post",			
					success: function(response) {
						$('#data-content').html(response);	
						scroller();
						profilePhoto();
						window.history.pushState("populars",site_title(),site_config.site_url+"popular");							
						$('#data-content').css("opacity","1");							
					},
				});				
			break;
			case "credits":	
				$('#data-content').css("opacity","0.5");
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"credits"						
					},	
					type: "post",			
					success: function(response) {
						$('#data-content').html(response);	
						scroller();
						profilePhoto();
						window.history.pushState("populars",site_title(),site_config.site_url+"credits");							
						$('#data-content').css("opacity","1");							
					},
				});				
			break;
			case "premium":	
				$('#data-content').css("opacity","0.5");
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"premium"						
					},	
					type: "post",			
					success: function(response) {
						$('#data-content').html(response);	
						scroller();
						profilePhoto();
						window.history.pushState("populars",site_title(),site_config.site_url+"credits");							
						$('#data-content').css("opacity","1");	
						$('[data-premium-send]').on('click', function(e){
							 e.preventDefault();
							var price = $(this).attr('data-price');
							var days = $(this).attr('data-premium');
							$('#payment-custom3').val(user_info.id+','+days);
							$('#payment-amount3').val(price);
							$('#payment-name3').val(site_config.name + ' - ' + days + ' ' + site_lang[332]['text']);	
							$('#buy-premium').submit();
						});												
					},
				});				
			break;
			case "chat":	
				$('#data-content').css("opacity","0.5");
				title = 0;
				$('#chatCount').text(title); 
				$('#chatCount').hide();					
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"chat-menu"						
					},	
					type: "post",			
					success: function(response) {
						$('#data-content').html(response);
						if(noChat){						
						} else {
							scroller();
							profilePhoto();
							chatMessage();
							game_btns2();
							videocallBtn();
							giftBtn();
							$('#user'+profile_info.id).addClass('brick--outline');							
							window.history.pushState("",site_title(),site_config.site_url+"chat");							
							$('#data-content').css("opacity","1");
						}								
					},
				});				
			break;				
			case "popularity":	
				$('#data-content').css("opacity","0.5");
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"popularity"						
					},	
					type: "post",			
					success: function(response) {
						$('#data-content').html(response);	
						scroller();
						profilePhoto();
						window.history.pushState("populars",site_title(),site_config.site_url+"credits");							
						$('#data-content').css("opacity","1");							
					},
				});				
			break;										
			case "fans":	
				$('#data-content').css("opacity","0.5");
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"fans"						
					},	
					type: "post",			
					success: function(response) {
						$('#data-content').html(response);	
						scroller();
						profilePhoto();
						window.history.pushState("fans",site_title(),site_config.site_url+"fans");							
						$('#data-content').css("opacity","1");							
					},
				});				
			break;
			case "visits":	
				$('#data-content').css("opacity","0.5");
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"visits"						
					},	
					type: "post",			
					success: function(response) {
						$('#data-content').html(response);	
						scroller();
						profilePhoto();
						$('.videocall').html('<i class="mdi-action-settings"></i>');
						window.history.pushState("visits",site_title(),site_config.site_url+"visits");							
						$('#data-content').css("opacity","1");							
					},
				});				
			break;				
			case "mylikes":	
				$('#data-content').css("opacity","0.5");
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"mylikes"						
					},	
					type: "post",			
					success: function(response) {
						$('#data-content').html(response);	
						scroller();
						profilePhoto();
						window.history.pushState("mylikes",site_title(),site_config.site_url+"mylikes");							
						$('#data-content').css("opacity","1");							
					},
				});				
			break;			
			case "matches":	
				$('#data-content').css("opacity","0.5");
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"matches"						
					},	
					type: "post",			
					success: function(response) {
						$('#data-content').html(response);	
						scroller();
						profilePhoto();
						window.history.pushState("matches",site_title(),site_config.site_url+"matches");							
						$('#data-content').css("opacity","1");							
					},
				});				
			break;
			case "settings":	
				window.location.href = site_config.site_url+"settings";
			break;
			case "discover":	
				$('#data-content').css("opacity","0.5");
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"discover"						
					},	
					type: "post",			
					success: function(response) {
						$('#data-content').html(response);
						window.history.pushState("discover",site_title(),site_config.site_url+"discover");
						game_start();
						game_btns2();	
						scroller();
						$('#data-content').css("opacity","1");							
					},
				});				
			break;				
		}
	});	
}	
menuLinks();
function likeChart(){
	$('.safari').percentPie({
	    width: 80,
	    trackColor: "#CCCCCC",
	    barColor1: "#F50C41",
	    barColor2: "#3642D5",
	    barWeight: 8,
	    fps: 60
	});	
}
if(rt){
}
function interestSuggest(){
	$('[data-interest-add]').click(function(){
		var val = $(this).attr('data-interest-add');
		var html = $('#new-int').html();
		$('#new-int').html(html+'<div class="int"><span>'+ val +'</span></div>');
		$('#searchBox').val('');
		$('#searchResults').addClass('hiddden');
		$.ajax({
			url: request_source()+'/user.php', 
			data: {
				action:"add_interest",
				name: val
			},	
			type: "post",			
			success: function(response) {
			}
		});			
	});
}
function deleteInterest(val){
	$('[data-interest='+val+']').hide();
	$.ajax({
		url: request_source()+'/user.php', 
		data: {
			action:"del_interest",
			id: val
		},	
		type: "post",			
		success: function(response) {
		}
	});			
}
function profilePhoto(){
	$(".profile-photo").each(function(){
		var src = $(this).attr("data-src");
		$(this).css('background-image', 'url('+src+')');			
	});
	$(".profile-photo").preload(function(){
		$(this).show();
	});		
}
function profileLinks(){
	$('.gift--hover').hover(function(){
		var src = $('.giftHover').attr('src');
		var dsrc = $('.giftHover').attr('data-src');
		$('.giftHover').attr('src',dsrc);
		$('.giftHover').attr('data-src',src);
	  },function(){
	  	var src = $('.giftHover').attr('src');
		var dsrc = $('.giftHover').attr('data-src');	  	
		$('.giftHover').attr('src',dsrc);
		$('.giftHover').attr('data-src',src);		
	}); 	
	likeChart();
	/*
	$(".profile-content").mCustomScrollbar({
		autoHideScrollbar:true,
		theme:"dark",
        scrollbarPosition: "outside",		
		scrollButtons:{
			enable: true 
		},
		mouseWheel:{
			preventDefault: true,
			deltaFactor: 100
		}                
	});
	*/
	$(".profile-photos").mCustomScrollbar({
		autoHideScrollbar:true,		
        axis: "x",
        theme: "dark-3",
        alwaysShowScrollbar: 2,
        advanced: {
            autoExpandHorizontalScroll: !0
        },
		mouseWheel:{
			preventDefault: true,
			deltaFactor: 80
		}                
	});
	$('#addPhotos').click(function(){
		$('.uploadphotos').show();
	})
	$('[data-url]').click(function(){
		var uid = $(this).attr('data-uid');
		var durl = $(this).attr('data-url');
		var index = $(this).attr('data-index');
		switch (durl) {
			case "chat":
				d_url = 'chat';
				if(profile_slider_open == true){
					
					if (slider.classList.contains('opened')) {
						slider.classList.remove('opened');
						slider.classList.add('closed');
						$('.close-slider-btn').hide();
					} else {
						slider.classList.remove('closed');
						slider.classList.add('opened');
						$('.close-slider-btn').show();
					}
					profile_slider_open = false;
				}
				title = 0;
				$('#chatCount').text(title); 
				$('#chatCount').hide();								
				$('#data-content').css("opacity","0.5");
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"chat",
						id : uid
					},	
					type: "post",			
					success: function(response) {
						$('#data-content').html(response);
						$('#r_id').val(uid);
						$('#data-content').css("opacity","1");						
					},
					complete: function(){	
						profileLinks();
						chatMessage();
						profilePhoto();
						scroller();
						game_btns2();
						videocallBtn();	
						giftBtn();
						window.history.pushState("chat",profile_info.name + ", " + profile_info.age + " | " + site_title(),site_config.site_url+'chat/'+profile_info.id+'/'+profile_info.link);
					}
				});					
			break;
			case "photos":
				if($('.gall').is(':visible')) {
					$('.gall').hide();
					$('.profile-content').show();
					$('[data-photos-action]').hide();
				} else {
					clean_galleria();
					var y = $(window).height();
					y = y-220;			
					var d = index +1;
					$('.gall').css('height',y+'px');
			        Galleria.loadTheme(theme_source()+'/css/galleria/galleria.classic.min.js');		
					Galleria.configure({
					    show: index
					});			
					Galleria.run(".gall",{
						autoplay: true,
						dataSource: profile_info.galleria,
						transition: "fade",
						imageCrop: false
					});
		            $('.gall').show();
		            $('.profile-content').hide();				
			        Galleria.ready(function(options){
			        	$('[data-photos-action]').fadeIn('fast');
			            this.attachKeyboard({
			                left: this.prev,
			                right: this.next
			            });
						this.bind('image', function(e) {
							$('[data-pid]').attr('data-pid',e.galleriaData.photoId);
							var string = e.galleriaData.big;					
							if (string.indexOf("private") !=-1) {
							} else {
							}
						});				
			        });
		    	}	
			break;					
		}
	});		
}
function reportUser(uid,name,photo){
	swal({   title: site_lang[326]['text'],   text: site_lang[327]['text']+' '+name,   imageUrl: photo,   showCancelButton: true,   confirmButtonColor: "#09c66e",   confirmButtonText: site_lang[259]['text'], cancelButtonText: site_lang[195]['text'],   closeOnConfirm: true }, function(){
		$.ajax({
			url: request_source()+'/user.php', 
			data: {
				action:"report",
				id : uid
			},
			dataType: "JSON",
			type: "post",			
			success: function(response) {
			},
			complete: function(){
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"block",
						id : uid
					},	
					type: "post",			
					success: function(response) {
						window.location.href = site_config.site_url+'meet';
					}
				});								
			}
		});
	});
}
function deleteConv(t, e, o) {
    swal({
        title: site_lang[528].text,
        text: " ",
        imageUrl: o,
        showCancelButton: !0,
        confirmButtonColor: "#09c66e",
        confirmButtonText: site_lang[292].text,
        cancelButtonText: site_lang[195].text,
        closeOnConfirm: !0
    }, function() {
        $.ajax({
            url: request_source() + "/belloo.php",
            data: {
                action: "del_conv",
                id: t
            },
            dataType: "JSON",
            type: "post",
            success: function(t) {},
            complete: function() {
            	$("#user"+t).remove();
                $("[data-chat]").first().click();
            }
        })
    })
}
function goTo(go){
	$('#data-content').css("opacity","0.5");
	if ($('.slider-profile').hasClass('opened')) {
		slider.classList.add('closed');
		slider.classList.remove('opened');
	}	
	$.ajax({
		url: request_source()+'/user.php', 
		data: {
			action: go						
		},	
		type: "post",			
		success: function(response) {
			$('#data-content').html(response);	
			scroller();
			profilePhoto();
			window.history.pushState("populars",site_title(),site_config.site_url+"credits");							
			$('#data-content').css("opacity","1");									
			$('[data-premium-send]').on('click', function(e){
				 e.preventDefault();
				var price = $(this).attr('data-price');
				var days = $(this).attr('data-premium');
				$('#payment-custom3').val(user_info.id+','+days);
				$('#payment-amount3').val(price);
				$('#payment-name3').val(site_config.name + ' - ' + days + ' ' + site_lang[332]['text']);	
				$('#buy-premium').submit();
			});			
		},
	});		
}
function fastMessage(rid){
	var mob = 0;
	var message = $('#fastMessageVal').val();
	$.ajax({ 
		type: "POST", 
		dataType: "JSON",
		url: request_source() + "/chat.php",
		data: {
			action : "send",
			r_id : rid,
			message: message,
			mobile : mob,
			fast: true
		},
		beforeSend: function(){
			$('.fast-message__content').hide();
			$('.fast-message__footer').hide();
			$('.fast-message__state').fadeIn();
		},
		success: function(){
		}
	});
}
function closeFastMessage() {
	$('.profile-menu__fast-message').hide();
}
function goToChat(uid){
	d_url = 'chat';
	if(profile_slider_open == true){
		slider = document.querySelector('.slider-profile');
		if (slider.classList.contains('opened')) {
			slider.classList.remove('opened');
			slider.classList.add('closed');
			$('.close-slider-btn').hide();
		} else {
			slider.classList.remove('closed');
			slider.classList.add('opened');
			$('.close-slider-btn').show();
		}
		profile_slider_open = false;
	}
    $('.chattt').toggleClass('show-me'); 
    $('.buttonChat').toggleClass('show-me');
	title = 0;
	$('#chatCount').text(title); 
	$('#chatCount').hide();								
	$('#data-content').css("opacity","0.5");
	$.ajax({
		url: request_source()+'/user.php', 
		data: {
			action:"chat",
			id : uid
		},	
		type: "post",			
		success: function(response) {
			$('#data-content').html(response);
			$('#r_id').val(uid);
			$('#data-content').css("opacity","1");						
		},
		complete: function(){	
			profileLinks();
			chatMessage();
			profilePhoto();
			scroller();
			game_btns2();
			videocallBtn();	
			giftBtn();
			window.history.pushState("chat",profile_info.name + ", " + profile_info.age + " | " + site_title(),site_config.site_url+'chat/'+profile_info.id+'/'+profile_info.link);
		}
	});			
}
function goToProfile(uid,i = 0,b = 0){
	if(mobile == true){
		window.location.href = 'mobile.php?page=profile&id='+uid;	
	}
	if(i == 1 && b == 0){
		profile_slider_open = false;
		if ($('.slider-profile').hasClass('opened')) {
			$('#profile-content-slider').html('');
			$('.close-slider-btn').hide();
			return false;
		}
		$('#data-content').css("opacity","0.6");
		$.ajax({
			url: request_source()+'/belloo.php', 
			data: {
				action:"wall-header",
				id : uid,
				b : b
			},	
			type: "post",		
			success: function(response) {
				$('#data-content').css("opacity","1");
				$('#profile-content-slider').show();
				$('#profile-content-slider').html(response);
				$('#fastMessageVal').focus();
				slider = document.querySelector('.slider-profile');
				slider.classList.add('opened');				
				var profile_slider = $( ".slider-profile" );
				var main_content = $( ".fix-width-content" );
				var position = main_content.position();
				profile_slider.css('left',position.left+'px');
				profile_slider.css('top',110+'px');
				profile_slider.css('right',position.right+'px');
				profile_slider.css('width',main_content.width()+'px');
				profile_slider.css('height',height_2+'px');
				$('.close-slider-btn').show();
				window.history.pushState("profile",profile_info.name + ", " + profile_info.age + " | " + site_title(),site_config.site_url+'profile/'+profile_info.id+'/'+profile_info.link);							
				$('#data-content').css("opacity","1");
				profilePhoto();
				profileLinks();
				if(url == 'chat'){
					game_btns2();	
				}
			}
		})
	} else {
		if(uid == user_info.id || uid !== user_info.id && b == 1){
			$('#data-content').css("opacity","0.6");
			if ($('.slider-profile').hasClass('opened')) {
				slider.classList.add('closed');
				slider.classList.remove('opened');
			}			
			$.ajax({
				url: request_source()+'/belloo.php', 
				data: {
					action:"wall",
					id : uid,
					b : b
				},	
				type: "post",			
				success: function(response) {
					$('#data-content').html(response);
					if(b == 1){
						$('#fastMessageVal').focus();
					}	
					window.history.pushState("profile",profile_info.name + ", " + profile_info.age + " | " + site_title(),site_config.site_url+'profile/'+profile_info.id+'/'+profile_info.link);							
					$('#data-content').css("opacity","1");
					profilePhoto();
					profileLinks();	
					game_btns2();
					managePhotos();
				}
			})
			return false;	
		}
		profile_slider_open = false;
		$('#data-content').css("opacity","0.6");
		$.ajax({
			url: request_source()+'/belloo.php', 
			data: {
				action:"wall",
				id : uid,
				b : b
			},	
			type: "post",			
			success: function(response) {
				$('#data-content').html(response);
				if(b == 1){
					$('#fastMessageVal').focus();
				}
				var check = Math.floor(Math.random()*(100-1+1)+1);

				if(site_config.visit_back > check && profile_info.status == "y" && profile_info.fake == 1){
					var time = Math.floor(Math.random()*(90000-10000+1)+10000);
					setTimeout(function(){
						var addvisit = profile_info.id+','+user_info.id;
						var gUrl = request_source()+'/api.php';
						$.get( gUrl, { action: 'addVisit', query: addvisit } );
						if(site_config.like_back > check && profile_info.status == "y" && profile_info.fake == 1){
							var time2 = Math.floor(Math.random()*(30000-6000+1)+6000);
							setTimeout(function(){
								var gUrl = request_source()+'/api.php';
								$.get( gUrl, { action: 'game_like', uid1: profile_info.id, uid2: user_info.id, uid3: 1 } );		
							},time2);
						}										
					},time);
				}					
				window.history.pushState("profile",profile_info.name + ", " + profile_info.age + " | " + site_title(),site_config.site_url+'profile/'+profile_info.id+'/'+profile_info.link);							
				$('#data-content').css("opacity","1");
				profilePhoto();
				profileLinks();	
				game_btns2();
			}
		});
		/*			
		$.ajax({
			url: request_source()+'/belloo.php', 
			data: {
				action:"wall",
				id : uid,
				b : b				
			},	
			type: "post",		
			beforeSend: function(){
				alert('profile open');
			},				
			success: function(response) {
				$('#profile-content-slider').show();
				$('#profile-content-slider').html(response);
				var profile_slider = $( ".slider-profile" );
				var main_content = $( ".fix-width-content" );
				var position = main_content.position();
				var height_2 = $(window).height() - 0;
				profile_slider.css('left',position.left+'px');
				profile_slider.css('top',0+'px');
				profile_slider.css('right',position.right+'px');
				profile_slider.css('width',main_content.width()+'px');
				profile_slider.css('height',height_2+'px');
				$('#fastMessageVal').focus();
				var slider = document.querySelector('.slider-profile');
				if (slider.classList.contains('opened')) {
					slider.classList.remove('opened');
					slider.classList.add('closed');
				} else {
					slider.classList.remove('closed');
					slider.classList.add('opened');
				}
				$(document).keyup(function(e) {
				  if (e.keyCode === 27) {
					slider.classList.remove('opened');
					slider.classList.add('closed');
				  }
				});		
				$('.close-slider-btn').click(function(e) {
					slider.classList.remove('opened');
					slider.classList.add('closed');								 
				});						
				window.history.pushState("profile",profile_info.name + ", " + profile_info.age + " | " + site_title(),site_config.site_url+'profile/'+profile_info.id+'/'+profile_info.link);							
				$('#data-content').css("opacity","1");
				profilePhoto();
				profileLinks();	
				game_btns2();
			}
		})*/
	}
}
function privateLinks(){
	$('#ask-permission').click(function(){
		$('#data-content').css("opacity","0.5");
		url = "chat";
		$.ajax({
			url: request_source()+'/user.php', 
			data: {
				action:"chat_p",
				id : profile_info.id
			},	
			type: "post",			
			success: function(response) {
				window.location.href = site_config.site_url+'chat/'+profile_info.id+'/'+profile_info.link	
			},
			complete: function(){
			}
		});
	});	
	$('#buy-permission').click(function(){
			if(user_info.credits < site_prices.private){
				$('#payment_module').show();
			} else {											
swal({   title: site_lang[191]['text'],   text: site_lang[192]['text']+' '+profile_info.first_name+' '+ site_lang[193]['text'] +' '+ site_prices.private +' ' + site_lang[73]['text'],   imageUrl: profile_info.profile_photo,   showCancelButton: true,   confirmButtonColor: "#09c66e",   confirmButtonText: site_lang[194]['text'], cancelButtonText: site_lang[195]['text'],   closeOnConfirm: true }, function(){
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"p_access",
						id : profile_info.id
					},	
					type: "post",			
					success: function(response) {
						$('.profile-menu .selected').click();
					}
				});
			});
		}
	});			
}
//CHAT							
var sendPhoto = { 
	success: function(data) {
		if(mobile == false){
			$(".chat").append(data);
			$('.chat').mCustomScrollbar("destroy");
			photosChatWall();
			profilePhoto();
			scroller();
		} else {
			$(".list-chats").append(data);
		}
	},
	resetForm: true
}; 	
function startGalleria(data) {
	var d = [];
    if(url == "discover"){
		$(".liked").hide();
		$(".disliked").hide();			
        Galleria.loadTheme(theme_source()+'/css/galleria/galleria.classic.min.js');
		var y = $(window).height();
		y = y-60;
		if(mobile == true){
			Galleria.configure({
				thumbnails: "hide"
			});				
			Galleria.run(".discover",{
				autoplay: true,
				height: y,
				dataSource: data,
				transition: "fade",
				imageCrop: true
			});				
		} else {
			Galleria.configure({
			    show: 0
			});
			Galleria.run(".discover",{
				autoplay: true,
				dataSource: data,
				transition: "fade",
				imageCrop: false
			});				
		}
        Galleria.ready(function(options){
            this.attachKeyboard({
                left: this.prev,
                right: this.next
            });
        });    
    }
    if(url == "profile"){		
        Galleria.loadTheme(theme_source()+'/css/galleria/galleria.classic.min.js');
		var y = $('body').height();
		y = y-60;
		var z = y - 60;
		if(mobile == true){		
			$('.hero-image').css('height',y);
			$('.hero-image-private').css('height',y);
			$('.hero-image-private').css('width','100%');			
			Galleria.run(".hero-image-img",{
				autoplay: true,
				height: y,
				dataSource: data,
				transition: "fade",
				imageCrop: true
			});				
		}
        Galleria.ready(function(options){
            this.attachKeyboard({
                left: this.prev,
                right: this.next
            });
			this.bind('image', function(e) {
				var string = e.galleriaData.big;
				if (string.indexOf("private") !=-1) {
					$('.hero-image-private').show();	
				} else {
					$('.hero-image-private').hide();
				}
			});				
        });    
    }		
}
function meetPagination(){
	$("[data-meet]").click(function() {
		$('#meet_section').css("opacity","0.5");
		var p = $(this).attr('data-meet');
		$('#meet_filter_limit').val(p); 
		var g = 0;
		if($('#check-1').is(":checked") ){
			g = g+2;
		}
		if($('#check-2').is(":checked") ){
			g = g+1;
		}	
		meet_age = fage1+','+fage2;
		meet_gender = $('#meet_filter_gender').val();
		meet_online = $('#meet_filter_online').val();
		meet_limit = $('#meet_filter_limit').val();		
		$('.wall').animate({
			  scrollTop: 0
		}, 600);
		$.ajax({
			url: request_source()+'/user.php', 
			data: {
				action:"meet_filter",
				age: meet_age,
				gender: meet_gender,
				radius: meet_radius,
				online: meet_online,
				limit: meet_limit					
			},	
			type: "post",			
			success: function(response) {
				$('.wall').mCustomScrollbar("destroy");					
				$('#meet_section').html(response);					
				scroller();	
				profilePhoto();
				meetPagination();
				$('#meet_section').css("opacity","1");							
			},
		});
	});		
}
function meetFilter(){
	$('#meet_section').css("opacity","0.5");
	locInitialize();
	var val = 0;
	val = meet_radius;
	if(val < 500){
		$('#slider-distance').text(site_lang[391]['text']);
	} else {
		$('#slider-distance').text(val +' '+ site_config.dc);				
	}
	if(val > 2500 && val < 3000){
		$('#slider-distance').text(site_lang[396]['text']);
	}
	if(val > 4900){
		$('#slider-distance').text(site_lang[395]['text']);
	}		
	$("#slider-range").slider({
		range: true,
		min: 18,
		max: 80,
		step: 1,
		values: [fage1, fage2],
		slide: function (e, ui) {
			var val = ui.values[0];
			var val2 = ui.values[1];
			fage1 = val;
			fage2 = val2;
			meet_age = fage1+','+fage2;
			if(val2 == 80){
				$('#slider-range-age2').text(val2+'+');
			} else {
				$('#slider-range-age2').text(val2);
			}
			$('#slider-range-age1').text(val);
		}
	});	
	$("#slider-range2").slider({
		range: true,
		min: 1,
		max: 5000,
		step: 10,
		values: [1,meet_radius],
		slide: function (e, ui) {
			var val = ui.values[1];
			meet_radius = val;
			if(val < 500){
				$('#slider-distance').text(site_lang[391]['text']);
			} else {
				$('#slider-distance').text(val +' '+ site_config.dc);				
			}
			if(val > 2500 && val < 3000){
				$('#slider-distance').text(site_lang[396]['text']);
			}
			if(val > 4900){
				$('#slider-distance').text(site_lang[395]['text']);
			}						
		}
	});
	$('.ui-slider-range').click(function(e){
		e.preventDefault;
		return false;
	});
	$('#slider-range2 .ui-slider-handle').first().remove();			
	$.ajax({
		url: request_source()+'/user.php', 
		data: {
			action:"meet_filter",
			age: meet_age,
			gender: meet_gender,
			radius: meet_radius,
			online: meet_online,
			limit: meet_limit					
		},	
		type: "post",			
		success: function(response) {
			$('.wall').mCustomScrollbar("destroy");					
			$('#meet_section').html(response);
			scroller();	
			profilePhoto();	
			meetPagination();
			$('#meet_section').css("opacity","1");							
		},
	});		
	$("[data-filter]").click(function() {
		$('#meet_section').css("opacity","0.5");
		var h = $('.wall').height();
		$('.wall').height(h+225);
		if(url == "search"){
			$('.search-post').hide();
		} else {
			$('.wall-post').hide();           
		}        
		$('[data-close-filter]').hide();
		$('.post-btn-right').show();			
		var g = 0;
		if($('#check-1').is(":checked") ){
			g = g+2;
		}
		if($('#check-2').is(":checked") ){
			g = g+1;
		}	
		meet_age = fage1+','+fage2;
		meet_gender = $('#meet_filter_gender').val();
		meet_online = $('#meet_filter_online').val();
		meet_limit = 0;			
		$.ajax({
			url: request_source()+'/user.php', 
			data: {
				action:"meet_filter",
				age: meet_age,
				gender: meet_gender,
				radius: meet_radius,
				online: meet_online,
				limit: meet_limit					
			},	
			type: "post",			
			success: function(response) {
				$('.wall').mCustomScrollbar("destroy");					
				$('#meet_section').html(response);
				scroller();	
				profilePhoto();	
				meetPagination();
				$('#meet_section').css("opacity","1");							
			},
		});
	});		
	$('[data-action]').click(function(){
		var action = $(this).attr('data-action');
		switch (action) {		
			case "online":
				$('#allusers').removeClass("selected");
				$(this).addClass("selected");
				$('#meet_filter_online').val(1);
				$('#meet_filter_limit').val(0); 	
				$('#meet_section').css("opacity","0.5");					
				var g = 0;
				if($('#check-1').is(":checked") ){
					g = g+2;
				}
				if($('#check-2').is(":checked") ){
					g = g+1;
				}	
				var age = fage1+','+fage2;
				var gender = g;
				var online = $('#meet_filter_online').val();
				var limit = 0;			
				var radius = meet_radius;
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"meet_filter",
						age: age,
						gender: gender,
						radius: radius,
						online: online,
						limit: limit
					},	
					type: "post",			
					success: function(response) {
						$('.wall').mCustomScrollbar("destroy");					
						$('#meet_section').html(response);
						scroller();	
						profilePhoto();	
						meetPagination();
						$('#meet_section').css("opacity","1");							
					},
				});		
			break;
			case "allusers":
				$('#onlineusers').removeClass("selected");
				$(this).addClass("selected");
				$('#meet_filter_online').val(0);
				$('#meet_filter_limit').val(0); 					
				$('#meet_section').css("opacity","0.5");
				var g = 0;
				if($('#check-1').is(":checked") ){
					g = g+2;
				}
				if($('#check-2').is(":checked") ){
					g = g+1;
				}	
				var age = fage1+','+fage2;
				var gender = g;
				var online = $('#meet_filter_online').val();
				var limit = 0;		
				var radius = meet_radius;
				$.ajax({
					url: request_source()+'/user.php', 
					data: {
						action:"meet_filter",
						age: age,
						gender: gender,
						radius: radius,
						online: online,
						limit: limit
					},	
					type: "post",			
					success: function(response) {
						$('.wall').mCustomScrollbar("destroy");					
						$('#meet_section').html(response);
						scroller();	
						profilePhoto();	
						meetPagination();
						$('#meet_section').css("opacity","1");							
					},
				});		
			break;	
		}
	});	
}
$(".photo").each(function(){
	$(this).hover(function(){
		$(this).find('.data').fadeIn(); 
	  },function(){
		$(this).find('.data').fadeOut(); 
	});        
	var src = $(this).attr("data-src");
	$(this).css('background-image', 'url('+src+')');
});	
$("[data-act]").each(function(){
	if(mobile === true && url == 'chat'){
		$(this).show();
		$(this).css("font-size",24);	
	}
});		
$('[data-act]').click(function(e){
	e.preventDefault();
	var action = $(this).attr('data-act');
	if(action == "mphotos"){
		if($('#manage-photos').is(':visible')) {
			$('#manage-photos').hide();
		} else {
			$('#manage-photos').show();
		}
	}
	if(action == "gift"){
		if($('#send-gift').is(':visible')) {
			$('#send-gift').hide();
		} else {
			$('#send-gift').show();
			$('#g-name').html(profile_info.name);
			$('#g-name2').html(profile_info.name);					
		}
	}
	if(action == "like"){
		var uid = profile_info.id;
		$.ajax({
			url: request_source()+'/user.php', 
			data: {
				action:"game_like",
				id : uid,
				like: 1
			},	
			type: "post",
			beforeSend: function(){
			},
			success: function(response) {
				game_start();
			},
			complete: function(){
			}
		});
	}		
});	
$('#insta-import').on('click',function(e){
swal({   title: "Instagram",   text: site_lang[329]['text'],   type: "input",   showCancelButton: true, showLoaderOnConfirm: true,  closeOnConfirm: false,   animation: "slide-from-top",   inputPlaceholder: site_lang[331]['text'] }, function(inputValue){   if (inputValue === false) return false;      if (inputValue === "") {     swal.showInputError(site_lang[330]['text']);     return false   } 
	$.ajax({
		url: request_source()+'/user.php', 
		data: {
			action:"instagram",
			insta: inputValue
		},	
		type: "post",
		beforeSend: function() {
		},		
		success: function(response) {
			if(mobile == true){
				goToProfile(user_info.id);
			} else {
				window.location.href= site_config.site_url+'profile/'+user_info.id+'/photo';
			}
		}
	});																																																																																																																																																													});									   
});
$('#add-photos,#add-photos-big').on('click', function(e){
	 e.preventDefault();
	$("#add-photos-file").click(); 
});
$('#private-photos').on('click', function(e){
	 e.preventDefault();
	$("#add-private-photos-file").click(); 
});	
$("#add-photos-file").change(function() {
	$("#add-photos-form").submit();
});	
$("#add-private-photos-file").change(function() {
	$("#add-private-photos-form").submit();
});		
$("[data-settings]").click(function() {
	$('.header-settings').removeClass("selected");									   
	$(this).addClass("selected");		
	var i = $(this).attr('data-settings');
	$("[data-settings-page]").hide();
	$('[data-settings-page='+i+']').fadeIn();
});
$("input:radio[name=fans]").change(function() {
    var val = $(this).val();
	var radio = "fan";
	$.ajax({
		url: request_source()+'/user.php', 
		data: {
			action:"user_notifications",
			val: val,
			col: radio
		},	
		type: "post",
		success: function(response) {
		}
	});		
});	
$("input:radio[name=near]").change(function() {
    var val = $(this).val();
	var radio = "near_me";
	$.ajax({
		url: request_source()+'/user.php', 
		data: {
			action:"user_notifications",
			val: val,
			col: radio
		},	
		type: "post",
		success: function(response) {
		}
	});		
});	
$("input:radio[name=message]").change(function() {
    var val = $(this).val();
	var radio = "message";
	$.ajax({
		url: request_source()+'/user.php', 
		data: {
			action:"user_notifications",
			val: val,
			col: radio
		},	
		type: "post",
		success: function(response) {
		}
	});		
});	
$("input:radio[name=match_m]").change(function() {
    var val = $(this).val();
	var radio = "match_m";
	$.ajax({
		url: request_source()+'/user.php', 
		data: {
			action:"user_notifications",
			val: val,
			col: radio
		},	
		type: "post",
		success: function(response) {
		}
	});		
});
$("input:checkbox[name=match_m]").change(function() {
    var val = $(this).val();
	var radio = "match_m";
	if(val == 1){
		val = 0;
		$(this).val(0);
	}else{
		val = 1;
		$(this).val(1);
	}
	$.ajax({
		url: request_source()+'/user.php', 
		data: {
			action:"user_notifications",
			val: val,
			col: radio
		},	
		type: "post",
		success: function(response) {
		}
	});		
});	
$("input:checkbox[name=n_like]").change(function() {
    var val = $(this).val();
	var radio = "fan";
	if(val == 1){
		val = 0;
		$(this).val(0);
	}else{
		val = 1;
		$(this).val(1);
	}
	$.ajax({
		url: request_source()+'/user.php', 
		data: {
			action:"user_notifications",
			val: val,
			col: radio
		},	
		type: "post",
		success: function(response) {
		}
	});		
});	 
$("input:checkbox[name=n_join]").change(function() {
    var val = $(this).val();
	var radio = "near_me";
	if(val == 1){
		val = 0;
		$(this).val(0);
	}else{
		val = 1;
		$(this).val(1);
	}
	$.ajax({
		url: request_source()+'/user.php', 
		data: {
			action:"user_notifications",
			val: val,
			col: radio
		},	
		type: "post",
		success: function(response) {
		}
	});		
});	    
$("input:checkbox[name=n_message]").change(function() {
    var val = $(this).val();
	var radio = "message";
	if(val == 1){
		val = 0;
		$(this).val(0);
	}else{
		val = 1;
		$(this).val(1);
	}
	$.ajax({
		url: request_source()+'/user.php', 
		data: {
			action:"user_notifications",
			val: val,
			col: radio
		},	
		type: "post",
		success: function(response) {
		}
	});		
});	 	
$("[data-payment]").click(function() {
	$('.sm').addClass("grayS");									   
	$(this).removeClass("grayS");		
	$('.sm').css('border-color', '#f1f1f1');								   
	$(this).css("border-color","#096DC9");		
	payment_method = $(this).attr('data-payment');
});		
$('#payment-submit').click(function(){
	var price = $('#payment-select').find(':selected').attr('data-price');
	var quantity = $('#payment-select').find(':selected').attr('data-quantity');		
	$('#payment-custom').val(user_info.id+','+quantity);
	$('#payment-custom2').val(user_info.id+','+quantity);
	$('#payment-amount,#payment-amount2').val(price);
	$('#payment-name,#payment-name2').val(site_config.name + ' ' + quantity + ' '+site_lang[73]['text']);		
	if(payment_method == 0){
		swal({   title: site_lang[333]['text'],   text: site_lang[196]['text'],   type: 'error' }, function(){ });
		return false;			
	}
	if(payment_method == 1){
		$('#method01').submit();
	}
	if(payment_method == 2){
		$('#method02').submit();
	}
	if(payment_method == 4){
	var name = site_config.name + ' ' + quantity + ' '+site_lang[73]['text'];
	var encode = 'amount='+quantity+'callback_url='+site_config.site_url+'credits-okcredit_name='+name+'cuid='+user_info.id+'currency='+site_config.currency+'display_type=userprice='+price+'v=web';			
	$.ajax({ 
		type: "POST", 
		url: request_source() + "/user.php",
		data: {
			action: 'fortumo',
			encode: encode
		},
		success: function(response){
			var md5 = response;
			var callback = encodeURI(site_config.site_url+'credits-ok');
			name = encodeURI(name);
			var href= 'http://pay.fortumo.com/mobile_payments/'+site_config.fortumo+'?amount='+quantity+'&callback_url='+callback+'&credit_name='+name+'&cuid='+user_info.id+'&currency='+site_config.currency+'&display_type=user&price='+price+'&v=web&sig='+md5;
			window.location.href = href;				
		}
	});				
	}
	if(payment_method == 3){
		price = price*100;
		var app = 1;
		var handler = StripeCheckout.configure({
			key: site_config.stripe,
			image: site_config.logo,
			locale: 'auto',
			token: function(token) {
				$.ajax({
					url: request_source()+'/stripe.php', 
					data: {
						token:token.id,
						price: price,
						app: app,
						quantity: quantity,
						uid: user_info.id,
						de: site_config.name + ' ' + quantity + ' '+site_lang[73]['text']
					},	
					type: "post",
					success: function(response) {
					},
					complete: function(){
						if(app == 1){
							window.location.href = site_url()+'credits-ok';
						}
					}
				});
			}
		});
		handler.open({
			name: site_config.name,
			description: site_config.name + ' ' + quantity + ' '+site_lang[73]['text'],
			amount: price
		});
		$(window).on('popstate', function() {
			handler.close();
		});				
	}
});	
$('.ovl-close').on("click", function() {
		if($('.ovl').is(':visible')) {
			$('.ovl').hide();
		} 
});	
$('.closeModal').on("click", function() {
		if($('.ovl').is(':visible')) {
			$('.ovl').hide();
		} 
});		
$('[data-spotlight]').click(function(){
	$('body').find(".photos .selected").removeClass('selected');								 
	$(this).addClass('selected');
	var psrc = $(this).attr('data-src');
	$('#s_photo').val(psrc);
});	
$('.add-yourself').click(function(){
	$('#add-spotlight').show();
});	
$('#s_close').click(function(){
	$('#add-spotlight').hide();
});
$('.overlay').click(function(){
	$('#payment_module').hide();
});	
function showRiseUp(){
	$('#rise-up').show();
}
function showDiscover(){
	$('#discover100').show();
}
function showSpotlight(){
	$('#add-spotlight').show();
}	
setTimeout(function(){
	$('#newNotification').show();	
},2000);
function riseUp(){
	 if(user_info.credits < site_prices.first){
		$('#payment_module').show();
	 } else {
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/belloo.php",
			data: {
				action : "riseUp",
				price : site_prices.first
			},
			success: function(response){
				window.location.href = site_config.site_url+'credits';
			}
		});	
	 }	
}
function dailyChat(){
	 if(user_info.credits < site_prices.chat){
		$('#payment_module').show();
	 } else {
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/belloo.php",
			data: {
				action : "dailyChat",
				price : site_prices.chat
			},
			success: function(response){
				window.location.reload();
			}
		});	
	 }	
}
function discover100(){
	 if(user_info.credits < site_prices.discover){
		$('#payment_module').show();
	 } else {
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/belloo.php",
			data: {
				action : "discover100",
				price : site_prices.discover
			},
			success: function(response){
				window.location.href = site_config.site_url+'credits';
			}
		});	
	 }	
}
function addSpotlight(){
	var photo = $('#s_photo').val();
	if(photo.length == 0){ alert(site_lang[197]['text']); return false};		
	$.ajax({ 
		type: "POST", 
		url: request_source() + "/user.php",
		data: $(this).serialize(),
		success: function(response){
			window.location.href = site_config.site_url+'meet';
		}
	});	
}
$('#add-sphoto,#add-sphoto2').on('click', function(e){
	 e.preventDefault();
	 if(user_info.credits < site_prices.spotlight){
		$('#payment_module').show();
	 } else {
		$("#add-photo-spotlight").submit(); 	 			 
	 }
})
$('#add-photo-spotlight').submit(function(e) {
	e.preventDefault();	
	var photo = $('#s_photo').val();
	if(photo.length == 0){ alert(site_lang[197]['text']); return false};		
	$.ajax({ 
		type: "POST", 
		url: request_source() + "/user.php",
		data: $(this).serialize(),
		success: function(response){
			window.location.href = site_config.site_url+'meet';
		}
	});	
});	
function managePhotos(){
	$('[data-set-profile]').on('click', function(e){
		e.preventDefault();
		var pid = $(this).attr('data-pid');
		var div = $(this).parent('.photo');			 
		$.ajax({ 
			type: "POST",
			url: request_source() + "/user.php",
			data: {
				action : "manage",
				pid : pid,
				profile : 1,
				block : 0,
				unblock : 0,
				del : 0
			},
			success: function(response){
				window.location.reload();
			}
		});
	});
	$('[data-unblock-photo]').on('click', function(e){
		e.preventDefault();
		var pid = $(this).attr('data-pid');
		var div = $("#pid"+pid);		 
		$.ajax({ 
			type: "POST",
			url: request_source() + "/user.php",
			data: {
				action : "manage",
				pid : pid,
				profile : 0,
				block : 0,
				unblock : 1,
				del : 0
			},
			success: function(response){
				window.location.reload(false);
			}
		});
	});
	$('[data-block-photo]').on('click', function(e){
		e.preventDefault();
		var pid = $(this).attr('data-pid');
		var div = $("#pid"+pid);			 
		$.ajax({ 
			type: "POST",
			url: request_source() + "/user.php",
			data: {
				action : "manage",
				pid : pid,
				profile : 0,
				block : 1,
				unblock : 0,
				del : 0
			},
			success: function(response){
				window.location.reload(false);
			}
		});
	});
	$('[data-delete-photo]').on('click', function(e){
		e.preventDefault();
		var pid = $(this).attr('data-pid');
		$.ajax({ 
			type: "POST",
			url: request_source() + "/user.php",
			data: {
				action : "manage",
				pid : pid,
				profile : 0,
				block : 0,
				unblock : 0,
				del : 1
			},
			success: function(response){
				window.location.reload(false);
			}
		});
	});		
}
managePhotos();
(function() {
	$('#add-photos-form').ajaxForm({	
		beforeSend:function(){
			if(mobile == true){
				$('#new-stack').removeClass('stop-loading');	
			} else {
				$('#loading-photos').show();
				$('#add-photos').hide();
			}
		},
		success: function(msg) {
		},
		complete: function(xhr) {
			result = xhr.responseText;
			result = $.parseJSON(result);
			$.each(result, function(index, value){
				if( value.success ){
					$.ajax({ 
						type: "POST",
						url: request_source() + "/user.php",
						data: {
							action : "photo"
						},
						success: function(response){
							var photos = user_info.total_photos;								
							if(photos == 0 || mobile == true){
							}
							window.location.reload();
							/*
							$('#loading-photos').hide();
							$('.uploadphotos').hide();
							$('#add-photos').show();
							$('#profile-photos"').html(response);
							$(".photo").each(function(){
								$(this).hover(function(){
									$(this).find('.data').fadeIn(); 
								  },function(){
									$(this).find('.data').fadeOut(); 
								});        
								var src = $(this).attr("data-src");
								$(this).css('background-image', 'url('+src+')');									
							});
							*/									
						}
					});
				} else if( value.error ){
					$('#user-photos').show();
					$('#loading-photos').hide();						
					error = value.error
					html = '<br><center>';
					html+='<p>'+error+'</p></center>';
					$('#user-photos').append( html );
				}
			});
		}
	}); 
})();
(function() {
	$('#add-private-photos-form').ajaxForm({	
		beforeSend:function(){
			$('#new-stack').removeClass('stop-loading');
		},
		success: function(msg) {
		},
		complete: function(xhr) {
			result = xhr.responseText;
			result = $.parseJSON(result);
			$.each(result, function(index, value){
				if( value.success ){
					$.ajax({ 
						type: "POST",
						url: request_source() + "/user.php",
						data: {
							action : "photo"
						},
						success: function(response){
							window.location.reload();									
						}
					});
				} else if( value.error ){
					$('#user-photos').show();
					$('#loading-photos').hide();						
					error = value.error
					html = '<br><center>';
					html+='<p>'+error+'</p></center>';
					$('#user-photos').append( html );
				}
			});
		}
	}); 
})();		
function filterBtn() {
	$('.post-btn-right').click(function(){
		url = $(this).attr('data-url');
		var h = $('.wall').height();
		$('.wall').height(h-225);
		$(this).hide();
		if(url == "search"){
			$('.search-post').fadeIn();
		} else {
			$('.wall-post').fadeIn();
			$('#update-status').focus();            
		}
		$('[data-close-filter]').show();
	});
	$('[data-close-filter]').click(function(){
		var h = $('.wall').height();
		$('.wall').height(h+225);
		if(url == "search"){
			$('.search-post').hide();
		} else {
			$('.wall-post').hide();           
		}        
		$('[data-close-filter]').hide();
		$('.post-btn-right').show();
	}); 
}
$('#refresh-notification').click(function(){
    $(this).toggleClass('rotate');
    $(this).toggleClass('rotate-rest');
});
$('.load-more').click(function(){
    var a = $('#user-spot').scrollTop();
	 $('#user-spot').mCustomScrollbar('scrollTo','-=500');														      
});     
profilePhoto();
$(".wall").bind('scroll', function() {
   var top = $(this).scrollTop();
   if(top > 100 ){
   }else {
   }
});    
$("[class^=post-photo]").each(function(){
    var src = $(this).attr("data-src");
    $(this).css('background-image', 'url('+src+')');       
});
function photosChatWall(){
	$("[class^=post-photo]").each(function(){
		var src = $(this).attr("data-src");
		$(this).css('background-image', 'url('+src+')');       
	});		
	$("[class^=post-photo]").hover(function(){
		var instance = $(this).attr("data-instance");
		if ($("#viewer" + instance)[0]){ 
		} else {
			$(".fbphotobox-overlay").remove();
			$(".fbphotobox-main-container").remove();
			$(".fbphotobox-fc-main-container").remove();
			$(".fbphotobox-main-container").remove();
			if(url == "chat" || url == "profile"){
				$("[data-instance='" + instance +"']").fbPhotoBox({
					rightWidth: 0.1,
					leftBgColor: "black",
					rightBgColor: "white",
					footerBgColor: "black",
					overlayBgColor: "#1D1D1D",
					profile: false,
					instance: instance
				}); 
			} else {
				$("[data-instance='" + instance +"']").fbPhotoBox({
					rightWidth: 350,
					leftBgColor: "black",
					rightBgColor: "white",
					footerBgColor: "black",
					overlayBgColor: "#1D1D1D",
					profile: false,
					instance: instance
				});                
			}
		} 
	});
}
photosChatWall();
$('#profile-menu').dropdown({
  inDuration: 300,
  outDuration: 225,
  constrain_width: false, 
  hover: false, 
  alignment: 'center', 
  gutter: 0, 
  belowOrigin: false 
}
);    
function scroller(){
	$(".chat").mCustomScrollbar({
		autoHideScrollbar:true,
		theme:"dark",
		setTop: 100000,
		scrollButtons:{
			enable: true 
		},
		mouseWheel:{
			preventDefault: true,
			deltaFactor: 120
		}                
	});
	$(".left-menu-margin").mCustomScrollbar({
		autoHideScrollbar:true,
		theme:"dark-3",
		scrollbarPosition: "outside",
		scrollButtons:{
			enable: true 
		},
		mouseWheel:{
			preventDefault: true,
			deltaFactor: 80
		}                
	});		
	$(".scroll").mCustomScrollbar({
		autoHideScrollbar:true,
		theme:"dark-3",
		scrollbarPosition: "outside",			
		scrollButtons:{
			enable: true 
		},
		mouseWheel:{
			preventDefault: true,
			deltaFactor: 50
		}                
	}); 		
	$("#site-settings").mCustomScrollbar({
		autoHideScrollbar:true,
		theme:"dark",			
		scrollButtons:{
			enable: true 
		},
		mouseWheel:{
			preventDefault: true,
			deltaFactor: 90
		}                
	}); 		
	$("#user-spot").mCustomScrollbar({
		autoHideScrollbar:true,
		theme:"dark",
		scrollbarPosition: "outside",
		scrollButtons:{
			enable: true 
		},
		mouseWheel:{
			preventDefault: true,
			deltaFactor: 80
		}                
	});
}
scroller();
function sidebarChat(){
	$(".sidebar-friends a").each(function(){
		var value = $(this).attr("data-message");	
		var entry = $(this).attr("data-chat");	
		if (value > 0) {
			$(this).append('<div class="mark mark--red" style="right:-5px;top:-2px;">'+value+'</div>');
		}
	});			
	$('.sidebar-friends a').on('click', function() {
		var userid = $(this).attr("data-uid");				
		var c_url = window.location.href; 
		$('.selected').removeClass('selected');
		$(this).find('div').addClass('selected');
		$(this).find('.mark').remove();
		$('[data-uid='+userid+']').attr('data-message',0);
		//$('.pagenotfound').hide();		
		if(in_videocall === true && video_user == userid) {
			$('.videocall-chat').hide();					
			$('.videocall-container').fadeIn();			
		}
		if(in_videocall === true && video_user != userid) {
			$('[data-uid='+video_user+'] .friend-list').append('<div class="invideocall"><i class="fa fa-video-camera"></i></div>');
			$('[data-uid='+video_user+']').attr('data-message',1);
			$('[data-uid='+video_user+'] h3').css('color','#3ab0ff');
			$('.videocall-chat').fadeIn();
			$('.videocall-chat').draggable();
			$('.videocall-container').hide();				
		}			
		$('#data-content').css("opacity","0.5");
		url = "chat";
		$.ajax({
			url: request_source()+'/user.php', 
			data: {
				action:"chat-inchat",
				id : userid
			},	
			type: "post",			
			success: function(response) {
				$('#data-content').html(response);
				$('#chat-message').focus();	
				title = 0;							
				document.title = site_title();
				window.history.pushState("chat",site_title(),site_config.site_url+'chat/'+profile_info.id+'/'+profile_info.link);
				current_user = userid;
				current_user_id = userid;				
				$('[data-cuid='+userid+']').attr('data-message',0);
				$('#r_id').val(userid);
				$('#rid').val(userid);	
				scroller();
				$('#data-content').css("opacity","1");	
				profilePhoto();						
				$('#sendPhoto').on('click', function(e){
					 e.preventDefault();
					$("#photo-to-send").click(); 
				});
				$("#photo-to-send").change(function() {
					$("#sendPhoto").submit();
				});
				$('#sendPhoto').submit(function() { 
						$(this).ajaxSubmit(sendPhoto);  			
						return false; 
				});					
				videocallBtn();
			},
			complete: function(){
				chatMessage();
			}
		})																	 
	});	
}
sidebarChat();	
$("#chat-filter").change(function() {
	var val = $(this).val();
	chatFilter(val);
});
function chatFilter(val){
	if(val == 1) {
		$(".sidebar-friends").each(function(){
			var value = $(this).attr("data-all");								
			if (value != 1) {
				$(this).fadeOut();
			} else {
				$(this).show();
			}
		});
	}
	if(val == 2) {
		$(".sidebar-friends").each(function(){
			var value = $(this).attr("data-fan");								
			if (value != 1) {
				$(this).fadeOut();
			} else {
				$(this).show();
			}
		});			
	}
	if(val == 4) {
		$(".sidebar-friends").each(function(){
			var value = $(this).attr("data-status");								
			if (value != 1) {
				$(this).hide();
			} else {
				$(this).show();
			}
		});			
	}
	if(val == 3) {
		$(".sidebar-friends").each(function(){
			var value = $(this).attr("data-conv");								
			if (value != 1) {
				$(this).hide();
			} else {
				$(this).show();
			}
		});		
	}
	if(val == 5) {
		$(".sidebar-friends").each(function(){
			var value = $(this).attr("data-message");								
			if (value != 1) {
				$(this).hide();
			} else {
				$(this).show();
			}
		});			
	}		
}
$("[data-photos-filter]").click(function() {
	var val = $(this).attr('data-photos-filter');
	photosFilter(val);
});	
function photosFilter(val){
	if(val == 1) {
		$("[id^=pid]").each(function(){
			var value = $(this).attr("data-blocked");								
			if (value != 0) {
				$(this).fadeOut();
			} else {
				$(this).show();
			}
		});
	}
	if(val == 2) {
		$("[id^=pid]").each(function(){
			var value = $(this).attr("data-blocked");								
			if (value != 1) {
				$(this).fadeOut();
			} else {
				$(this).show();
			}
		});
	}
	if(val == 3) {
		$("[id^=pid]").each(function(){
			$(this).show();
		});
	}		
}	
function chat_notification(){
	noti = 0;
	var curl = window.location.href; 	
	/*	
	$.ajax({ 
		type: "POST", 
		dataType: "JSON",
		url: request_source() + "/chat.php",
		data: {
			action : "notification",
			user : 0
		},
		success: function(response){
			response.forEach(function(entry) {
				if(noti == 0){
					$('#notiSound')[0].play();	
					noti = 1;
				}												  
				title = title+1;
				$('#chatCount').text(title); 
				$('#chatCount').fadeIn();
				document.title = '( '+title+' ) '+ site_title();
				if ( $('[data-chat='+entry+']').length ) {
				} else {
					new_message();
				}
			});
		},
		complete: function(){
			setTimeout(function(){ chat_notification(); }, 5000);
		}
	});	
	*/		
}
chat_notification();	
function new_message(){
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/chat.php",
			data: {
				action : "new"
			},
			success: function(response){
				$('#chat-container').html(response);
				sidebarChat();
				profilePhoto();
				scroller();
				$('#chat-filter').val(5).change();
			}
		});		
}
function updateLastTypedTime() {
    lastTypedTime = new Date();
}
function refreshTypingStatus(user) {
	console.log('typing started');
    if (!$('#chat-message').is(':focus') || $('#chat-message').text() == '') {
       	var message = user_info.id+','+user+','+0;
       	console.log('typing ended');
       	$.get( gUrl, { action: 'typing', query: message } );
    } else {
    	var t = new Date().getTime() - lastTypedTime.getTime();
    	t = parseInt(t);
    	if( t > typingDelayMillis){
	    	updateLastTypedTime();
	    	console.log('typing more');
	    	var message = user_info.id+','+user+','+1;
			$.get( gUrl, { action: 'typing', query: message } );
		}
    }
}
function current_chat(user) {
	var mob = 0;
	if (mobile == true){
		mob = 1	
	}
	channel.unbind();
	//setInterval(refreshTypingStatus, 1000);
	var typing = 'typing'+user_info.id+user;
    channel.bind(typing, function(data) {
    	if(data.t == 1){
    		console.log('typing');
    		$('.iswriting').fadeOut(); 
    		$('.isRead').hide();
    		$('.iswriting').fadeIn();
    	} else {
			console.log('stop typing');
			$('.iswriting').hide();
			$('.iswriting').hide();
    	}  	   
    });
	var event = 'chat'+user_info.id+user;
	channel.bind(rtnotification, function(data) {  
		if(data.notification_chat != false){	   
			$('#usersFriends').html(data.notification_chat);
			scroller();
			profilePhoto();
			if(data.id == current_user_id){
				$('[data-chat]').removeClass('brick--outline');
				$('#user'+data.id).addClass('brick--outline');	
				$('#mark'+data.id).remove();				
			}			
			if(data.id != current_user_id){	
				$('#notiSound')[0].play();		
				var a = parseInt(data.unread);								  
				title = a;
		        $.ajax({
		            url: request_source()+'/belloo.php', 
		            data: {
		                action:"last_messages"
		            },  
		            type: "post",
		            success: function(response) {
		                $('.chat__wrapper').html(response);
		            }
		        }); 
				$('#chatCount').text(title); 
				$('#chatCount').fadeIn();
				$('#user'+current_user_id).addClass('brick--outline');	
				document.title = '( '+title+' ) '+ site_title();
				console.log(data);
				if(url != 'chat'){
					pushNotif(data);
				}
			}
		}
	});	
    channel.bind(event, function(data) {
    	console.log('message recieved, stop typing');
		$('.iswriting').hide();
		if(data.id == current_user_id){
			$.ajax({
				data: {
					action: "read",
					id: data.id
				},		 
				url: request_source()+'/chat.php',	
				type:  'post',
				dataType: 'JSON',
				success: function(response) {	
				},
			});			
			$('.chat').mCustomScrollbar("destroy");
			$(".chat").append(data.chatHeaderRight);							
			$('#chatSound')[0].play();
			scroller();
			profilePhoto();	
		}     
    });
    /*	
	$.ajax({
		data: {
		action: "current",	
		uid: user,
		mobile: mob
		},		 
		url: request_source()+'/chat.php',	
		type:  'post',
		dataType: 'JSON',
		success: function(response) 
		{	
		if(response.result == 1){
				if(mobile == true){
					$(".list-chats").append(response.chat);
					$('html, body').animate({
						  scrollTop: $("#bottom").offset().top
					}, 1000);							
				} else {
					$('.chat').animate({
						  scrollTop: 10000
					}, 500);											
					$(".chat").append(response.chat);							
					$('#chatSound')[0].play();						
				}
				profilePhoto();
			}
		},
		complete: function() {		
			current_user_chat = setTimeout(function() { current_chat(current_user) }, 3000);	
		}
	});
	*/
}
$('[data-premium]').on("click", function() {
		if($('#payment_module').is(':visible')) {
			$('#payment_module').hide();
		} else {
			$('#payment_module').show();
		}
});	
function rightChatLink(id,c){	
	$('[data-chat]').removeClass('brick--outline');
	$('#user'+id).addClass('brick--outline');	
	$('#mark'+id).remove();		
	var value = c;		
	var a = parseInt($('#chatCount').text());
	var b = parseInt(value);
	var chatCount = a - b;
	$('#chatCount').text(chatCount);
	if(chatCount <= 0){ 
		$('#chatCount').hide();			
	}
	$('#chat-container').css("opacity","0.5");
	$.ajax({
		url: request_source()+'/user.php', 
		data: {
			action:"chat-inchat",
			id : id
		},	
		type: "post",
		dataType: 'JSON',			
		success: function(response) {
			$('.chat').mCustomScrollbar("destroy");
			$('#chat-container').html(response.chat);
			profile_info = response.profile;
			console.log(profile_info);
			$('#chatHeader').html(response.chatHeader);
			$('#chatHeaderRight').html(response.chatHeaderRight);
			$('#chat-container').css("opacity","1");
			$('#r_id').val(profile_info.id);
			$('#rid').val(profile_info.id);
			$('#writingPhoto').attr('data-src',profile_info.profile_photo);
			$('#writingName').text(profile_info.first_name);
			$('#readPhoto').attr('data-src',profile_info.profile_photo);
			$('#readName').text(profile_info.first_name);
			if(response.read == 1){
				var a = site_lang[532]['text']+' <i class="icon ion-android-done-all" style="font-size:15px"></i>';
				$('#readStatus').html(a);
			} else {
				$('#readStatus').text(site_lang[533]['text']);
			}		
			current_user = profile_info.id;
			document.title = site_title();
			$("#chat-message").focus();
			profilePhoto();
			scroller();								
			profilePhoto();		
			game_btns2();
			var m = $( "#me" ).length;
			var y = $( "#you" ).length;
			if(m == 0){
				$('.isRead').hide();
			}
			if(m >= 1 && y <= 0){
				$('.chat-gifts').show();
			} else {
				$('.chat-gifts').hide();
			}
			current_chat(profile_info.id);
			window.history.pushState("chat",site_title(),site_config.site_url+'chat/'+profile_info.id+'/'+profile_info.link);				
		}
	});			
}
emojione.ascii = true
function emojify(elArg){ 
 function placeCaretAtEnd(el, moveTo) {
    el.focus()
    if (typeof window.getSelection != "undefined"
            && typeof document.createRange != "undefined") {
        var range = document.createRange()
        // range.selectNodeContents(el)
        range.setStartBefore(moveTo) //this does the trick
        range.collapse(false)
        var sel = window.getSelection()
        sel.removeAllRanges()
        sel.addRange(range)
    }
}
$.each(elArg.childNodes, (i,e)=>{
var node = e
var nodeIndex = i
var ascii = new RegExp(emojione.regAscii)
var short = new RegExp(emojione.regShortNames)
var combination = new RegExp(ascii.source+'|'+short.source , 'g') 
var matches = node.textContent.match(combination);
if(matches){
	var e =  matches[0]
	var start = node.textContent.indexOf(e)
	var end = node.textContent.indexOf(e)+e.length
	var stringToConvert = node.textContent.slice(start, end)
	var temp_container = document.createElement('div')
	temp_container.innerHTML = emojione.toImage(stringToConvert)
	var emo = $(temp_container).find('.emojione').get(0) || temp_container.firstChild
	var beforeText = document.createTextNode(node.textContent.slice(0, start))
	var afterText = document.createTextNode(node.textContent.slice(end))
	node.parentNode.insertBefore(beforeText, node)
	node.parentNode.insertBefore(afterText, node.nextSibling)
	node.parentNode.replaceChild(emo, node)
	placeCaretAtEnd(elArg, emo.nextSibling)
		emojify(elArg) // check for other
	}
	})
}
function chatMessage(){
	$('#chat-send').click(function(e) {
		$('#c-send').submit();							 
	});
	var m = $( "#me" ).length;
	var y = $( "#you" ).length;
	if(m == 0){
		$('.isRead').hide();
	}
	if(m >= 1 && y <= 0){
		$('.chat-gifts').show();
	} else {
		$('.chat-gifts').hide();
	}
	$("#chat-message").on('keydown', function(e) {  
	    if(e.keyCode == 13){
	        e.preventDefault();
	        $('#c-send').submit();
	    }
	});	
	$("#chat-message").focus();
	$('#chat-message').on('input change', e=>{
	  emojify($('#chat-message').get(0));
	});
	$('#send-photo').on('click', function(e){
		 e.preventDefault();
		$("#photo-to-send").click(); 
	});
	$("#photo-to-send").change(function() {
		$("#sendPhoto").submit();
	});
	$('#sendPhoto').submit(function() { 
			$(this).ajaxSubmit(sendPhoto);  			
			return false; 
	});	
	var r_id = $('#r_id').val();
	$("#chat-message").on('keydown', function(e) {
		refreshTypingStatus(r_id)
	});
	current_chat(r_id);		
	$('#c-send').submit(function(e) {
		e.preventDefault();
		var r_id = $('#r_id').val();
		var message = $("#chat-message").html().replace(/&nbsp;/g, '');		
		var mob = 0;
		if (mobile == true){
			mob = 1;
		}	
		var me = Math.floor(Math.random() * 10000000);  		
		if(message.length == 0){ return false};		
		var str = $("#chat-message").text();	
		if(($.trim( str )).length==0){ return false};	
		$.ajax({ 
			type: "POST", 
			dataType: "JSON",
			url: request_source() + "/chat.php",
			data: {
				action : "send",
				r_id : r_id,
				message: message,
				mobile : mob
			},
			beforeSend: function(){
				var n = $( ".js-message-block" ).length;
				$('.isRead').hide();
				var m = $( "#me" ).length;
				var y = $( "#you" ).length;
				if(m == 0){
					$('.isRead').hide();
				}				
				if(m == 0 && y == 0){
					newChat();
				}
				var message2 = message;
				$('.chat').append('<div class="js-message-block" data-me="'+me+'" style="opcaity:0.5" id="me"><div class="message"><div class="brick brick--xsm brick--hover"><div class="brick-img profile-photo" data-src="'+ user_info.profile_photo +'"></div></div><div class="message__txt"><span class="lgrey message__time" style="margin-right: 15px;"></span><div class="message__name lgrey">'+ user_info.first_name +'</div><p class="montserrat chat-text">'+message2+'</p></div></div></div>	')					
				$('.chat').mCustomScrollbar("destroy");
				profilePhoto();
				scroller();							
				$('#chat-message').text("");
				if(m >= 1 && y <= 0){
					$('.chat-gifts').show();
				}
			},
			success: function(response){								
				$("[data-me="+me+"]").html(response.chat);											
				//$('.chat').mCustomScrollbar("destroy");
				scroller();					
				profilePhoto();					
			}
		});	
	});	
}
function newChat(){
	$.ajax({ 
		type: "POST",
		url: request_source() + "/chat.php",
		data: {
			action : "today"
		},
		success: function(response){	
		}
	});			
}
function profileForms(){
	locInitialize();
	$('#add-credits').click(function(){
		if($('#payment_module').is(':visible')) {
			$('#payment_module').hide();
		} else {
			$('#payment_module').show();
		}
	});	
	$('#update-profile').submit(function(e) {
		e.preventDefault();	
		var findme = "Error";
		$.ajax({ 
			data:  $(this).serialize(),
			url:   request_source()+'/user.php',
			type:  'post',
			beforeSend: function(){	
			$('#update-error').hide();
			$('#update-success').hide();
			$('#upd-btn').html('Working..');
			},
			success: function(response){
				if ( response.indexOf(findme) > -1 ) {
					response = response.replace('Error','');
					$('#update-error').html(response);
					$('#update-error').fadeIn();
					$("#upd-btn").html(site_lang[135]['text']);
				} else {
					$('#update-success').html(site_lang[203]['text']);
					$('#update-success').fadeIn();
					$("#upd-btn").html(site_lang[135]['text']);
				}					
			}
		});	
	});
	$('#change-password').submit(function(e) {
		e.preventDefault();	
		var findme = "Error";
		$.ajax({ 
			data:  $(this).serialize(),
			url:   request_source()+'/user.php',
			type:  'post',
			beforeSend: function(){	
			$('#change-pwd-btn').html('Working..');
			},
			success: function(response){
				if ( response.indexOf(findme) > -1 ) {
					alert(response);
					$("#change-pwd-btn").html(site_lang[130]['text']);
				} else {
					alert(site_lang[336]['text']);
					$("#change-pwd-btn").html(site_lang[130]['text']);
				}					
			}
		});	
	});	
	$('#delete-acc').click(function(e) {
		swal({
			title: site_lang[204]['text'],
			text: site_lang[205]['text'],
			confirmButtonText: site_lang[206]['text'],				
			type: "warning",
			showCancelButton: true,				
			},
			function(){
				$.ajax({ 
					data: {
						action: 'delete_profile'	
					},
					url:   request_source()+'/user.php',
					type:  'post',
					beforeSend: function(){	
					},
					success: function(response){
						window.location.href = site_config.site_url;
					}
				});	
			});			
	});			
}
var placeSearch, autocomplete;
var componentForm = {
  locality: 'long_name',
  country: 'long_name'
};
function locInitialize() {
		TeleportAutocomplete.init('#loc').on('change', function(value) {
			var lat = value.latitude;
			var lng = value.longitude;
			var city = value.name;
			var country = value.country;
			var cityID = value.geonameId;
			$.ajax({
				data: {
					action: "update_user_meet",
					lat: lat,
					lng: lng,
					city: city,			
					country: country 
				},
				url:   request_source()+'/belloo.php',
				type:  'post',
				success:  function (response) {
					$('#spotlightUpdate').fadeOut('fast');
					$('#spotlightUpdate').html(response);
					$('#spotlightUpdate').fadeIn();
				}
			});	
		});
}
function fillInAddress() {
  var place = autocomplete.getPlace();
  for (var component in componentForm) {
	document.getElementById(component).value = '';
	document.getElementById(component).disabled = false;
  }
var lat = place.geometry.location.lat(),
	lng = place.geometry.location.lng();
	document.getElementById('lat').value = lat;
	document.getElementById('lng').value = lng;
  for (var i = 0; i < place.address_components.length; i++) {
	var addressType = place.address_components[i].types[0];
	if (componentForm[addressType]) {
	  var val = place.address_components[i][componentForm[addressType]];
	  document.getElementById(addressType).value = val;
	}
  }
}
function game_start(){
if(game_array != ''){
			if(mobile == true){
			$("#dis_name").html('<a href="mobile.php?page=profile&id='+game_array[0].id+'"><b>'+ game_array[0].name +'</b>, '+ game_array[0].age +' <span style="font-size:12px;">'+ game_array[0].status +'</span></a>');
			} else {
			$("#dis_name").html('<a href="#" onClick="goToProfile('+game_array[0].id+')" style="color:#222"><b>'+ game_array[0].name +'</b>, '+ game_array[0].age +' <span style="font-size:12px;">'+ game_array[0].status +'</span></a>');
			$("#dis_report").click(function(){ reportUser(game_array[0].id,'"'+game_array[0].name+'"','"'+game_array[0].photo+'"'); });
			$("#dis_block").click(function(){ reportUser(game_array[0].id,'"'+game_array[0].name+'"','"'+game_array[0].photo+'"'); });	
			$("#dis_chat").click(function(){ goToChat(game_array[0].id); });	
			}
			//$("#dis_profile_photo").attr('data-src', game_array[0].photo);
			$(".like-top").attr('data-id', game_array[0].id);
			$(".nolike-top").attr('data-id', game_array[0].id);
			if(mobile == true){
			$("#dis_distance").html(game_array[0].distance + ' KM');
			} else {
			  //$("#dis_fans").html(game_array[0].total);	
			}
			$("#dis_city").html(game_array[0].city);
			galleria_photos = game_array[0].photos;
			profilePhoto();			
			startGalleria(galleria_photos);		
} else {
	$.ajax({
		data: {
			action: "game",
		},
		url:   request_source()+'/belloo.php',
		type:  'post',
		dataType: 'JSON',
		success:  function (response) {	
			game_array = response;
			response.forEach(function(entry) {
				var photos = entry.photos;					  
				photos.forEach(function(photo) {
					$(".preload-photos").append("<img src="+photo.image+" style='opacity:0'/>");
				});												  
			});				
			if(mobile == true){
			$("#dis_name").html('<a href="mobile.php?page=profile&id='+game_array[0].id+'"><b>'+ game_array[0].name +'</b>, '+ game_array[0].age +' <span style="font-size:12px;">'+ game_array[0].status +'</span></a>');
			} else {
			$("#dis_name").html('<a href="#" onClick="goToProfile('+game_array[0].id+')" style="color:#222"><b>'+ game_array[0].name +'</b>, '+ game_array[0].age +' <span style="font-size:12px;">'+ game_array[0].status +'</span><div id="dcheck"></div></a>');
			$("#dis_report").click(function(){ reportUser(game_array[0].id,'"'+game_array[0].name+'"','"'+game_array[0].photo+'"'); });
			$("#dis_block").click(function(){ reportUser(game_array[0].id,'"'+game_array[0].name+'"','"'+game_array[0].photo+'"'); });	
			$("#dis_chat").click(function(){ goToChat(game_array[0].id); });	
			}
			//$("#dis_profile_photo").attr('data-src', game_array[0].photo);
			$(".like-top").attr('data-id', game_array[0].id);
			$(".nolike-top").attr('data-id', game_array[0].id);
			if(mobile == true){
			$("#dis_distance").html(game_array[0].distance + ' KM');
			} else {
			  //$("#dis_fans").html(game_array[0].total);	
			}
			$("#dis_city").html(game_array[0].city);
			galleria_photos = game_array[0].photos;
			profilePhoto();			
			startGalleria(galleria_photos);
		}
	});	
}
}
function game_btns2(){
	$('.like-top').click(function(){								  
		if ($('.slider-profile').hasClass('opened')) {
			slider.classList.add('closed');
			slider.classList.remove('opened');
		}		
		var uid = $(this).attr('data-id');
		$('.like-top').attr('src',theme_source()+'/images/liked.jpg');	
		if(url == 'profile' || url == 'chat'){
			$('.like-top').attr('src',theme_source()+'/images/liked.jpg');
			$('.nolike-top').attr('src',theme_source()+'/images/noliked.jpg');					
		}else{
			$('.like-top').attr('src',theme_source()+'/images/liked.jpg');
			setTimeout(function(){
				$('.like-top').attr('src',theme_source()+'/images/like.jpg');
				game_array.splice(0, 1);
				game_start();	
			},250);
		}
		$.ajax({
			url: request_source()+'/user.php', 
			data: {
				action:"game_like",
				id : uid,
				like: 1
			},	
			type: "post",
			beforeSend: function(){
			},
			success: function(response) {					
			},
			complete: function(){
			}
		});						
	});	
	$('.nolike-top').click(function(){
		if ($('.slider-profile').hasClass('opened')) {
			slider.classList.add('closed');
			slider.classList.remove('opened');
		}									  
		var uid = $(this).attr('data-id');
		$('.nolike-top').attr('src',theme_source()+'/images/noliked.jpg');	
		if(url == 'profile' || url == 'chat'){
			$('.like-top').attr('src',theme_source()+'/images/liked.jpg');
			$('.nolike-top').attr('src',theme_source()+'/images/noliked.jpg');	
		}else{
			$('.nolike-top').attr('src',theme_source()+'/images/noliked.jpg');
			setTimeout(function(){
			$('.nolike-top').attr('src',theme_source()+'/images/nolike.jpg');	
				game_array.splice(0, 1);
				game_start();	
			},250);
		}
		$.ajax({
			url: request_source()+'/user.php', 
			data: {
				action:"game_like",
				id : uid,
				like: 0
			},	
			type: "post",
			success: function(response) {				
			},
			complete: function(){
			}
		});						
	});			
}
//Videocall system
function updatePeer(peer) {
  $.ajax({
	url: request_source()+'/videocall.php', 
	data: {
		action:"update",
		peer: peer
	 },	
	type: "post",
	success: function(data) {	
	}
  });
}
function setInVideoCall() {
  $.ajax({
	url: request_source()+'/videocall.php',
	data: {
		action:"invideocall"
	 },			
	type: "post",
	success: function(data) {	
	}
  });
}
function peerConnect(con) {
	if(con == 1){
		peer.destroy();
	}
    navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia;		
	peer = new Peer({host: ''+site_config['videocall']+'', secure:true, port:443, key: 'peerjs'});
	peer.on('open', function(){
		updatePeer(peer.id);
	});
	peer.on('close', function(){
	});	
	peer.on('disconnected', function() {										 
	});	
	peer.on('call', function(call){
	$.ajax({
		url: request_source()+'/videocall.php', 
		data: {
		action: "income",
		peer: call.peer,		
		 },		
		type: "post",
		dataType: 'JSON',	
		success: function(data) {
			$("#turn-video").click(function(){
				$(this).toggleClass('sbulb');
				window.localStream.getVideoTracks()[0].enabled = !(window.localStream.getVideoTracks()[0].enabled);
				var check = $(this).hasClass( "sbulb" );
				if(check === true){
					$('.profile-photo1 video').hide();
					$('.profile-photo1 img').show();							
				}else {
					$('.profile-photo1 video').show();
					$('.profile-photo1 img').hide();							
				}
			});
			$("#turn-mic").click(function(){
					$(this).toggleClass('sbulb');					  
					window.localStream.getAudioTracks()[0].enabled = !(window.localStream.getAudioTracks()[0].enabled);
			});				
			video_user = data.id;
			$('#call-name').html(data.name);				
			$('.ball').css("background-image",'url(' + data.photo + ')');
			$('.videopb').css("background-image",'url(' + data.photo + ')');
			$('#text_videocall').html(data.name+" " +site_lang[337]['text']);
			$('.videocall-notify').fadeIn();
			called = true;
			callSound = setInterval(function(){
				$('#callSound')[0].play();
			},4000);
			setTimeout(function() {
			 $('body').toggleClass('anim-start');
			}, 300);
			$("#acept-video").click(function(){ aceptcall(call); });
			$("#reject-video").click(function(){ rejectVideo(); });
		}
	});						 
	setInVideoCall();
	});
	peer.on('error', function(err){
		if(err.type === "network") {						
		} else {
		}
	});
}
peerConnect(0);
function rejectVideo(){	
	if(in_videocall === true){window.localStream.stop(); window.localStream = null;}
	peerConnect(1);
	$('.videocall-notify').fadeOut();
	in_videocall = false;
	setTimeout(function() {
 		$('body').toggleClass('anim-start');
	}, 2000);
	clearInterval(callSound);
	$('#callSound')[0].pause();		
}
setInterval(function(){ if(in_videocall === false){peerConnect(1);} }, 50000);
function videocall(callfrom,callto) {
var pid = "";	
$.ajax({
	url: request_source()+'/videocall.php', 
	data: {
	action: "getpeerid",
	id: callto,		
	 },		
	type: "post",
	dataType: 'JSON',	
	success: function(data) {	
			pid = data.peer;
			if(data.status == 2) {
				swal({   title: "</3",   text: data.name + ' ' + site_lang[207]["text"],   imageUrl: data.photo }, function(){ });
				return false;
			}
			else if(data.status == 0) {	
				swal({   title: "T_T",   text: data.name + ' ' + site_lang[208]["text"],   imageUrl: data.photo }, function(){ });
				return false;
			} else {
			in_videocall = true;
			setInVideoCall();				
			$('#call_status').html(site_lang[209]["text"]);
			$('#call-name').html(data.name);	
			startVideoCall(pid);
			$('.videocall-container').show();
			callSound = setInterval(function(){
				$('#callSound')[0].play();
			},4000);
			if(mobile == true){		
				$('.ball').css("background-image",'url(' + data.photo + ')');
				$('.videopb').css("background-image",'url(' + data.photo + ')');
				setTimeout(function() {
					$('body').toggleClass('anim-start');
				}, 300);				
			} else {
				$('.profile-photo2').prop('src', data.photo);
				$('.videopb').css("background-image",'url(' + data.photo + ')');
				$('.avatar-profile').hide();				   
				$('.profile-photo2').animate({								 
					left: '39%',
					top: '25%'
					}, 1000, function() {
				});					
			}		
		}			
	}
});	
}
function giftBtn(){
	$('.send-gift').click(function(){
		var gsrc = $(this).attr('data-src');
		gift_price = $(this).attr('data-gprice');
		$('#g_src').val(gsrc);
		$('#g_id').val(profile_info.id);
		$('#g_price').val(gift_price);
		$('[data-gift-img]').attr('src',gsrc);
		$('[data-gift-price]').text(gift_price);
		$('#send-gift').show();
	});	
	$('#g_close').click(function(){
		$('#send-gift').hide();
	});
}
$('#send-gift-btn').on('click', function(e){
	 e.preventDefault();
	 if(gift_price > user_info.credits){
		$('#send-gift').hide();
		$('#payment_module').show();
	 } else {
		$("#send-gift-form").submit(); 			 
	 }
});
$('#send-gift-form').submit(function(e) {
	e.preventDefault();	
	var gift = $('#g_src').val();
	var findme = 'error';
	if(gift.length == 0){ alert(site_lang[198]['text']); return false};		
	$.ajax({ 
		type: "POST", 
		url: request_source() + "/user.php",
		data: $(this).serialize(),
		success: function(response){
			if ( response.indexOf(findme) > -1 ) {
				alert(site_lang[199]['text']);
			} else {
				window.location.href = site_config.site_url+'chat/'+profile_info.id+'/'+profile_info.link;
			}
		}
	});	
});
function showChatGifts(){
	if($('.chat-gifts').is(':visible')) {
		var m = $( "#me" ).length;
		var y = $( "#you" ).length;
		if(m >= 1 && y <= 0){
		} else {
			$('.chat-gifts').hide();
		}			
	} else {
		$('#giftUserName').text(profile_info.first_name);
		$('.chat-gifts').show();
	}
}
function videocallBtn(){
	$( "#videocall" ).click(function(e) {
		e.preventDefault();
		if(in_videocall === true) {
			swal({   title: "Error", text: site_lang[210]["text"],   type: "error"}, function(){ });	
			return false;	
		}
		if(user_info.premium == 0 && account_basic.videocall == 0) {
			swal({   title: "Error", text: site_lang[211]["text"],   type: "error"}, function(){ $('#payment_module').show(); });	
			return false;	
		}			
		video_user = $('#r_id').val();
		videocall_user = $('#r_id').val();
		$.ajax({
			url: request_source()+'/videocall.php', 
			data: {
				action:"check",
				id: videocall_user
			 },	
			type: "post",
			success: function(data) {	
				if(data == 1){
					videocall(peer.id,$('#r_id').val());
				} else {
swal({   title: profile_info.first_name+' ' +site_lang[382]["text"] ,   text: profile_info.first_name+' '+ site_lang[383]["text"],   imageUrl: profile_info.profile_photo,   showCancelButton: false,  confirmButtonText: site_lang[384]["text"],   closeOnConfirm: true }, function(){});						
				}
			}
		});	
	});	
}
$('#end-call').click(function(){
	window.existingCall.close();
	window.location.reload();
});
function aceptcall(call) {
	in_videocall = true;
	//$('#callSound')[0].pause();
	$('#call_status').html(site_lang[209]["text"]);	
	$('.videocall-notify').fadeOut();										   
	$('.videocall-container').fadeIn();	
	$('.profile-photo2').animate({								 
		left: '39%',
		top: '25%'
		}, 1000, function() {
  	});		
  navigator.getUserMedia({audio: true, video: true}, function(stream){
	timer = setInterval(function () {
		document.getElementById("seconds").innerHTML = pad(++sec % 60);
		document.getElementById("minutes").innerHTML = pad(parseInt(sec / 60, 10));
	}, 1000);
	if(mobile == true){
    	$('#myCam').prop('src', (window.URL ? URL : webkitURL).createObjectURL(stream));
	}else {
		$('#my-video').prop('src', (window.URL ? URL : webkitURL).createObjectURL(stream));
	}
    window.localStream = stream;
	call.answer(window.localStream);		
	makeTheCall(call);	
	  }, function(){
			swal({
				title: site_lang[212]["text"],
				text: site_lang[213]["text"],
				type: "error",
				},
				function(isConfirm){
					if (isConfirm){
						location.reload();	
					}
				});	
		  });
}
function startVideoCall (callto) {
  // Get audio/video stream
  navigator.getUserMedia({audio: true, video: true}, function(stream){
    // Set your video displays
	if(mobile == true){
    	$('#myCam').prop('src', (window.URL ? URL : webkitURL).createObjectURL(stream));
	}else {
		$('#my-video').prop('src', (window.URL ? URL : webkitURL).createObjectURL(stream));
	}
    $('#call_status').html(site_lang[381]["text"]);
	timer = setInterval(function () {
		document.getElementById("seconds").innerHTML = pad(++sec % 60);
		document.getElementById("minutes").innerHTML = pad(parseInt(sec / 60, 10));
	}, 1000);		
	$("#turn-video").click(function(){
		$(this).toggleClass('sbulb');
		window.localStream.getVideoTracks()[0].enabled = !(window.localStream.getVideoTracks()[0].enabled);
		var check = $(this).hasClass( "sbulb" );
		if(check === true){
			$('.profile-photo1 video').hide();
			$('.profile-photo1 img').show();							
		}else {
			$('.profile-photo1 video').show();
			$('.profile-photo1 img').hide();							
		}
	});
	$("#turn-mic").click(function(){
			$(this).toggleClass('sbulb');					  
			window.localStream.getAudioTracks()[0].enabled = !(window.localStream.getAudioTracks()[0].enabled);
	});	
    window.localStream = stream;
	var call = peer.call(callto, window.localStream);
	makeTheCall(call);			
  }, function(){
	  	swal({
			title: site_lang[212]["text"],
			text: site_lang[213]["text"],
			type: "error",
			},
			function(isConfirm){
				if (isConfirm){
					location.reload();	
				}
			});	
	  });
}
function finishCall() {
	var minu = $('#minutes').text();
	var secu = $('#seconds').text();
	clearInterval(timer);
	$('.videocall-notify').fadeOut();
	$('.videocall-container').fadeOut();
	in_videocall = false;
	if(called == true){
		$('body').toggleClass('anim-start');
	}
	$('.videocall-container').fadeOut();
	$('#message_status').remove();
	window.localStream.stop();	
	window.localStream = null; 	
	window.location.reload();
	$(".chat-container").scrollTop(100000);
	clearInterval(callSound);
	$('#callSound')[0].pause();
}
function makeTheCall (call) {
  var in_call = false;
  if (window.existingCall) {
    window.existingCall.close();		
  }
  var photo = $('.profile-photo2').attr('src');
	setTimeout(function() {
			if(in_call == false) {
swal({   title: site_lang[214]["text"],   text: site_lang[215]["text"],   imageUrl: photo,   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: site_lang[216]["text"], cancelButtonText: site_lang[217]["text"],   closeOnConfirm: false }, function(){  location.reload(); });
			}
	}, 50000);	  
  call.on('stream', function(stream){
	in_call = true;
	clearInterval(callSound);
	$('#callSound')[0].pause();		
	if(mobile == true){
		$('#chatUserVideo').prop('src', (window.URL ? URL : webkitURL).createObjectURL(stream));
		$('.myCam').draggable();
		$('.video-profile').show();
	} else {
		$('#their-video').prop('src', (window.URL ? URL : webkitURL).createObjectURL(stream));
		$('#video-chat').prop('src', (window.URL ? URL : webkitURL).createObjectURL(stream));
		$('.profile-photo1').animate({								 
			left: '80%'
			}, 500, function() {
				$('.profile-photo2').hide();
				$('.video').show();
		});	
		$('#chat-call').on('click', function() {
		  $('.videocall-chat').show();
		  $('.videocall-chat').draggable();
		  $('.videocall-container').hide();
		});				
	}
  });
  window.existingCall = call;
  call.on('close', finishCall);	  
}	
$( ".videocall-chat" ).dblclick(function() {
	  $('.videocall-chat').hide();
	  $('.videocall-container').fadeIn();
});	
$( "#their-video" ).dblclick(function() {
	  $('.videocall-chat').fadeIn();
	  $('.videocall-chat').draggable();
	  $('.videocall-container').hide();
});	
function clean_galleria() {
	var data = [];
	Galleria.run('.gall', {
		dataSource: data
	});		
}	
function escapeHtml(text) {
  var map = {
	'&': '&amp;',
	'<': '&lt;',
	'>': '&gt;',
	'"': '&quot;',
	"'": '&#039;'
  };
  return text.replace(/[&<>"']/g, function(m) { return map[m]; });
}
function detect_device() {
	var w = window,
		d = document,
		e = d.documentElement,
		g = d.getElementsByTagName('body')[0],
		x = w.innerWidth || e.clientWidth || g.clientWidth,
		y = w.innerHeight|| e.clientHeight|| g.clientHeight;
	var isiPhone = 		navigator.userAgent.toLowerCase().indexOf("iphone");
	var isiPad = 		navigator.userAgent.toLowerCase().indexOf("ipad");
	var isiPod = 		navigator.userAgent.toLowerCase().indexOf("ipod");
	var isiAndroid = 	navigator.userAgent.toLowerCase().indexOf("android");
	if(isiPhone > -1 || isiPad > -1 || isiPod > -1 || isiAndroid > -1 && mobile == false){
		window.location='mobile.php?page=login';
	}
}
window.onresize = function() {
	var w = window,
		d = document,
		e = d.documentElement,
		g = d.getElementsByTagName('body')[0],
		x = w.innerWidth || e.clientWidth || g.clientWidth,
		y = w.innerHeight|| e.clientHeight|| g.clientHeight;	
	if(x <= 700 && mobile == false){
		window.location=site_config.site_url+'mobile.php?page=index';	
	}
	if(x > 701 && mobile == true){
		window.location=site_config.site_url+'index.php?page=index';	
	}		
};
$.ajax({
	url: request_source()+'/user.php', 
	data: {
		action:"interest"
	},	
	type: "post",	
	dataType: "JSON",
	success: function(response) {
		response.forEach(function(entry) {
			searchIndex.push(entry);
		});
	}
});		
$('body').keyup(function(e) {
		switch (e.keyCode) {
			case 13:  
				if($('#searchBox').is(':focus')){
					var html = $('#new-int').html();
					var name = $('#searchBox').val();
					$('#new-int').html(html+'<div class="int"><span>'+ $('#searchBox').val() +'</span></div>');
					$('#searchBox').val('');
					$('#searchResults').addClass('hiddden');
					$.ajax({
						url: request_source()+'/user.php', 
						data: {
							action:"add_interest",
							name: name
						},	
						type: "post",			
						success: function(response) {
						}
					});						
				}
			break;			
		}
});		
function pad(val) {
	return val > 9 ? val : "0" + val;
} 
var w = window,
	d = document,
	e = d.documentElement,
	g = d.getElementsByTagName('body')[0],
	x = w.innerWidth || e.clientWidth || g.clientWidth,
	y = w.innerHeight|| e.clientHeight|| g.clientHeight;
var left = x/2 - 38;
$("#sendmessage input").focusout(function(){
	if($(this).val() == ""){
		$(this).val("Send message...");
	}
});
$("#sendmessage input").focus(function(){
	if($(this).val() == "Send message..."){
		$(this).val("");
	}
});	
$(".friend").each(function(){		
	$(this).click(function(){
		var childOffset = $(this).offset();
		var parentOffset = $(this).parent().parent().offset();
		var childTop = childOffset.top - parentOffset.top;
		var clone = $(this).find('img').eq(0).clone();
		var top = childTop+12+"px";
		$(clone).css({'top': top}).addClass("floatingImg").appendTo("[data-chatbox]");									
		setTimeout(function(){$("#profile p").addClass("animate");$("#profile").addClass("animate");}, 100);
		setTimeout(function(){
			$("#chat-messages").addClass("animate");
			$('.cx, .cy').addClass('s1');
			setTimeout(function(){$('.cx, .cy').addClass('s2');}, 100);
			setTimeout(function(){$('.cx, .cy').addClass('s3');}, 200);			
		}, 150);														
		$('.floatingImg').velocity({
			'width': "68px",
			'left': left,
			'top':'20px'
		}, 200);
		var name = $(this).find("p strong").html();
		var email = $(this).find("p span").html();														
		$("#profile p").html(name);
		$("#profile span").html(email);			
		$(".message").not(".right").find("img").attr("src", $(clone).attr("src"));									
		$('#friendslist').velocity("fadeOut", { duration: 300 });
		$('#chatview').velocity("fadeIn", { duration: 500 });
		$('#close').unbind("click").click(function(){				
			$("#chat-messages, #profile, #profile p").removeClass("animate");
			$('.cx, .cy').removeClass("s1 s2 s3");
			$('.floatingImg').velocity({
				'width': "40px",
				'top':top,
				'left': '12px'
			}, 200, function(){$('.floatingImg').remove()});				
			setTimeout(function(){
				$('#chatview').velocity("fadeOut", { duration: 300 });
				$('#friendslist').velocity("fadeIn", { duration: 500 });			
			}, 50);
		});
	});
});			