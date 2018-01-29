<h1>Mon compte</h1>
<?php

if (!isset($_SESSION['login'])) {
    header ('Location: compte.php');
    exit();
}
$mail = $_POST['mail'];
$db = connectionPDO();
$requete = "SELECT * FROM t_users";
$result=$db->query($requete);

?>
<p>Bienvenue <?php echo "$mail" ?></p>

<form method="post" action="#">
    <div>
        <label for="pseudo">Pseudo </label>
        <input type="text" placeholder="Votre Titre" name="titre">
    </div>
    <div>
        <label for="mdp">Mot de passe  </label>
        <input type="text" placeholder="mdp" name="mdp">
    </div>
    <div>
        <label for="newmdp">Nouveau mot de passe </label>
        <input type="password" placeholder="Nouveau mdp" name="newmdp">
    </div>


        <input type="submit" value="Envoyer !" name="compte">
</form>
