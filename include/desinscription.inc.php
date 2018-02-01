<?php
include ("./include/formDesinscription.php");
if (isset($_POST['login'])) {
    $tabErreur = array();
    $email = $_POST['email'];
    $mdp = trim($_POST['mdp']);
    if ($email == "" || !filter_var($email , FILTER_VALIDATE_EMAIL))
        array_push($tabErreur, "Veuillez saisir une adresse");
    if ($mdp == "")
        array_push($tabErreur, "Veuillez saisir un mot de passe");
    if (count($tabErreur) > 0) {
        $message = "<ul>";
        for ($i = 0 ; $i < count($tabErreur) ; $i++) {
            $message .= "<li>" . $tabErreur[$i] . "</li>";
        }
        $message .= "</ul>";
        echo ($message);

    }
    else {
        // Requete permettant de me connecter a ma BDD
        $db = connectionPDO();
        if (!$db) {
            echo "Erreur de connexion";
        }
        else {
            $mdp = sha1($mdp);
            $requete = "SELECT * FROM t_users WHERE USERMAIL='$email' AND USERPASSWORD='$mdp'";
            $requete2 = "DELETE FROM t_users WHERE USERMAIL='".$_POST['email']."'";
            if($result = $db->query($requete)) {
                if ($lignes=$result->rowCount() > 0) {
                    $_SESSION['login'] = 1;
                    while ($donnees=$result->fetch(PDO::FETCH_ASSOC)){
                        if ($donnees['T_ROLES_ID_ROLE'] == 1 || $donnees['T_ROLES_ID_ROLE'] == 2){
                            echo ("<script>redirection(\"index.php?page=admin\")</script>");
                            $_SESSION['admin'] = 1;
                        }else{
                            echo ("<script>redirection(\"index.php?page=accueil\")</script>");
                        }
                        $_SESSION['id'] = $donnees['ID_USER'];
                        $_SESSION['mdp'] = $donnees['USERPASSWORD'];
                    }
                    echo ("<a href=\"index.php?page=accueil\">Vous êtes authentifié, viendez à la page d'accueil</a>");
                }
                else
                    //$_SESSION['login'] = 0;
                    echo ("Votre e-mail ou mot de passe est érronné");
            }
        }
        unset($db);
    }
}
else {
    include ("./include/formLogin.php");
}