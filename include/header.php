<header>
    <ul>
        <li><a href="index.php?page=accueil">Accueil</a></li>

        <?php
        if(!isset($_SESSION['login'])){
            echo("<li><a href=\"index.php?page=inscription\">Inscription</a></li>");
            echo("<li><a href=\"index.php?page=login\">Login</a></li>");

        }
        else{

            echo("<li><a href=\"index.php?page=compte\">Compte</a></li>");
            echo("<li><a href=\"index.php?page=article\">Article</a></li>");
            echo("<li><a href=\"index.php?page=logout\">Logout</a></li>");
        }
        //com
        ?>
        <?php
            if (isset($_SESSION['admin'])){
                echo ("<li><a href=\"index.php?page=admin\">Administration </a></li>");
            }
        ?>
        <li><a href="index.php?page=email">Contact</a></li>
    </ul>
    <hr>

    <form method="post" action="index.php?page=search">
        <input type="text" name="barre" placeholder="recherche"/>
        <input type="submit" value="valider" />

    </form>


</header>