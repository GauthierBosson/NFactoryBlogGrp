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
                                 
                                 <div align="center">Bonjour,</div>
                                 Voici votre code de récupération: <b>'.$recupCode.'</b>
                                 A bientôt sur <a href="http://primfx.com/">Localhost</a> !
                                 
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
                    mail($recupMail, "Récupération de mot de passe - test.com", $message, $header);
                    header("Location:http://localhost/NFactoryBlog/index.php?page=recuperation");


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
if(isset($_POST['verif_submit'],$_POST['verif_code'])) {
    if(!empty($_POST['verif_code'])) {
        $verif_code = htmlspecialchars($_POST['verif_code']);
        $verif_req = $db->prepare('SELECT id FROM recuperation WHERE mail = ? AND code = ?');
        $verif_req->execute(array($_SESSION['recupMail'],$verif_code));
        $verif_req = $verif_req->rowCount();
        if($verif_req == 1) {
            $up_req = $db->prepare('UPDATE recuperation SET confirme = 1 WHERE mail = ?');
            $up_req->execute(array($_SESSION['recupMail']));
            header('Location:http://localhost/NFactoryBlog/index.php?page=recuperation?section=changemdp');
        } else {
            $error = "Code invalide";
        }
    } else {
        $error = "Veuillez entrer votre code de confirmation";
    }
}
if(isset($_POST['change_submit'])) {
    if(isset($_POST['change_mdp'],$_POST['change_mdpc'])) {
        $verif_confirme = $db->prepare('SELECT confirme FROM recuperation WHERE mail = ?');
        $verif_confirme->execute(array($_SESSION['recupMail']));
        $verif_confirme = $verif_confirme->fetch();
        $verif_confirme = $verif_confirme['confirme'];
        if($verif_confirme == 1) {
            $mdp = htmlspecialchars($_POST['change_mdp']);
            $mdpc = htmlspecialchars($_POST['change_mdpc']);
            if(!empty($mdp) AND !empty($mdpc)) {
                if($mdp == $mdpc) {
                    $mdp = sha1($mdp);
                    $ins_mdp = $db->prepare('UPDATE membres SET motdepasse = ? WHERE mail = ?');
                    $ins_mdp->execute(array($mdp,$_SESSION['recupMail']));
                    $del_req = $db->prepare('DELETE FROM recuperation WHERE mail = ?');
                    $del_req->execute(array($_SESSION['recupMail']));
                    header('Location:http://127.0.0.1/path/connexion/');
                } else {
                    $error = "Vos mots de passes ne correspondent pas";
                }
            } else {
                $error = "Veuillez remplir tous les champs";
            }
        } else {
            $error = "Veuillez valider votre mail grâce au code de vérification qui vous a été envoyé par mail";
        }
    } else {
        $error = "Veuillez remplir tous les champs";
    }
}
?>