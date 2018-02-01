<div class="col-sm-12">
    <h2>Rédiger un article</h2>
    <form method="post" action="#">
        <div class="col-sm-5 articleTitre">
            <label for="titre">Titre de votre article </label>
            <input type="text" placeholder="Votre Titre" name="titre">
        </div>
        <div class="col-sm-5 articleChapo">
            <label for="chapo">Sous-titre de votre article  </label>
            <input type="text" placeholder="Votre Sous-Titre" name="chapo">
        </div>


        <div class="msg" > <label for="message">Votre Message </label></div>
        <textarea name="message" cols="3" placeholder="Votre Message ..."></textarea>

        <div class="col-sm-12 categorie"  >
            <SELECT name="categorie" size="1">
                <OPTION>Actualités
                <OPTION>Archivé

            </SELECT>
        </div>

        <input type="submit" value="Envoyer !" name="article" class="button">
    </form>
</div>