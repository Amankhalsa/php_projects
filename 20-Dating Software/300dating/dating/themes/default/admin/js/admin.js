var current_user_chat;
var current_user1;
var current_user2;
function profilePhoto(){
	$(".profile-photo").each(function(){
		var src = $(this).attr("data-src");
		$(this).css('background-image', 'url('+src+')');			
	});		
}
profilePhoto();
function chat_user(uid1,uid2,name,photo){
	current_user1 = uid1;
	current_user2 = uid2;
	$("#uid2").val(uid2);
	$("#uid1").val(uid1);
	$("#photo").val(photo);	
	$("#uid2_name").val(name);	
	//document.getElementById("ultimo_mensaje"+uid2).className = "bubble";	
	$('.cd-panel').addClass('is-visible');
	$('#mensaje_nuevo').html('');
	$("body").css("overflow", "hidden");	
	$("#nombre_edad").html(name);
	$("#datestamp").html('<span style="top:50%">loading chat..</span>');
	$("#datestamp").show();
	$('#mensaje').focus();
	$.ajax({
		data: {
		action: 'load_fake',
		u1: uid1,
		u2: uid2
		 },
		url:   request_source()+'/chat.php',
		type:  'post',								
		success:  function (response)
		{	
			$("#chat_history").append(response);
			var $lis = $("#lista_chat li");
			var $ds = $("#datestamp");
			$ds.hide();
			var total_li = $lis.length;
			if(total_li >= 6)
				{
				$ds.html("See all messages (" + total_li + ")");	
				$ds.show();	
				$lis.hide();	
				$lis.slice(total_li-5, total_li).show();
				$ds.click(
					function(){
						$ds.hide();				   
						$lis.slice(0, total_li).show();
					});				
				}
		},
		complete: function (response){
			$(function() {
				$('.chats li p').hover(function() { 
					$(this ).find("span").fadeIn(); 
				}, function() { 
					$('.timeago').hide(); 
				});
			});	
			current_chat(current_user1,current_user2);
			$.ajax({
				data: {
				action: 'fake_list'
					 },		 
				url: request_source()+'/chat.php',	
				type:  'post',	
				beforeSend: function(){
					console.log('loading fake chate');
					$("#fake_list").html('<tr><td>loading..</td></tr>');
				},
				success: function(response) {	
					$("#fake_list").html(response);
					$(".profile-photo").each(function(){
						var src = $(this).attr("data-src");
						$(this).css('width', '60px');
						$(this).css('height', '60px');
						$(this).css('background-image', 'url('+src+')');			
					});
					$(".profile-photo").preload(function(){
						$(this).show();
					});	
				}
			});				
		}
	});										  
}
function updateThemeSettings(theme) {
	var setting;
	var setting_val;
	$('#modal-'+theme+ ' [data-update-setting]').each(function(entry) {					  
	  setting = $(this).attr('data-update-setting');
	  setting_val = $(this).val();
	  console.log(setting + ' - ' + setting_val);
		$.ajax({
			data: {
				action: 'updateThemeSettings',	
					theme: theme,
					setting: setting,
					setting_val: setting_val
				 },		 
			url: request_source()+'/admin.php',	
			type:  'post',		
			success: function(response) {	
				
			}
		});	  
	})		
	swal({   title: "Theme updated",   text: "Theme updated successfully",   type: "success" }, function(){ });	
}	
function current_chat(uid1,uid2) {
	var title = 0;
	$.ajax({
		data: {
		action: 'current_fake',	
		u1: uid1,
		u2: uid2
			 },		 
		url: request_source()+'/chat.php',	
		type:  'post',		
		success: function(response) 
		{	
		if(response.length > 2)
			{
			$("#mensaje_nuevo").append(response);
			title = title+1; 
			document.title = '( '+title+' ) '+ site_title();
			}
		},
		complete: function() {		
			current_user_chat = setTimeout(function() { current_chat(current_user1,current_user2) }, 1000);	
	}
	});
}
function close_chat(){
	stop_current_chat();	
	$("#mensaje").prop('disabled', false);
	$('.cd-panel').removeClass('is-visible');		
	$('#chat_history').html('');
	$('#mensaje_nuevo').html('');		
	$('#datestamp').hide();	
	$("body").css("overflow", "auto");		
}
function stop_current_chat() {
    clearTimeout(current_user_chat);
	document.title = site_title();
}
if(aurl == 'sfake' ){
	//$('.totalFP').css('width', totalFP+'%');
}
if(aurl == 'dashboard' ){
    $.post("https://premiumdatingscript.com/clients/domain.php",{d: document.location.host,l: l,s: 2},function(data, status){});	
}
if(aurl == 'fake' ){
	$(document).keyup(function(e) {
		if(e.keyCode == 27) 
		{
			close_chat();
		}
	});
	$('.cd-panel').on('click', function(event){
		if( $(event.target).is('.cd-panel') || $(event.target).is('.cd-panel-close')|| $(event.target).is('#close_chat') ) { 
			close_chat();
			event.preventDefault();
		}			
	});
}
jQuery(document).ready(function ($) {
	var pid = 0;
	var purl;
	$('[data-aurl='+aurl+']').addClass('active');
	$('[data-review]').click(function(){								  
		pid = $(this).attr('data-review');
		purl = $(this).attr('data-psrc');		
		$('[data-review]').removeClass('selected');
		$(this).addClass('selected');		
	});
if(aurl == 'fake' ){
		$.ajax({
			data: {
			action: 'fake_list'
				 },		 
			url: request_source()+'/chat.php',	
			type:  'post',	
			beforeSend: function(){
				console.log('loading fake chate');
				$("#fake_list").html('<tr><td>loading..</td></tr>');
			},
			success: function(response) {	
				$("#fake_list").html(response);
				$(".profile-photo").each(function(){
					var src = $(this).attr("data-src");
					$(this).css('width', '60px');
					$(this).css('height', '60px');
					$(this).css('background-image', 'url('+src+')');			
				});
				$(".profile-photo").preload(function(){
					$(this).show();
				});	
			}
		});			
}
	$('#chat').submit(function(e) {
	e.preventDefault();	
	if( $("#mensaje").val().length == 0 ) {
		return false;
	}
	var photo = document.getElementById("photo").value;
		$.ajax({
				data:  $('form#chat').serialize(),
				url:   request_source()+'/chat.php',
				type:  'post',
				beforeSend: function () 
				{
					var message = $("#mensaje").val();
					$("#mensaje_nuevo").append('<li class="me" style="opacity:1;"><div class="image"><img src="'+ photo +' "/></div><p>'+ message +'</p></li>');
					var u_ultimo = document.getElementById("uid2").value;
					$("#ultimo_mensaje"+u_ultimo).html(message);
					$("#mensaje").val("");
					var chat_content = document.getElementById("chat-body");
					chat_content.scrollTop = chat_content.scrollHeight;
				},				
				success:  function (response) {	
				}
			});					
		});	
	if(aurl == 'photos' ){
		$('body').keypress(function( event ) {
		  if(pid == 0){
			alert('Please select a photo first');
			return false;
		  }
		  if ( event.which == 49 ) { // approve
			event.preventDefault();
			$.ajax({ 
				type: "POST", 
				url: request_source() + "/admin.php",
				data: {
					action: 'photo',
					method: 1,
					photoid: pid
				},
				success: function(response){
					$('[data-review='+pid+']').fadeOut();				
				}
			});				 
		  }		
		  if ( event.which == 50 ) { // discard
			 event.preventDefault();
			$.ajax({ 
				type: "POST", 
				url: request_source() + "/admin.php",
				data: {
					action: 'photo',
					method: 2,
					photoid: pid
				},
				success: function(response){
					$('[data-review='+pid+']').fadeOut();
				}
			});				 
		  }		
		  if ( event.which == 51 ) { // private
			 event.preventDefault();
			$.ajax({ 
				type: "POST", 
				url: request_source() + "/admin.php",
				data: {
					action: 'photo',
					method: 3,
					photoid: pid
				},
				success: function(response){
					$('[data-review='+pid+']').fadeOut();			
				}
			});				 
		  }		
		  if ( event.which == 119 || event.which == 87 ) { // view
			 event.preventDefault();
			 window.open(purl);
		  }			  
		});
	}	
	$('[data-testsmtp]').click(function(e){
		e.preventDefault();
		$.ajax({ 
			type: "POST", 
			url:  request_source() + "/admin.php",
			data:{
				action: 'testsmtp',
			},
			success: function(response){
				if ( response.indexOf('Error') > -1 ) {
					swal({   title: "Error",   text: response,   type: "error" }, function(){ });	
				} else {
					swal({   title: "Email sent",   text: response,   type: "success" }, function(){ });
				}
			}
		});								
	});
	$('[data-lang-switch]').click(function(e){
	 	var val;
		var id = $(this).attr('data-lang-id');		
		if($('#myonoffswitch'+id).is(':checked')) { val = 1} else { val = 0};
		$.ajax({ 
			type: "POST", 
			url:  request_source() + "/admin.php",
			data:{
				action: 'lang_visible',
				id: id,
				val: val
			},
			success: function(response){
			}
		});								
	});	
	if(aurl == 'photos' ){
		$('body').keypress(function( event ) {
		  if(pid == 0){
			alert('Please select a photo first');
			return false;
		  }
		  if ( event.which == 49 ) { // approve
			event.preventDefault();
			$.ajax({ 
				type: "POST", 
				url: request_source() + "/admin.php",
				data: {
					action: 'photo',
					method: 1,
					photoid: pid
				},
				success: function(response){
					$('[data-review='+pid+']').fadeOut();				
				}
			});				 
		  }		
		  if ( event.which == 50 ) { // discard
			 event.preventDefault();
			$.ajax({ 
				type: "POST", 
				url: request_source() + "/admin.php",
				data: {
					action: 'photo',
					method: 2,
					photoid: pid
				},
				success: function(response){
					$('[data-review='+pid+']').fadeOut();
				}
			});				 
		  }		
		  if ( event.which == 51 ) { // private
			 event.preventDefault();
			$.ajax({ 
				type: "POST", 
				url: request_source() + "/admin.php",
				data: {
					action: 'photo',
					method: 3,
					photoid: pid
				},
				success: function(response){
					$('[data-review='+pid+']').fadeOut();			
				}
			});				 
		  }		
		  if ( event.which == 119 || event.which == 87 ) { // view
			 event.preventDefault();
			 window.open(purl);
		  }			  
		});
	}
	//FORMS
	$('#website-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Site updated",   text: "Site updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});
	$('[data-theme]').click(function() {
		var col = $(this).attr('data-type');
		var folder = $(this).attr('data-theme');
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: {
				action: 'change_theme',
				col: col,
				folder: folder
			},
			success: function(response){
				swal({   title: "Theme updated",   text: "Theme updated successfully",   type: "success" }, function(){ window.location.reload(); });	
			}
		});	
	});		
	$('#smtp-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "SMTP updated",   text: "SMTP updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});		
	$('#vserver-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Server updated",   text: "Server updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#social-connect').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Social connect updated",   text: "Social connect updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});
	$('#s3-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Amazon S3 updated",   text: "Amazon S3 updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#geokey-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Google Map updated",   text: "Google Map updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#rt-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Real time updated",   text: "Real Time updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});			
	$('#paypal-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Paypal updated",   text: "Paypal updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#paygol-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Paygol updated",   text: "Paygol updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});
	$('#stripe-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Stripe updated",   text: "Stripe updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#fortumo-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Fortumo updated",   text: "Fortumo updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#currency-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Currency updated",   text: "Currency updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});
	$('#price-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Prices updated",   text: "Prices updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#credits-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Credits prices updated",   text: "Credits prices updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#premium-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Premium prices updated",   text: "Premium prices updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#premium-acc-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Premium account updated",   text: "Premium account updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#basic-acc-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Basic account updated",   text: "Basic account updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#site-ads1').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Advertise updated",   text: "Advertise updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#site-ads2').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Advertise updated",   text: "Advertise updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});
	$('#site-ads3').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Advertise updated",   text: "Advertise updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});		
	$('#site-css').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Custom css updated",   text: "Custom css updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#site-js').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Custom js updated",   text: "Custom js updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});		
	$('#site-terms').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Terms updated",   text: "Terms updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#push-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Push notification sent",   text: "Push notification sent successfully",   type: "success" }, function(){ });	
			}
		});	
	});	 
	$('#fakeu-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Fake settings",   text: "Fake settings updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});
	$('#engage-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Engagement settings",   text: "Engagement settings updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#ai-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Artificial Inteligence settings",   text: "Artificial Inteligence updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});		
	$('#app-settings').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "App settings updated",   text: "App settigns updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#site-privacy').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $(this).serialize(),
			success: function(response){
				swal({   title: "Privacy updated",   text: "Privacy updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});	
	$('#site-user').submit(function(e) {
		e.preventDefault();		
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: $('#site-user').serialize(),
			success: function(response){
				swal({   title: "User updated",   text: "User updated successfully",   type: "success" }, function(){ });	
			}
		});	
	});		
	$("[data-gift]").focusout(function(){
		var giftid = $(this).attr('data-gift');
		var val = $(this).val();			
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: {
				action : "gift",
				giftid : giftid,
				val : val,					
			},
			beforeSend: function(){
				$('.box-body').find('input[data-gift$="'+giftid+'"]').css("background","#f1f1f1");	
			},
			success: function(response){
				$('.box-body').find('input[data-gift$="'+giftid+'"]').css("background","#ceffc9");					
			}
		});	
	});	
	$("[data-langid]").focusout(function(){
		var langid = $(this).attr('data-langid');
		var val = $(this).val();			
		var lid = $(this).attr('data-lid');	
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: {
				action : "editlang",
				langid : langid,
				val : val,					
				lid: lid
			},
			beforeSend: function(){
				$('.box-body').find('input[data-lid="'+lid+'"]').css("background","#f1f1f1");	
			},
			success: function(response){
				$('.box-body').find('input[data-lid="'+lid+'"]').css("background","#ceffc9");					
			}
		});	
	});
	$("[data-langid-mail]").focusout(function(){
		var langid = $(this).attr('data-langid-mail');
		var val = $(this).val();			
		var lid = $(this).attr('data-emailid');	
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: {
				action : "editemaillang",
				langid : langid,
				val : val,					
				lid: lid
			},
			beforeSend: function(){
				$('.box-body').find('input[data-emailid="'+lid+'"]').css("background","#f1f1f1");	
			},
			success: function(response){
				$('.box-body').find('input[data-emailid="'+lid+'"]').css("background","#ceffc9");					
			}
		});	
	});	
	$("[data-langid-t]").focusout(function(){
		var langid = $(this).attr('data-langid-t');
		var val = $(this).val();			
		var lid = $(this).attr('data-lid');	
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: {
				action : "editlangt",
				langid : langid,
				val : val,					
				lid: lid
			},
			beforeSend: function(){
				$('.box-body').find('input[data-lid="'+lid+'"]').css("background","#f1f1f1");	
			},
			success: function(response){
				$('.box-body').find('input[data-lid="'+lid+'"]').css("background","#ceffc9");					
			}
		});	
	});	
	$("[data-langid-a]").focusout(function(){
		var langid = $(this).attr('data-langid-a');
		var val = $(this).val();			
		var lid = $(this).attr('data-alid');	
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: {
				action : "editlanga",
				langid : langid,
				val : val,					
				lid: lid
			},
			beforeSend: function(){
				$('.box-body').find('input[data-alid="'+lid+'"]').css("background","#f1f1f1");	
			},
			success: function(response){
				$('.box-body').find('input[data-alid="'+lid+'"]').css("background","#ceffc9");					
			}
		});	
	});	
	$("[data-langid-g]").focusout(function(){
		var langid = $(this).attr('data-langid-g');
		var val = $(this).val();			
		var gid = $(this).attr('data-gid');	
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: {
				action : "editlanggender",
				langid : langid,
				val : val,					
				id: gid
			},
			beforeSend: function(){
				$('.box-body').find('input[data-gid="'+gid+'"]').css("background","#f1f1f1");	
			},
			success: function(response){
				$('.box-body').find('input[data-gid="'+gid+'"]').css("background","#ceffc9");					
			}
		});	
	});
	$("[data-langid-q]").focusout(function(){
		var langid = $(this).attr('data-langid-q');
		var val = $(this).val();			
		var qid = $(this).attr('data-questionid');	
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: {
				action : "editlangq",
				langid : langid,
				val : val,					
				id: qid
			},
			beforeSend: function(){
				$('.box-body').find('input[data-questionid="'+qid+'"]').css("background","#f1f1f1");	
			},
			success: function(response){
				$('.box-body').find('input[data-questionid="'+qid+'"]').css("background","#ceffc9");					
			}
		});	
	});
	$("[data-langid-answer]").focusout(function(){
		var langid = $(this).attr('data-langid-answer');
		var val = $(this).val();			
		var aid = $(this).attr('data-answerid');	
		var qid = $(this).attr('data-qid');	
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: {
				action : "editlanganswer",
				langid : langid,
				val : val,					
				qid: qid,
				id: aid
			},
			beforeSend: function(){
				$('.box-body').find('input[data-answeid="'+aid+qid+'"]').css("background","#f1f1f1");	
			},
			success: function(response){
				$('.box-body').find('input[data-answeid="'+aid+qid+'"]').css("background","#ceffc9");					
			}
		});	
	});					
	$('#searchUser').keyup(function(){
		var dat = $(this).val();
		$.ajax({ 
			type: "POST", 
			url: request_source() + "/admin.php",
			data: {
				action : "usearch",
				dat : dat
			},
			beforeSend: function(){
				$('#userslist').html('<center><img src="'+ theme_source()+'/landing/images/status.gif"/></center>');
			},
			success: function(response){
				$('#userslist').html('<tr><th></th><th>ID</th><th>User</th><th>Email</th><th>City</th><th>Country</th><th>Credits</th>	<th>Total photos</th><th>Join date</th><th></th></tr>'+response);				
			}				
		});					
	});	
	$('[data-delete-user]').click(function(e) {
		var uid = $(this).attr('data-delete-user');								   
		swal({
			title: 'Account termination',
			text: 'The data will be lost without recovery, continue?',
			confirmButtonText: "Yes, delete it!",				
			type: "warning",
			showCancelButton: true,				
			},
			function(){
			$.ajax({ 
				data: {
					action: 'delete_profile',
					uid : uid
				},
				url:   request_source()+'/admin.php',
				type:  'post',
				beforeSend: function(){	
				},
				success: function(response){
					self.close();
				}
			});	
		});			
	});	
});