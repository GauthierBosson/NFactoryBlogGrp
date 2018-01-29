<h1>RESULTAT DE LA RECHERCHE</h1>
<?php
$db = connectionPDO();
$search = $db -> query('SELECT * FROM t_articles ORDER BY ID_ARTICLE DESC');

if (isset($_POST['barre']) && !empty($_POST['barre'])){
    $barre = htmlspecialchars($_POST['barre']);
    $search = $db -> query('SELECT * FROM t_articles WHERE ARTCONTENU  LIKE "%'.$barre.'%" ORDER BY ID_ARTICLE DESC');


    while ($a = $search ->fetch()){
        echo '<ul>';
        echo  '<li>' . html_entity_decode($a ['ARTTITRE']).'</li>';
        echo '<li> '. html_entity_decode($a ['ARTCHAPO' ]).'</li>';
        echo '<li> '. html_entity_decode($a ['ARTCONTENU' ]).'</li>';


        echo '</ul>';




    }


}

