<?php
if(isset($_GET['section'])) {

$section = htmlspecialchars($_GET['section']);

} else {

$section = "";

}
?>
<h1>Récupération de mot de passe</h1>
<?php if($section == 'code') { ?>
    Un code de vérification vous a été envoyé par mail: <?= $_SESSION['recupMail'] ?>
    <br/>
    <form method="post">
        <input type="text" placeholder="Code de vérification" name="verif_code"/><br/>
        <input type="submit" value="Valider" name="verif_submit"/>
    </form>
<?php } elseif($section == "changemdp") { ?>
    Nouveau mot de passe pour <?= $_SESSION['recupMail'] ?>
    <form method="post">
        <input type="password" placeholder="Nouveau mot de passe" name="change_mdp"/><br/>
        <input type="password" placeholder="Confirmation du mot de passe" name="change_mdpc"/><br/>
        <input type="submit" value="Valider" name="change_submit"/>
    </form>
<?php } else { ?>
    <form method="post">
        <input type="email" placeholder="Votre adresse mail" name="recup_mail"/><br/>
        <input type="submit" value="Valider" name="recup_submit"/>
    </form>
<?php } ?>
<?php if(isset($error)) { echo '<span style="color:red">'.$error.'</span>'; } else { echo ""; } ?>