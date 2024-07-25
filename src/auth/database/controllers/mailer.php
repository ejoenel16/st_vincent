<?php

require_once __DIR__ . '/../../lib/phpmailer/src/Exception.php';
require_once __DIR__ . '/../../lib/phpmailer/src/PHPMailer.php';
require_once __DIR__ . '/../../lib/phpmailer/src/SMTP.php';

//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

function send_email($EMAIL_TO, $EMAIL_SUBJECT, $EMAIL_BODY)
{
    //Create an instance; passing `true` enables exceptions
    $mail = new PHPMailer(true);

    $MAILER_EMAIL = 'online@stvincentinstituteoftechnology.online';
    $MAILER_DISPLAY_NAME = 'St. Vincent Institute of Technology';
    $MAILER_PWD = 'StVincentInstitute2024!';
    $MAILER_PORT = 587;

    try {
        //Server settings
        $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host       = 'smtp.hostinger.com';                     //Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
        $mail->Username   = $MAILER_EMAIL;                     //SMTP username
        $mail->Password   = $MAILER_PWD;                               //SMTP password
        $mail->SMTPSecure = 'tls';            //Enable implicit TLS encryption
        $mail->Port       = $MAILER_PORT;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

        $mail->SMTPOptions = array(
            'ssl' => array(
                'verify_peer' => false,
                'verify_peer_name' => false,
                'allow_self_signed' => true
            )
        );

        $mail->setFrom($MAILER_EMAIL, $MAILER_DISPLAY_NAME);
        $mail->addAddress($EMAIL_TO);     //Add a recipient
        $mail->isHTML(true);                                  //Set email format to HTML
        $mail->Subject = $EMAIL_SUBJECT;
        $mail->Body    = $EMAIL_BODY;
        $mail->send();

        echo 1;
    } catch (Exception $e) {
        echo 0;
    }
}
