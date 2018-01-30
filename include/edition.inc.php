<?php
if(isset($_SESSION['login']) == 1 ){
    if(isset($_POST["article"])) {
        $tabErreur = array();
        $titre = $_POST['titre'];
        $chapo = $_POST['chapo'];
        $message = $_POST['message'];

        if($_POST["titre"] == "")
            array_push($tabErreur, "Veuillez renseigné un titre");
        if($_POST["chapo"] == "")
            array_push($tabErreur, "Veuillez renseigné un sous-titre");
        if($_POST["message"] == ""){
            array_push($tabErreur, "Veuillez renseigné votre message");
        }else{

        }

        if(count($tabErreur) != 0) {
            $message = "<ul>";
            for($i = 0 ; $i < count($tabErreur) ; $i++) {
                $message .= "<li>" . $tabErreur[$i] . "</li>";
            }
            $message .= "</ul>";
            echo($message);
            include("./include/FormArticle.php");
        } else {

// Requete permettant de me connecter a ma BDD

            $db = connectionPDO();

            if (!$db) {
                echo "Erreur de connexion";
            }
            else {
                $id = $_GET['id'];
                $message = addslashes(htmlentities($message , ENT_HTML5 , 'UTF-8'));
                $chapo = addslashes(htmlentities($chapo));
                $titre = addslashes(htmlentities($titre));
                $requete = "UPDATE t_articles SET ID_ARTICLE='$id', ARTTITRE='$titre', ARTCHAPO='$chapo',
                        ARTCONTENU='$message', ARTDATE=NOW() WHERE ID_ARTICLE= '$id'
                       ";

                $_SESSION['login'] = ($result = $db->query($requete)) ? 1 : 0 ;
                unset($db);
            }
        }

    }else{
        include ("./include/FormArticle.php");
    }
}else {
    echo "vous n'avez pas accès a cette page ";
}