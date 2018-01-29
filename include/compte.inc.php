<h1>Mon compte</h1>

<?php
$id = $_SESSION['id'];
$db = connectionPDO();
$sql = "SELECT * FROM t_users WHERE ID_USER = '$id'  ";
$reponse =  $db->query($sql);
while ($donnees = $reponse->fetch(PDO::FETCH_ASSOC)){
    echo "Votre Nom : " . $donnees['USERNAME'] . "<br/>" .
        "Votre Prenom : " . $donnees['USERFNAME'] . "<br/>" .
        "Votre Mail : " . $donnees['USERMAIL'] . "<br/>" ;
}
echo "<form method='post' action='#' > <input name='modifier' value='Modifier vos informations' type='submit'></form>";

if (isset($_POST['modifier'])){
    echo ("<form method='post' action='#'>
            <label for='nom'>Nouveau nom : </label><input type='text' name='newNom' value=''><br>
            <label for='prenom'>Nouveau prénom : </label><input type='text' name='newPrenom'><br>
            <label for='email'>Nouvelle adresse email : </label><input type='text' name='newEmail'><br>
            <label for='newMdp'>Nouveau mot de passe : </label><input type='password' name='newMdp'><br>
            <label for='mdp'>Mot de passe : </label><input type='password' name='mdp'><br>
            <input type='submit' value='Modifier mes informations' name='newInfo'>
</form>");
}
if(isset($_POST['newInfo'])){
    $taberreur = array();
    $nom = $_POST['newNom'];
    $prenom = $_POST['newPrenom'];
    $email = $_POST['newEmail'];
    $mdp = $_POST['mdp'];
    $newMdp = $_POST['newMdp'];

    if($nom == ""){
        array_push($taberreur,"Veuillez saisir un nom");
    }
    if($prenom == ""){
        array_push($taberreur,"Veuillez saisir un prénom");
    }
    if($email == ""){
        array_push($taberreur,"Veuillez saisir un email");
    }
    if($mdp == ""){
        array_push($taberreur,"Veuillez saisir votre mot de passe");
    }
    if(count($taberreur)!= 0){
        $message = "<ul>";
        for($i=0;$i<count($taberreur);$i++){
            $message .= "<li>".$taberreur[$i]."</li>";
        }
        $message .= "</ul>";
        echo($message);

    }else{
        $mdp = sha1($mdp);
        if($mdp!= $_SESSION['mdp']){
            echo "Erreur";
        }else {
            $newMdp = sha1($newMdp);
            //$db=connectionPDO('localhost' , 'NFactoryBlog' , 'root' , '');
            $requete = "UPDATE t_users SET USERNAME = '$nom', USERFNAME = '$prenom', USERMAIL = '$email', USERPASSWORD = '$newMdp'   WHERE ID_USER = '$id'";
            $result = $db->query($requete);
        }
    }

}
else {
    echo "Veuillez vous connecter";
}