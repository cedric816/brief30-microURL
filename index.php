<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Micro URL</title>
</head>
<body>
    <?php
        include('conf-bdd.php');
        try{
            //Créer des composants d'accès aux données. 
            $connexion = new PDO(DB_DRIVER . ":host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=" . DB_CHARSET, DB_LOGIN, DB_PASS, DB_OPTIONS);
            echo("connexion BDD 'micro_url' ok<br>");

            //Créer une requête de sélection qui retourne une entrée issue de votre bdd.
            $requete = "SELECT * FROM `url` WHERE `url_id`= :url_id";
            $prepare = $connexion->prepare($requete);
            $prepare->execute(array(
                ':url_id' => 1
            ));
            $prepare = $prepare->fetch();
            echo("URL dont l'id est 1:".$prepare['url']." - ".$prepare['description']);

            //Créer une requête d'insertion qui ajoute une entrée dans votre bdd.
            $requete = "INSERT INTO `mots_cles`(`mot_cle`) VALUES(:mot_cle)";
            $prepare = $connexion->prepare($requete);
            $prepare->execute(array(
                ':mot_cle' => 'sport'
            ));
            $lastMotCleId = $connexion->lastInsertId();

            //Créer une requête de modification qui modifie cette entrée.
            $requete ="UPDATE `mots_cles` SET `mot_cle` = :mot_cle WHERE `mot_cle_id`= :mot_cle_id";
            $prepare = $connexion->prepare($requete);
            $prepare->execute(array(
                ':mot_cle' => 'sport amateur',
                ':mot_cle_id' => $lastMotCleId
            ));

            //Créer une requête de suppression qui supprime une entrée.
            $requete ="DELETE FROM `url` WHERE `shortcut` = :shortcut";
            $prepare = $connexion->prepare($requete);
            $prepare->execute(array(
                ':shortcut' => 'ffbb'
            ));

            //Créer une requête qui ajoute une entrée dans la table url
            $requete ="INSERT INTO `url`(`url`, `shortcut`, `datetime`, `description`)
                        VALUES(:url_url, :url_shortcut, :url_datetime, :url_description)";
            $prepare = $connexion->prepare($requete);
            $prepare->execute(array(
                ':url_url' => 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/',
                ':url_shortcut' => 'ztz7',
                ':url_datetime' => date('Y-m-d-H-i-s'),
                ':url_description' => 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'
            ));
            $lastUrlId = $connexion->lastInsertId();

            //Créer une requête qui ajoute le nouvel hashtag suivant dans la bdd :piratage
            $requete = "INSERT INTO `mots_cles`(`mot_cle`) VALUES(:mot_cle)";
            $prepare = $connexion->prepare($requete);
            $prepare->execute(array(
                ':mot_cle' => 'piratage'
            ));
            $lastHashId = $connexion->lastInsertId();

            //Créer une requête qui lie le hashtag "piratage" à l'entrée de l'étape 7.
            $requete = "INSERT INTO `url_mots_cles`(`id_mot_cle`, `id_url`) VALUES(:id_mot_cle, :id_url)";
            $prepare = $connexion->prepare($requete);
            $prepare->execute(array(
                ':id_mot_cle' => $lastHashId,
                ':id_url' => $lastUrlId
            )) ;

            //Créer une requête de sélection pour requêter des données dont le hashtag est "piratage" 
            //et afficher le titre de chaque lien concerné.
            $requete ="SELECT * FROM `url` 
                        WHERE `url_id` IN(SELECT `id_url` FROM `url_mots_cles`
                        WHERE `id_mot_cle` = :id_mot_cle)";
            $prepare = $connexion->prepare($requete);
            $prepare->execute(array(
                ':id_mot_cle' => $lastHashId
            ));
            $prepare = $prepare->fetch();
            echo("lien dont le mot clé est 'piratage': ".$prepare['description']);
        }
        catch (Exception $e){
            echo 'connexion échouée';
        }
    ?>
</body>
</html>