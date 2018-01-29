<h1>Inscription</h1>
<?php
if(isset($_POST["formulaire"])) {
    $tabErreur = array();
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $mail = trim($_POST['mail']);
    $mdp = trim($_POST['password']);
    $header="MIME-Version: 1.0\r\n";
    $header.='From:"Nfactoryhihi.com"<support@nfactory.com>'."\n";
    $header.='Content-Type:text/html;charset="utf-8"'."\n";
    $header.='Content-Transfer-Encoding: 8bit';



    if($_POST["nom"] == ""){
        array_push($tabErreur, "Veuillez saisir votre nom");
    }
    if($_POST["prenom"] == "" ){
        array_push($tabErreur, "Veuillez saisir votre prénom");
    }elseif ($nom !== filter_var($nom , FILTER_SANITIZE_STRING)){
        array_push($tabErreur , "Caracteres non autorisées");
    }

    if($_POST["mail"] == "" || !filter_var($mail, FILTER_VALIDATE_EMAIL)){
        array_push($tabErreur, "Veuillez saisir votre e-mail valide");
    }
    if($_POST["password"] == "")
        array_push($tabErreur, "Veuillez saisir un mot de passe");

    if(count($tabErreur) != 0) {
        $message = "<ul>";
        for($i = 0 ; $i < count($tabErreur) ; $i++) {
            $message .= "<li>" . $tabErreur[$i] . "</li>";
        }
        $message .= "</ul>";
        echo($message);
        include("./include/formInscription.php");
    }
    else {
        // Requete permettant de me connecter a ma BDD

       $db = connectionPDO();

        $requeteLogin = ("SELECT * FROM `t_users` WHERE `USERMAIL` = '$mail'");

        if ($result = $db->query($requeteLogin)){

            if (($ligne= $result->rowCount()) != 0){
                echo "Votre e-mail est deja utilisé ";
            }else{
                if(isset($_POST['captcha'])) {
                    if($_POST['captcha'] != $_SESSION['captcha']) {
                        echo "Captcha invalide !";

                    } else {
                        $longueurKey = 15;
                        $key = "";
                        for($i=1;$i<$longueurKey;$i++){
                            $key .=mt_rand(0,9);
                        }
                        $mdp = sha1($mdp);
                        $requete = "INSERT INTO t_users (ID_USER, USERNAME, USERFNAME,
                            USERMAIL, USERPASSWORD, USERDATEINS, T_ROLES_ID_ROLE,confirmkey)
                            VALUES (NULL, '$nom', '$prenom', '$mail', '$mdp', NULL, 5,$key);";

                        $result2=$db->query($requete);

                        $message='
                <html>
                    <body>
                        <div align="center">
                            <a href="http://localhost/blogen%C3%A9quipe/index.php?page=confirmation&amp;pseudo='.urlencode($mail).'&key'.$key.'">Confirmez votre compte !</a>
                        </div>
                    </body>
                </html>';
                        mail($mail,"Veuillez valider votre compte en utilisant cette clé:",$message,$header);

                    }
                }
                unset($db);
            }

        }else{
            die($requeteLogin);
        }

    }
}
else {

    include("./include/formInscription.php");
}


