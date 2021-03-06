<?php

require_once("../includes/core.php");
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


if(siteConfig('s3') != ''){

	$bucketName = siteConfig('s3_bucket');
	$key = siteConfig('s3');
	$secret = siteConfig('s3_key');
	$s3 = new S3($key,$secret );

}

$user = $sm['user']['id'];

$rid = $_POST['rid'];

$thumb_square_size 		= 200; 

$max_image_size 		= 9000; 

$thumb_prefix			= "thumb_"; 

$destination_folder		= 'uploads/'; 

$jpeg_quality 			= 90;



//continue only if $_POST is set and it is a Ajax request

if(isset($_POST) && isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'){



	// check $_FILES['ImageFile'] not empty

	if(!isset($_FILES['image_file']) || !is_uploaded_file($_FILES['image_file']['tmp_name'])){

			die('Image file is Missing!'); // output error when above checks fail.

	}

	

	//uploaded file info we need to proceed

	$image_name = $_FILES['image_file']['name']; //file name

	$image_size = $_FILES['image_file']['size']; //file size

	$image_temp = $_FILES['image_file']['tmp_name']; //file temp



	$image_size_info 	= getimagesize($image_temp); //get image size

	

	if($image_size_info){

		$image_width 		= $image_size_info[0]; //image width

		$image_height 		= $image_size_info[1]; //image height

		$image_type 		= $image_size_info['mime']; //image type

	}else{

		die("Make sure image file is valid!");

	}



	//switch statement below checks allowed image type 

	//as well as creates new image from given file 

	switch($image_type){

		case 'image/png':

			$image_res =  imagecreatefrompng($image_temp); break;

		case 'image/gif':

			$image_res =  imagecreatefromgif($image_temp); break;			

		case 'image/jpeg': case 'image/pjpeg':

			$image_res = imagecreatefromjpeg($image_temp); break;

		default:

			$image_res = false;

	}



	if($image_res){

		//Get file extension and name to construct new file name 

		$image_info = pathinfo($image_name);

		$image_extension = strtolower($image_info["extension"]); //image extension

		$image_name_only = strtolower($image_info["filename"]);//file name only, no extension

		

		//create a random name for new image (Eg: fileName_293749.jpg) ;

		$new_file_name = $image_name_only. '_' .  rand(0, 9999999999) . '.' . $image_extension;

		

		//folder path to save resized images and thumbnails

		$thumb_save_folder 	= $destination_folder . $thumb_prefix . $new_file_name; 

		$image_save_folder 	= $destination_folder . $new_file_name;

		

		//call normal_resize_image() function to proportionally resize image

		if(normal_resize_image($image_res, $image_save_folder, $image_type, $max_image_size, $image_width, $image_height, $jpeg_quality))

		{

			//call crop_image_square() function to create square thumbnails

			if(!crop_image_square($image_res, $thumb_save_folder, $image_type, $thumb_square_size, $image_width, $image_height, $jpeg_quality))

			{

				die('Error Creating thumbnail');

			}

			$photo = $sm['config']['site_url'].'/assets/sources/'.$image_save_folder;

			if(siteConfig('s3') != ''){

				$uploadFile = dirname(__FILE__).'/'.$image_save_folder;

				if ($s3->putObjectFile($uploadFile, $bucketName, baseName($uploadFile), S3::ACL_PUBLIC_READ)) {

					$ins_photo = 'https://'.$bucketName.'.s3.amazonaws.com/'.baseName($uploadFile);

					unlink($uploadFile);

					$photo = $ins_photo;

				} else {

					echo "S3::putObjectFile(): Failed to copy file\n";

				}

			}			

			$time = time();	

			$mm = '<div class="js-message-block" id="me">

						<div class="message">

							<div class="brick brick--xsm brick--hover">

								<div class="brick-img profile-photo" data-src="'.$sm['user']['profile_photo'].'"></div>

							</div>

							<div class="message__txt">

								<div class="message__name lgrey">'.$sm['user']['first_name'].'</div>

								<p class="montserrat chat-text"></p>

								<div class="message__pic_ js-wrap" style="cursor:pointer;">

										<img data-instance="photo'.$time.'" data-src="'.$photo.'" src="'.$photo.'" class="mCS_img_loaded">

									</div>

							</div>									

						</div>

					</div>';	

			$data['message'] = '';

			$data['chatHeaderRight']='<div class="js-message-block" id="you">

					<div class="message">

						<div class="brick brick--xsm brick--hover">

							<div class="brick-img profile-photo" data-src="'.$sm['user']['profile_photo'].'"></div>

						</div>

						<div class="message__txt">

							<div class="message__name lgrey">'.$sm['user']['first_name'].'</div>

							<p class="montserrat chat-text"></p>

							<div class="message__pic_ js-wrap" style="cursor:pointer;">

								<img data-instance="photo'.$time.'" data-src="'.$photo.'" src="'.$photo.'" class="mCS_img_loaded">

							</div>

						</div>

					</div>

				</div>	

			';	

			

			



			$data['time'] = date("H:i", time());			

			$event = 'chat'.$rid.$sm['user']['id'];

			$data['id'] = $sm['user']['id'];

			$data['photo'] = 0;
			$data['type'] = 'image';
			$data['message'] = $photo;			

			$sm['push']->trigger(siteConfig('pusher_key'), $event, $data);									

			$mysqli->query("INSERT INTO chat (s_id,r_id,time,message,photo) VALUES ('".$sm['user']['id']."','".$rid."','".$time."','".$photo."' , 1)");	

			echo $mm;

		}

		

		imagedestroy($image_res); //freeup memory

	}

}





function normal_resize_image($source, $destination, $image_type, $max_size, $image_width, $image_height, $quality){

	

	if($image_width <= 0 || $image_height <= 0){return false;} 

	

	if($image_width <= $max_size && $image_height <= $max_size){

		if(save_image($source, $destination, $image_type, $quality)){

			return true;

		}

	}

	

	$image_scale	= min($max_size/$image_width, $max_size/$image_height);

	$new_width		= ceil($image_scale * $image_width);

	$new_height		= ceil($image_scale * $image_height);

	

	$new_canvas		= imagecreatetruecolor( $new_width, $new_height ); //Create a new true color image

	

	//Copy and resize part of an image with resampling

	if(imagecopyresampled($new_canvas, $source, 0, 0, 0, 0, $new_width, $new_height, $image_width, $image_height)){

		save_image($new_canvas, $destination, $image_type, $quality); //save resized image

	}



	return true;

}



##### This function corps image to create exact square, no matter what its original size! ######

function crop_image_square($source, $destination, $image_type, $square_size, $image_width, $image_height, $quality){

	if($image_width <= 0 || $image_height <= 0){return false;} //return false if nothing to resize

	

	if( $image_width > $image_height )

	{

		$y_offset = 0;

		$x_offset = ($image_width - $image_height) / 2;

		$s_size 	= $image_width - ($x_offset * 2);

	}else{

		$x_offset = 0;

		$y_offset = ($image_height - $image_width) / 2;

		$s_size = $image_height - ($y_offset * 2);

	}

	$new_canvas	= imagecreatetruecolor( $square_size, $square_size); //Create a new true color image

	

	//Copy and resize part of an image with resampling

	if(imagecopyresampled($new_canvas, $source, 0, 0, $x_offset, $y_offset, $square_size, $square_size, $s_size, $s_size)){

		save_image($new_canvas, $destination, $image_type, $quality);

	}



	return true;

}



##### Saves image resource to file ##### 

function save_image($source, $destination, $image_type, $quality){

	switch(strtolower($image_type)){//determine mime type

		case 'image/png': 

			imagepng($source, $destination); return true; //save png file

			break;

		case 'image/gif': 

			imagegif($source, $destination); return true; //save gif file

			break;          

		case 'image/jpeg': case 'image/pjpeg': 

			imagejpeg($source, $destination, $quality); return true; //save jpeg file

			break;

		default: return false;

	}

}