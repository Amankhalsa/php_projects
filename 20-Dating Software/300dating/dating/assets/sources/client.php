<?php
$url = 'https://www.premiumdatingscript.com/clients/api.php?id='.siteConfig('client');
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_TIMEOUT, 2);
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 2);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$data = curl_exec($ch);
$data = json_decode($data);
curl_close($ch);
$sm['fakeUsers'] = $data->fakeUsers;
$sm['fakeAI'] = $data->fakeAI;
$sm['fakeAIUsage'] = $data->fakeAIUsage;