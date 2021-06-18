<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;

require 'vendor/autoload.php';

if(isset($_POST["name"])) {
    $mail = new PHPMailer();

    $mail->isSMTP();
    
    //Enable SMTP debugging
    //SMTP::DEBUG_OFF = off (for production use)
    //SMTP::DEBUG_CLIENT = client messages
    //SMTP::DEBUG_SERVER = client and server messages
    $mail->SMTPDebug = SMTP::DEBUG_SERVER;
    
    $mail->Host = 'smtp.gmail.com';
    
    $mail->Port = 587;
    
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    
    $mail->SMTPAuth = true;

    $mail->SMTPSecure = 'tls';
    
    $mail->Username = '3bhitm@gmail.com';
    
    $mail->Password = 'onet120!';
    
    $senderName = $_POST["name"];
    $senderMail = $_POST["email"];
    $senderMessage = $_POST["content"];
    
    // HIER NUTZERDATEN
    //Set who the message is to be sent from
    $mail->setFrom($senderMail, $senderName);
    
    $mail->addReplyTo($senderMail, $senderName);
    
    $mail->addAddress('3bhitm@gmail.com', "");
    
    $mail->Subject = 'Tourismus App: Kontaktanfrage';
    
    // HIER NACHRICHT EINSETZEN
    $mail->Body = $senderMessage;
    
    /* $mail->AltBody = 'Es funktioniert.'; */
    
    if (!$mail->send()) {
        echo 'Mailer Error: ' . $mail->ErrorInfo;
    } else {
        // Zurück zum Menü
    }
} else {
    var_dump($_POST);
}



/*
function save_mail($mail)
{
    //You can change 'Sent Mail' to any other folder or tag
    $path = '{imap.gmail.com:993/imap/ssl}[Gmail]/Sent Mail';

    //Tell your server to open an IMAP connection using the same username and password as you used for SMTP
    $imapStream = imap_open($path, $mail->Username, $mail->Password);

    $result = imap_append($imapStream, $path, $mail->getSentMIMEMessage());
    imap_close($imapStream);

    return $result;
} */