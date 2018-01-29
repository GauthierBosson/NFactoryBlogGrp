<?php
include("./include/formForget.php");
if(isset($_POST['forget'])) {
    $tabErreur = array();
    $mail = $_POST['mail'];

    //if ($_POST['mail'] == "") {

        //array_push($tabErreur, "Veuillez renseigner votre adresse mail");
    //}
    if(count($tabErreur) != 0) {
        $message = "<ul>";
        for($i = 0 ; $i < count($tabErreur) ; $i++) {
            $message .= "<li>" . $tabErreur[$i] . "</li>";
        }
        $message .= "</ul>";
        echo($message);

    }
    if(!empty($_POST['mail'])) {
        $recupMail = htmlspecialchars($_POST['mail']);
        if(filter_var($recupMail, FILTER_VALIDATE_EMAIL)) {
            $db = connectionPDO();
            $mailexist = $db->prepare('SELECT ID_USER,USERFNAME FROM t_users WHERE USERMAIL = ?');
            $mailexist->execute(array($recupMail));
            $mailexist = $mailexist->rowCount();
                if($mailexist == 1) {
                    $_SESSION['recupMail'] = $recupMail;
                    $recupCode = "";
                    for($i=0; $i < 8; $i++) {
                        $recupCode .= mt_rand(0,9);
                    }
                    $_SESSION['recupCode'] = $recupCode;

                    $mailRecupExist = $db->prepare('SELECT id FROM recuperation WHERE mail = ?');
                    $mailRecupExist->execute(array($recupMail));
                    $mailRecupExist = $mailRecupExist->rowCount();

                    if($mailRecupExist == 1) {
                        $recupInsert = $db->prepare('UPDATE recuperation SET code = ? WHERE mail = ?');
                        $recupInsert->execute(array($recupMail,$recupCode));
                    } else {
                        $recupInsert = $db->prepare('INSERT INTO recuperation(mail,code) VALUES (?,?)');
                        $recupInsert->execute(array($recupMail,$recupCode));
                    }

                    $header="MIME-Version: 1.0\r\n";
                    $header.='From:"Test.com"<support@test.com>'."\n";
                    $header.='Content-Type:text/html; charset="utf-8"'."\n";
                    $header.='Content-Transfer-Encoding: 8bit';

                    $message = '
                     <html>
                     <head>
                       <title>Récupération de mot de passe - Test.com</title>
                       <meta charset="utf-8" />
                     </head>
                     <body>
                       <font color="#303030";>
                         <div align="center">
                           <table width="600px">
                             <tr>
                               <td>
                                 
                                 <div align="center">Bonjour <b>'.$pseudo.'</b>,</div>
                                 Voici votre code de récupération: <b>'.$recup_code.'</b>
                                 A bientôt sur <a href="http://primfx.com/">PrimFX.com</a> !
                                 
                               </td>
                             </tr>
                             <tr>
                               <td align="center">
                                 <font size="2">
                                   Ceci est un email automatique, merci de ne pas y répondre
                                 </font>
                               </td>
                             </tr>
                           </table>
                         </div>
                       </font>
                     </body>
                     </html>
                     ';
                    mail($recupMailmail, "Récupération de mot de passe - test.com", $message, $header);


                    //$recupInsert = $db->prepare('INSERT INTO recuperation(mail,code) VALUES (?,?)');
                    //$recupInsert->execute(array($recupMail, $recupCode));
                } else {
                    echo "Cette adresse mail n'est pas enregistrée";
                }
        } else {
            echo "Adresse mail invalide";
        }
    } else {
        echo "Veuillez renseigner votre adresse mail";
    }
}