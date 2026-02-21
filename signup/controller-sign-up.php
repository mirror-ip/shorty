<?php
/**
 * Shorty: A simple URL shortener.
 *
 * @copyright Copyright (c) 2026, Hoàng Hải <leduchoanghai@yahoo.com>
 * @license   MIT, http://www.opensource.org/licenses/mit-license.php
 */
require '../shorty.php';
require '../config.php';
        $shorty = new Shorty($hostname, $connection);
        $shorty->set_chars($chars);
        $shorty->set_salt($salt);
        $shorty->set_padding($padding);

if (array_key_exists('signUpAttempt', $_GET)) {

	$captcha = isset($_GET['g-recaptcha-response']) ? $_GET['g-recaptcha-response'] : null;

	// ultimately these could be constants in a "secrets" file
	// 	aka stored as environment variables
	#$captchaPublic = constant('CAPTCHA_PUBLIC');
	#$captchaSecret = constant('CAPTCHA_SECRET');
	$captchaPublic = "6LdWAwcrAAAAAGRV9JXt42r1VdrN5teSyPPyDnoO";
	$captchaSecret = "6LdWAwcrAAAAAGDtnUV94QhLo1GeTXwXxK7KfDz1";

	$res = json_decode(file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$captchaSecret ."&response=".$captcha));

	if($res->success === true){
		// ok! don't do anything
	} else{
		$shorty->error("Error: Human check failed");
		exit();
	}

	// continue sign up process as normal
	print "You don't seem to be a robot. Your URL shortener: ";

	$shorty->addurl();
	exit();

	#$email = $_POST['email'] ?? '';
	#$password = $_POST['password'] ?? '';

	// ...

}
?>