<?php
ini_set('max_execution_time',90);
$getVersions = file_get_contents('https://www.premiumdatingscript.com/belloo/version.php');
if ($getVersions != ''){
	$versionList = explode("\n", $getVersions);	
	foreach ($versionList as $aV){
		if ( $aV > $sm['version']) {
			$found = true;
			if (!file_exists('updates/update-'.$aV.'.zip' )) {
				$newUpdate = file_get_contents('https://www.premiumdatingscript.com/bello/update-'.$aV.'.zip');
				$dlHandler = fopen('updates/update-'.$aV.'.zip', 'w');
				if ( !fwrite($dlHandler, $newUpdate) ) { exit(); }
				fclose($dlHandler);
			}
			$zipHandle = zip_open('updates/update-'.$aV.'.zip');	
			while ($aF = zip_read($zipHandle) ) {
				$thisFileName = zip_entry_name($aF);
				$thisFileDir = dirname($thisFileName);
				//Continue if its not a file
				if ( substr($thisFileName,-1,1) == '/') continue;
				if ( !is_dir ($thisFileDir ) ){
					 mkdir ($thisFileDir );
				}
				if ( !is_dir($thisFileName) ) {
					$contents = zip_entry_read($aF, zip_entry_filesize($aF));
					$contents = str_replace("\r\n", "\n", $contents);
					$updateThis = '';
					if ( $thisFileName == 'upgrade.php' ){
						$upgradeExec = fopen ('upgrade.php','w');
						fwrite($upgradeExec, $contents);
						fclose($upgradeExec);
						include ('upgrade.php');
						unlink('upgrade.php');
					}else{
						$updateThis = fopen($thisFileName, 'w');
						fwrite($updateThis, $contents);
						fclose($updateThis);
						unset($contents);
					}
				}
			}
			$updated = TRUE;
			break;
		}
	}
	
	if ($updated == true){
		global $mysqli;
		$sm['version']= $aV;
		$mysqli->query("update config set version = '$aV'");
	}
	else if ($found != true) echo '';	
}
else echo '';

?>