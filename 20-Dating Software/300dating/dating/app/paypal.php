<?php
require_once('../assets/includes/core.php');
if ( isset( $_GET['type'] ) && !empty( $_GET['type'] ) ){
	$t = secureEncode($_GET['type']);
	$a = secureEncode($_GET['amount']);
	$c = secureEncode($_GET['custom']);
	if($type == 1){
		$b = 'Credits';
		$n = 'ipn';
	} else {
		$b = 'Premium';
		$n = 'ipnpremium';
	}
} else {
  exit;
}
?>
<form id="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_xclick">
<input type="hidden" name="business" value="<?= $sm['config']['paypal']; ?>">
<input type="hidden" name="item_name" id="payment-name" value="<?= $sm['config']['name']; ?> <?= $b; ?>">
<input type="hidden" name="currency_code" value="<?= $sm['config']['currency']; ?>">
<input type="hidden" name="amount" value="<?= $a; ?>">
<input type="hidden" name="custom" value="<?= $c; ?>">				
<input type="hidden" name="notify_url" value="<?= $sm['config']['site_url']; ?>/assets/sources/<?= $n; ?>.php">
<input type="hidden" name="return" value="<?= $sm['config']['site_url']; ?>/index.php?page=credits-ok">					
</form>

<script>
document.getElementById("paypal").submit();
</script>