<?php
session_start();
include_once ("./functions/callPage.php");
include_once("./functions/connectionPDO.php");
?>
<?php
if (isset($_COOKIE['visite'])) {
    setCookie('visite', $_COOKIE['visite'] + 1 ,time() + 365*24*3600);

} else {
    setCookie('visite', 1 ,time() + 365*24*3600);

}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="./assets/css/styles.css" type="text/css" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <title>Blog</title>

    <script src="./assets/js/function.js"></script>
    <script type="text/javascript" src="./assets/js/tinymce/tinymce.min.js"></script>

    <script type="text/javascript">
        tinymce.init({
            selector: 'textarea'
        });
    </script>
</head>
<body>
<div class="container-fluid">
    <?php include_once("./include/header.php");?>
    <main class="col-sm-9">
        <?php
        callPage();
        ?>
    </main>
    <?php
    $db = connectionPDO();
    $sql = "SELECT * FROM t_articles 

LEFT JOIN t_categories_has_t_articles ON t_articles.ID_ARTICLE=t_categories_has_t_articles.T_ARTICLES_ID_ARTICLE 
LEFT JOIN t_categories ON t_categories_has_t_articles.T_CATEGORIES_ID_CATEGORIE=t_categories.ID_CATEGORIE
WHERE ID_CATEGORIE = 3 ORDER BY ID_ARTICLE DESC LIMIT 0,3";
    $reponse = $db->query($sql) or die(mysqli_error());
    echo "<div class='miseEnAvant col-sm-3'> ";
    while ($donnees= $reponse->fetch(PDO::FETCH_ASSOC)){
        $articleId = $donnees['ID_ARTICLE'];

        echo "<h2>"."<a href=\"index.php?page=articlesfull&amp;id=$articleId\">".$donnees['ARTTITRE']."</a>"."</h2>"."<h3>" .$donnees['ARTCHAPO'] ."<hr>" ."</h3>" ;
    }
    echo "</div>";
    ?>
    <?php include_once("./include/footer.php");

    ?>

</div>
</body>
</html>