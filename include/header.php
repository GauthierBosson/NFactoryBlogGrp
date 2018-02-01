<header class="col-sm-12">
    <div class="col-sm-2">
        <img src="./assets/img/logo.png">
    </div>

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
            echo("<li><a href=\"index.php?page=chatbox\">Chat</a></li>");
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
    <form class="recherche form-inline" method="post" action="index.php?page=search">
        <input class="form-control mr-sm-2" type="text" name="barre" placeholder="Search" aria-label="Search"/>
        <button class="btn btn-outline-success btn-sm my-0" type="submit">Search</button>

    </form>

</header>