<h1>ARTICLES</h1>

<?php
$share = '<a href="http://twitter.com/share" class="twitter-share-button" data-count="vertical" data-via="InfoWebMaster">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>';
$share2 = '<script src="//platform.linkedin.com/in.js" type="text/javascript"> lang: fr_FR</script><script type="IN/Share" data-counter="top"></script>';
$share3 = '<iframe src="https://www.facebook.com/plugins/share_button.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&layout=button_count&size=small&mobile_iframe=true&width=105&height=20&appId" width="105" height="20" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>';
$share4 = '<script src="https://apis.google.com/js/platform.js" async defer></script> <g:plus action="share"></g:plus>';
$db = connectionPDO();
$id = $_GET['id'];
$requete = $db -> prepare("SELECT * FROM t_articles WHERE ID_ARTICLE = $id");

$requete-> execute(array($id));
$donnees=$requete->fetch();

echo(html_entity_decode($donnees['ARTCONTENU']));

echo '<div class="publication1">'."Modifié le: " . date("F d Y H:i", getlastmod()).'</div>';

echo '<div class="publication2">'."Publié le: " . date("F d Y H:i").'</div>';






if (isset($_POST['commentaire']) && !empty($_POST['commentaire'])){
    $commentaire = htmlspecialchars($_POST['commentaire']);



};

?>
<?php
echo (html_entity_decode("<div class='share'>"." ". $share." ".$share2." ".$share3." ".$share4."</div>"));
?>
<form method="post" action="index.php?page=commentaires_post\'">
    <p>Ajouter votre commentaire</p>
    <label for="Auteur">Auteur</label><input type="text" id="Auteur" name="auteur"/><br />
    <label for="commentaire">Commentaire</label><textarea name="commentaire" id="commentaire"></textarea>
    <input type="submit" value="Envoyer"/>
</form>
