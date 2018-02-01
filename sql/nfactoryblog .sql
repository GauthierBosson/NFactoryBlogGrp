-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 01 fév. 2018 à 11:42
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nfactoryblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `id_expediteur` int(11) NOT NULL,
  `id_destinataire` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_articles`
--

CREATE TABLE `t_articles` (
  `ID_ARTICLE` int(11) NOT NULL,
  `ARTTITRE` varchar(100) NOT NULL,
  `ARTCHAPO` varchar(80) DEFAULT NULL,
  `ARTCONTENU` text NOT NULL,
  `ARTDATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_articles`
--

INSERT INTO `t_articles` (`ID_ARTICLE`, `ARTTITRE`, `ARTCHAPO`, `ARTCONTENU`, `ARTDATE`) VALUES
(61, 'C’est quoi une adresse IP ?', 'Définition simple de l’adresse IP', '&lt;p&gt;Une adresse IP est un num&amp;eacute;ro unique permettant &amp;agrave; un ordinateur de communiquer dans un r&amp;eacute;seau.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Il ne peut pas y avoir plusieurs ordinateurs avec la m&amp;ecirc;me adresse IP dans un m&amp;ecirc;me r&amp;eacute;seau.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;On peut comparer l&amp;rsquo;adresse IP &amp;agrave; un num&amp;eacute;ro de t&amp;eacute;l&amp;eacute;phone :&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;il ne peut pas y avoir plusieurs t&amp;eacute;l&amp;eacute;phones avec le m&amp;ecirc;me num&amp;eacute;ro &amp;hellip; sinon, je vous laisse imaginer le bazar lorsque vous voulez appeler quelqu&amp;rsquo;un !&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Dans un r&amp;eacute;seau, c&amp;rsquo;est pareil, les ordinateurs ne pourraient pas communiquer entre eux si plusieurs d&amp;rsquo;entre eux avaient la m&amp;ecirc;me adresse IP.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Cette adresse IP est li&amp;eacute;e &amp;agrave; la carte r&amp;eacute;seau de l&amp;rsquo;ordinateur (carte r&amp;eacute;seau avec fil, ou sans fil).&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Un ordinateur avec plusieurs cartes r&amp;eacute;seaux peut avoir plusieurs adresses IP.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Comment les ordinateurs obtiennent-ils leur adresse IP ?&lt;/p&gt;\r\n&lt;p&gt;De 2 fa&amp;ccedil;ons :&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;A l&amp;rsquo;aide du serveur DHCP du r&amp;eacute;seau. L&amp;rsquo;ordinateur obtient automatiquement une adresse lorsqu&amp;rsquo;il se connecte sur le r&amp;eacute;seau. Dans ce cas, on parle d&amp;rsquo;une adresse IP dynamique. (c&amp;rsquo;est la majorit&amp;eacute; des cas, et c&amp;rsquo;est sans doute comme &amp;ccedil;a pour vous actuellement)&lt;/p&gt;\r\n&lt;p&gt;Pour plus de d&amp;eacute;tails sur cette partie, voir l&amp;rsquo;article &amp;hellip; C&amp;rsquo;est quoi un serveur DHCP ? .&lt;/p&gt;\r\n&lt;p&gt;D&amp;rsquo;ailleurs, votre adresse IP est : 157.55.39.203&amp;nbsp; et je suppose que ce n&amp;rsquo;est pas vous qui l&amp;rsquo;avez renseign&amp;eacute;e, n&amp;rsquo;est-ce pas ?&lt;/p&gt;\r\n&lt;p&gt;( Il existe de nombreux sites qui affichent votre adresse IP &amp;hellip; mon-ip.com, monip.org, &amp;hellip;)&lt;/p&gt;\r\n&lt;p&gt;(en fait, l&amp;rsquo;adresse IP affich&amp;eacute;e au dessus, n&amp;rsquo;est pas vraiment celle de votre ordinateur, mais celle de votre box : pour comprendre tout cela, allez voir : comment &amp;ccedil;a marche internet (partie 3) &amp;ndash; Ma connexion &amp;agrave; Internet)&lt;/p&gt;\r\n&lt;p&gt;En entrant manuellement cette adresse dans les param&amp;egrave;tres de l&amp;rsquo;ordinateur.&amp;nbsp; Il s&amp;rsquo;agit alors d&amp;rsquo;une adresse IP fixe (ou statique).&lt;/p&gt;\r\n&lt;p&gt;Il faut &amp;ecirc;tre vigilant, car comme je le dis au dessus, il faut faire attention de ne pas mettre plusieurs ordinateurs avec la m&amp;ecirc;me adresse.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Comment se pr&amp;eacute;sente une adresse IP ?&lt;/p&gt;\r\n&lt;p&gt;IPv4 : C&amp;rsquo;est la norme que vous trouvez chez vous.&lt;/p&gt;\r\n&lt;p&gt;Dans le mode de fonctionnement actuel (en IPv4), une adresse IP est pr&amp;eacute;sent&amp;eacute;e sous cette forme : xxx.xxx.xxx.xxx&lt;/p&gt;\r\n&lt;p&gt;(xxx &amp;eacute;tant un nombre de 0 &amp;agrave; 255)&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Voici quelques exemples d&amp;rsquo;adresses IP : 192.168.2.12, 154.2.10.1, 25.62.21.26, 1.2.3.4, 250.251.252.253&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Pour savoir &amp;agrave; quelle r&amp;eacute;seau appartient une adresse IP, il faut &amp;eacute;galement un masque (sujet non d&amp;eacute;velopp&amp;eacute; ici, mais dans cet article : C&amp;rsquo;est quoi une adresse IP &amp;ndash; Les masques r&amp;eacute;seaux )&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Le nombre d&amp;rsquo;adresse IP &amp;eacute;tant limit&amp;eacute; de 0 &amp;agrave; 255 = 256 possibilit&amp;eacute;s. Soit (256 x 256 x 256 x 256 ) =&amp;nbsp; 4.294.967.296 adresses disponibles. Une nouvelle norme &amp;agrave; vue le jour : La norme IPv6.&lt;/p&gt;\r\n&lt;p&gt;(attention le nombre indiqu&amp;eacute; ci dessous n&amp;rsquo;est pas exact, la calcul a &amp;eacute;t&amp;eacute; simplifi&amp;eacute; pour la compr&amp;eacute;hension, car certaines adresses sont r&amp;eacute;serv&amp;eacute;es comme par exemple pour la diffusion sur tout le r&amp;eacute;seau : appel&amp;eacute; broadcast*. Retenez qu&amp;rsquo;il y a environ 4,3 milliards d&amp;rsquo;adresses IPv4 dans le monde).&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Si vous lisez l&amp;rsquo;article de niveau interm&amp;eacute;diaire, je vous explique pourquoi le nombre limit&amp;eacute; d&amp;rsquo;adresse IPv4 pose probl&amp;egrave;me.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;IPv6&lt;/p&gt;\r\n&lt;p&gt;Je ne vais pas m&amp;rsquo;&amp;eacute;tendre sur le sujet, car je vous rappelle que je ne m&amp;rsquo;adresse qu&amp;rsquo;&amp;agrave; des d&amp;eacute;butants en informatique. Mais je peux d&amp;eacute;velopper un tout petit peu, pour votre culture &amp;hellip;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Les adresses IPv6 sont sous la forme xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Ou xxxx est un nombre de 0 &amp;agrave; FFFF (car oui F est un chiffre en hexad&amp;eacute;cimal qui vaut 15, donc FFFF en hexad&amp;eacute;cimal = 65535 en d&amp;eacute;cimal &amp;hellip; ouhh la la &amp;hellip; stop, je rentre trop dans l&amp;rsquo;alg&amp;egrave;bre des informaticiens. Pour plus d&amp;rsquo;infos : voir conversion binaire, d&amp;eacute;cimal et hexad&amp;eacute;cimal et un exemple pour le calcul binaire : voir : calcul binaire.)&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Donc si on fait un petit calcul, &amp;ccedil;a donne 8 groupes de xxxx = 3,4 38 adresses disponibles ( en clair&amp;nbsp; 3 avec 38 z&amp;eacute;ros derri&amp;egrave;re).&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;Ccedil;a devrait nous permettre de voir venir &amp;hellip;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Voici un exemple d&amp;rsquo;adresse IPv6 : 7FE9:8AC6:0067:5FE8:0512:A4C8:F78C:7ACB.&lt;/p&gt;', '2018-02-01 10:24:30'),
(62, 'Dans les coulisses de l&rsquo;informatique de', 'Si une d&eacute;l&eacute;gation de sportifs f', '&lt;p&gt;Atos g&amp;egrave&semi;re l&amp;rsquo&semi;informatique des Jeux Olympiques d&amp;rsquo&semi;hiver qui auront lieu &amp;agrave&semi; Pyeongchang&comma; en Cor&amp;eacute&semi;e du Sud&comma; du 9 au 25 f&amp;eacute&semi;vrier 2018&period; C&amp;rsquo&semi;est sur les &amp;eacute&semi;quipes du groupe fran&amp;ccedil&semi;ais de services du num&amp;eacute&semi;rique que reposent&comma; non seulement la gestion de l&amp;rsquo&semi;&amp;eacute&semi;v&amp;egrave&semi;nement&comma; mais aussi la collecte&comma; le traitement et la diffusion des r&amp;eacute&semi;sultats du jeu&period; Le tout avec deux contraintes fondamentales &colon; le temps r&amp;eacute&semi;el et la s&amp;eacute&semi;curit&amp;eacute&semi;&period;&lt;&sol;p&gt;\r&NewLine;&lt;p&gt;&amp;nbsp&semi;&lt;&sol;p&gt;\r&NewLine;&lt;p&gt;A deux semaines du lancement de l&amp;rsquo&semi;&amp;eacute&semi;v&amp;egrave&semi;nement&comma; Atos a ouvert &amp;agrave&semi; la presse son centre de supervision des jeux olympiques &amp;agrave&semi; Barcelone&comma; en Espagne&period; Depuis les JO de Barcelone en 1992&comma; premiers Jeux olympiques g&amp;eacute&semi;r&amp;eacute&semi;s par le groupe fran&amp;ccedil&semi;ais&comma; ce site est le centre n&amp;eacute&semi;vralgique de l&amp;rsquo&semi;infrastructure num&amp;eacute&semi;rique du groupe d&amp;eacute&semi;di&amp;eacute&semi;e &amp;agrave&semi; la gestion des grands &amp;eacute&semi;v&amp;egrave&semi;nements dont il a la charge&period; C&amp;rsquo&semi;est d&amp;rsquo&semi;ici que des &amp;eacute&semi;quipes d&amp;rsquo&semi;Atos s&amp;rsquo&semi;assurent du bon fonctionnement des jeux sans impact visible pour le CIO&comma; les commentateurs&comma; les diffuseurs audiovisuels&comma; la presse ou encore le grand public&period;&lt;&sol;p&gt;\r&NewLine;&lt;p&gt;&amp;nbsp&semi;&lt;&sol;p&gt;\r&NewLine;&lt;p&gt;\"Nous avons commenc&amp;eacute&semi; &amp;agrave&semi; travailler sur les JO de Pyeongchang cinq ans en avance&comma; confie Patrick Adiba&comma; directeur commercial d&amp;rsquo&semi;Atos et patron de l&amp;rsquo&semi;activit&amp;eacute&semi; du groupe d&amp;eacute&semi;di&amp;eacute&semi;e aux &amp;eacute&semi;v&amp;egrave&semi;nements majeurs&period; Nous sommes pass&amp;eacute&semi;s par diff&amp;eacute&semi;rentes &amp;eacute&semi;tapes&comma; allant de la d&amp;eacute&semi;finition des applications jusqu&amp;rsquo&semi;&amp;agrave&semi; la livraison de services qui vont assurer le fonctionnent des JO&period; Nous nous occupons de tout &amp;agrave&semi; l&amp;rsquo&semi;exception de la billetterie et du dopage&period;\"&lt;&sol;p&gt;', '2018-02-01 10:44:56'),
(63, 'Données personnelles : la mise en conformité ', 'Le règlement européen sur la protection des d', '&lt;p&gt;Selon une enqu&amp;ecirc;te r&amp;eacute;alis&amp;eacute;e aupr&amp;egrave;s des agents territoriaux, et publi&amp;eacute;e le 10 juillet dans &amp;laquo; La Gazette &amp;raquo;, seulement 10 % d&amp;rsquo;entre eux estiment que leur collectivit&amp;eacute; sera pr&amp;ecirc;te le 25 mai 2018 pour l&amp;rsquo;entr&amp;eacute;e en application du r&amp;egrave;glement g&amp;eacute;n&amp;eacute;ral de l&amp;rsquo;Union europ&amp;eacute;enne sur la protection des donn&amp;eacute;es (RGPD), adopt&amp;eacute; le 14 avril 2016. Pourtant, ce dernier sera le socle de la r&amp;eacute;glementation applicable en mati&amp;egrave;re de donn&amp;eacute;es personnelles. Et les collectivit&amp;eacute;s devront s&amp;rsquo;y &amp;ecirc;tre pr&amp;eacute;par&amp;eacute;es, elles qui g&amp;egrave;rent de plus en plus de donn&amp;eacute;es personnelles, au fur et &amp;agrave; mesure du d&amp;eacute;veloppement de l&amp;rsquo;e-administration et de la smart city.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;L&amp;rsquo;urgence, un d&amp;eacute;l&amp;eacute;gu&amp;eacute;&lt;/p&gt;\r\n&lt;p&gt;Ce texte int&amp;egrave;gre un nouveau principe fondamental, duquel toutes les obligations qui seront faites aux collectivit&amp;eacute;s en la mati&amp;egrave;re d&amp;eacute;coulent. C&amp;rsquo;est celui d&amp;rsquo;&amp;laquo; accountability &amp;raquo;, c&amp;rsquo;est-&amp;agrave;-dire la responsabilisation des acteurs. Ainsi, il appartiendra aux collectivit&amp;eacute;s de prendre toutes les mesures n&amp;eacute;cessaires afin d&amp;rsquo;assurer une protection optimale des donn&amp;eacute;es personnelles.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Alice de La Mure, juriste au service &amp;laquo; correspondants informatiques et libert&amp;eacute;s &amp;raquo; de la Commission nationale de l&amp;rsquo;informatique et des libert&amp;eacute;s (Cnil), insiste sur la n&amp;eacute;cessit&amp;eacute; de nommer rapidement un d&amp;eacute;l&amp;eacute;gu&amp;eacute; &amp;agrave; la protection des donn&amp;eacute;es (DPO). Ce qui sera de toute fa&amp;ccedil;on une obligation &amp;agrave; compter du 25 mai. Elle explique que &amp;laquo; le d&amp;eacute;l&amp;eacute;gu&amp;eacute; a un r&amp;ocirc;le de pilote de la conformit&amp;eacute; &amp;raquo;. Il devra, entre autres missions, coop&amp;eacute;rer avec la Cnil. A noter que le RGPD pr&amp;eacute;voit la possibilit&amp;eacute; de mutualiser cette fonction.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', '2018-02-01 10:46:26'),
(64, 'Les collectivit&eacute;s loin d&rsquo;&ecirc;tre pr&ecirc;tes &agrave; appliquer le r&egrave;glement', ' les collectivit&eacute;s locales seront plus que jamais tenues de veiller aux d', '&lt;p&gt;Mais pourront-elles seulement appliquer le r&amp;egrave&semi;glement europ&amp;eacute&semi;en sur la protection des donn&amp;eacute&semi;es &quest; Non&comma; r&amp;eacute&semi;pondent en ch&amp;oelig&semi;ur les intervenants du colloque organis&amp;eacute&semi; la semaine pass&amp;eacute&semi;e &amp;agrave&semi; Paris par la mission Ecoter&period;&lt;&sol;p&gt;\r&NewLine;&lt;p&gt;La cybers&amp;eacute&semi;curit&amp;eacute&semi; est un enjeu dont les collectivit&amp;eacute&semi;s territoriales peinent encore &amp;agrave&semi; s&amp;rsquo&semi;emparer&period; Les exemples r&amp;eacute&semi;cents mettant en &amp;eacute&semi;vidence ce constat sont nombreux&period; A commencer par la sous-utilisation de la plateforme mise en place par l&amp;rsquo&semi;ANSSI durant l&amp;rsquo&semi;exp&amp;eacute&semi;rimentation men&amp;eacute&semi;e en d&amp;eacute&semi;but d&amp;rsquo&semi;ann&amp;eacute&semi;e dans les Hauts-de-France&period;&lt;&sol;p&gt;\r&NewLine;&lt;p&gt;&amp;nbsp&semi;&lt;&sol;p&gt;\r&NewLine;&lt;p&gt;Le colloque organis&amp;eacute&semi; par la mission Ecoter le 22 novembre dernier&comma; ayant pour objet la &amp;laquo&semi; transformation num&amp;eacute&semi;rique&comma; les donn&amp;eacute&semi;es et la cybers&amp;eacute&semi;curit&amp;eacute&semi; &amp;raquo&semi;&comma; a lui aussi permis d&amp;rsquo&semi;appuyer cette conclusion&period; En premier parce que la salle &amp;eacute&semi;tait bien peu remplie&period; Et que les quelques personnes ayant fait le d&amp;eacute&semi;placement &amp;eacute&semi;taient clairement d&amp;eacute&semi;j&amp;agrave&semi; sensibilis&amp;eacute&semi;es &amp;agrave&semi; ces questions&period;&lt;&sol;p&gt;', '2018-02-01 10:55:36'),
(65, 'Les collectivités misent sur l’open source', 'Les logiciels libres sont une source d’économie.', '&lt;p&gt;Ils permettent aux collectivit&amp;eacute;s de devenir les acteurs des fonctionnalit&amp;eacute;s de leurs solutions informatiques. La bureautique open source est accessible &amp;agrave; tous. Les logiciels libres de m&amp;eacute;tier, eux, n&amp;eacute;cessitent de faire appel &amp;agrave; des d&amp;eacute;veloppeurs, qu&amp;rsquo;ils soient prestataires ou en interne. Les collectivit&amp;eacute;s peuvent consulter le Comptoir du libre de l&amp;rsquo;Adullact, lors des appels &amp;agrave; projets. Pour les petites structures, il est plus simple de se regrouper en syndicat mixte.&lt;/p&gt;\r\n&lt;p&gt;De plus en plus de collectivit&amp;eacute;s se tournent vers les logiciels libres lorsqu&amp;rsquo;elles en ont le choix. D&amp;rsquo;abord, parce que c&amp;rsquo;est la solution recommand&amp;eacute;e par le &amp;laquo; R&amp;eacute;f&amp;eacute;rentiel g&amp;eacute;n&amp;eacute;ral d&amp;rsquo;interop&amp;eacute;rabilit&amp;eacute; 2.0 &amp;raquo;, publi&amp;eacute; le 20 avril 2016 par le secr&amp;eacute;tariat g&amp;eacute;n&amp;eacute;ral pour la modernisation de l&amp;rsquo;action publique. Ensuite, parce que ces outils permettent de gagner une ind&amp;eacute;pendance vis-&amp;agrave;-vis des grands groupes.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Ils peuvent &amp;eacute;galement &amp;ecirc;tre une source d&amp;rsquo;&amp;eacute;conomie. &amp;laquo; En migrant les 5 000 postes informatiques de la ville et de la m&amp;eacute;tropole de Nantes vers la suite bureautique LibreOffice, nous avons r&amp;eacute;alis&amp;eacute; une &amp;eacute;conomie de 1,6 million d&amp;rsquo;euros sur cinq ans, indique Karim Hasnaoui, responsable de la mission performance et gestion de Nantes m&amp;eacute;tropole. La migration n&amp;rsquo;a pas &amp;eacute;t&amp;eacute; simple. Quand nous avons install&amp;eacute; LibreOffice, certains agents ont eu l&amp;rsquo;impression de perdre un savoir. &amp;raquo; Un autre probl&amp;egrave;me est apparu : les logiciels libres &amp;eacute;voluent au gr&amp;eacute; des am&amp;eacute;liorations apport&amp;eacute;es par leurs utilisateurs. Si la majorit&amp;eacute; des fonctions importantes sont pr&amp;eacute;sentes dans l&amp;rsquo;outil, certaines n&amp;rsquo;ont pas forc&amp;eacute;ment &amp;eacute;t&amp;eacute; d&amp;eacute;velopp&amp;eacute;es par la communaut&amp;eacute; de contributeurs. Un exemple s&amp;rsquo;est rapidement pr&amp;eacute;sent&amp;eacute; aux services nantais. &amp;laquo; Le tableur Excel, &amp;eacute;dit&amp;eacute; par Windows, permet de faire des tableaux crois&amp;eacute;s dynamiques, explique Eric Ficheux, chef de projet informatique &amp;agrave; la m&amp;eacute;tropole. Cette fonction n&amp;rsquo;existait pas lorsque nous avons commenc&amp;eacute; la migration, il y a quatre ans. Nous avons donc fait appel &amp;agrave; des prestataires pour ...&lt;/p&gt;', '2018-02-01 10:57:35'),
(66, 'VPN : Cisco alerte ses clients sur une grave vulnérabilité', 'Cisco est en état d’alerte : une grave faille (et plutôt simple à exploiter) a é', '&lt;p&gt;D&amp;eacute;cid&amp;eacute;ment, ce d&amp;eacute;but d&amp;rsquo;ann&amp;eacute;e 2018 est secou&amp;eacute; par des vuln&amp;eacute;rabilit&amp;eacute;s graves affectant des composantes vitales des syst&amp;egrave;mes d&amp;rsquo;information.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Derni&amp;egrave;re faille majeure en date, celle annonc&amp;eacute;e hier par Cisco qui affecte la fonctionnalit&amp;eacute; WebVPN d&amp;rsquo;une s&amp;eacute;rie d&amp;rsquo;appliances : Firepower 2100 Series, Firepower 4110, Firepower ISA (Industrial Security Appliance) 3000 Series, ASA (Adaptive Security Appliance) 5500 Series, ASA 5000-X (pare-feu de nouvelle g&amp;eacute;n&amp;eacute;ration), ASA 1000V (Cloud Firewall) mais aussi l&amp;rsquo;appliance virtuelle ASAv, ainsi que son logiciel FTD 6.2.2 (Firepower Threat Defense).&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Si l&amp;rsquo;alerte est si inqui&amp;eacute;tante, c&amp;rsquo;est que le bug d&amp;eacute;couvert (CVE-2018-010) est affubl&amp;eacute; d&amp;rsquo;une s&amp;eacute;v&amp;eacute;rit&amp;eacute; maximale de niveau 10.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Il permet en effet &amp;agrave; un attaquant d&amp;rsquo;envoyer des paquets XML (sp&amp;eacute;cialement assembl&amp;eacute;s) pour entra&amp;icirc;ner le reboot du syst&amp;egrave;me affect&amp;eacute; et m&amp;ecirc;me l&amp;rsquo;ex&amp;eacute;cution &amp;agrave; distance de codes malveillants.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;En pratique, un attaquant peut ais&amp;eacute;ment prendre le contr&amp;ocirc;le total de ces syst&amp;egrave;mes cl&amp;eacute;s pour la s&amp;eacute;curit&amp;eacute; du syst&amp;egrave;me d&amp;rsquo;information pour peu que la fonctionnalit&amp;eacute; WebVPN de ces logiciels et appliances Cisco ait &amp;eacute;t&amp;eacute; activ&amp;eacute;e.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;La vuln&amp;eacute;rabilit&amp;eacute; a &amp;eacute;t&amp;eacute; r&amp;eacute;cemment d&amp;eacute;couverte par Cedric Halbronn, chercheur en s&amp;eacute;curit&amp;eacute; du NCC Group.&lt;/p&gt;', '2018-02-01 10:59:14'),
(67, 'Il faut « développer la culture numérique dès le plus jeune âge » ', 'Un collectif de dix-sept signataires représentants le secteur du numérique ', '&lt;p style=\"box-sizing: border-box; margin: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; padding: 0px; color: #16212c; font-family: Helvetica, Arial, FreeSans, sans-serif; font-size: 13px; background-color: #e9edf0;\"&gt;&lt;strong style=\"box-sizing: border-box;\"&gt;Tribune&lt;/strong&gt;. Il n&amp;rsquo;est pas un jour sans que le num&amp;eacute;rique n&amp;rsquo;apparaisse dans les m&amp;eacute;dias, dans nos relations professionnelles, dans nos d&amp;eacute;marches les plus quotidiennes et anodines. La r&amp;eacute;volution num&amp;eacute;rique impacte l&amp;rsquo;ensemble des secteurs, des m&amp;eacute;tiers et des comp&amp;eacute;tences. De sa r&amp;eacute;ussite d&amp;eacute;pendent en partie le d&amp;eacute;veloppement &amp;eacute;quilibr&amp;eacute; et coh&amp;eacute;rent de notre soci&amp;eacute;t&amp;eacute;, l&amp;rsquo;avenir &amp;eacute;conomique de notre pays, et sa place dans le jeu mondial.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; padding: 0px; color: #16212c; font-family: Helvetica, Arial, FreeSans, sans-serif; font-size: 13px; background-color: #e9edf0;\"&gt;Pouvons-nous continuer &amp;agrave; ignorer la faible culture num&amp;eacute;rique de nos enfants comme de certains de nos concitoyens, qui s&amp;rsquo;en trouvent fragilis&amp;eacute;s&amp;nbsp;? Resterons-nous sans agir face &amp;agrave; la p&amp;eacute;nurie av&amp;eacute;r&amp;eacute;e de femmes et d&amp;rsquo;hommes disposant de savoir-faire dans ce domaine&amp;nbsp;? Cette p&amp;eacute;nurie touche non seulement les entreprises du secteur, mais aussi l&amp;rsquo;ensemble de l&amp;rsquo;&amp;eacute;conomie, entravant son essor.&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=\"color: #16212c; font-family: Helvetica, Arial, FreeSans, sans-serif; font-size: 13px; background-color: #e9edf0;\"&gt;Connaissances minimales&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; padding: 0px; color: #16212c; font-family: Helvetica, Arial, FreeSans, sans-serif; font-size: 13px; background-color: #e9edf0;\"&gt;Face &amp;agrave; ce constat pr&amp;eacute;occupant, et dans le cadre du d&amp;eacute;bat actuel sur la r&amp;eacute;forme du lyc&amp;eacute;e et du baccalaur&amp;eacute;at, l&amp;rsquo;&amp;eacute;cosyst&amp;egrave;me num&amp;eacute;rique se mobilise et demande l&amp;rsquo;introduction d&amp;rsquo;un enseignement de l&amp;rsquo;informatique &amp;agrave; tous les niveaux de l&amp;rsquo;&amp;eacute;ducation nationale, dans les cursus g&amp;eacute;n&amp;eacute;raux, technologiques et professionnels ainsi que sa cons&amp;eacute;quence logique, la cr&amp;eacute;ation d&amp;rsquo;un Capes et d&amp;rsquo;une agr&amp;eacute;gation d&amp;rsquo;informatique.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; padding: 0px; color: #16212c; font-family: Helvetica, Arial, FreeSans, sans-serif; font-size: 13px; background-color: #e9edf0;\"&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; padding: 0px; color: #16212c; font-family: Helvetica, Arial, FreeSans, sans-serif; font-size: 13px; background-color: #e9edf0;\"&gt;Il est imp&amp;eacute;ratif que l&amp;rsquo;ensemble de la population dispose de connaissances minimales en &amp;laquo;&amp;nbsp;humanit&amp;eacute;s num&amp;eacute;riques&amp;nbsp;&amp;raquo;, c&amp;rsquo;est-&amp;agrave;-dire de la capacit&amp;eacute; &amp;agrave; &amp;eacute;voluer avec discernement et lucidit&amp;eacute; dans ce monde num&amp;eacute;rique. Ainsi, nos concitoyens seront en mesure d&amp;rsquo;y intervenir en tant que consommateurs-acteurs responsables&amp;nbsp;: acteurs &amp;eacute;conomiques, usagers et citoyens.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; padding: 0px; color: #16212c; font-family: Helvetica, Arial, FreeSans, sans-serif; font-size: 13px; background-color: #e9edf0;\"&gt;Il faut agir d&amp;egrave;s l&amp;rsquo;&amp;eacute;cole et aupr&amp;egrave;s des plus jeunes afin de d&amp;eacute;velopper chez eux la culture num&amp;eacute;rique, de les initier aux fondamentaux de l&amp;rsquo;informatique et du raisonnement algorithmique.&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; padding: 0px; color: #16212c; font-family: Helvetica, Arial, FreeSans, sans-serif; font-size: 13px; background-color: #e9edf0;\"&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=\"box-sizing: border-box; margin: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; padding: 0px; color: #16212c; font-family: Helvetica, Arial, FreeSans, sans-serif; font-size: 13px; background-color: #e9edf0;\"&gt;Car comprendre les principes de fonctionnement des outils num&amp;eacute;riques et &amp;ecirc;tre &amp;agrave; l&amp;rsquo;aise avec leur usage permet de prendre part aux activit&amp;eacute;s &amp;eacute;conomiques et sociales...&lt;/p&gt;', '2018-02-01 11:05:47'),
(68, 'Une faille de sécurité majeure agite le monde de l\'informatique', 'Contenues dans les microprocesseurs Intel, les vulnérabilités Spectre et Meltdow', '&lt;p&gt;Leur d&amp;eacute;couverte est r&amp;eacute;cente, mais les failles sont vieilles comme la micro informatique. Identifi&amp;eacute;es en mai 2017 par Google, Spectre et Meltdown affecteraient les microprocesseurs Intel depuis... 1995. Gard&amp;eacute; secret depuis plusieurs mois, le temps de mettre au point des &amp;laquo;patchs&amp;raquo; (mises &amp;agrave; jour correctives) pour tous les syst&amp;egrave;mes d\'exploitation, le groupe am&amp;eacute;ricain a finalement d&amp;ucirc; rendre public le ph&amp;eacute;nom&amp;egrave;ne dans la nuit de mercredi &amp;agrave; jeudi, sous la pression de rumeurs insistantes circulant au sein de la communaut&amp;eacute;.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Acc&amp;eacute;der &amp;agrave; l\'ensemble des donn&amp;eacute;es personnelles de l\'utilisateur&lt;/p&gt;\r\n&lt;p&gt;Le risque mis &amp;agrave; jour est de donner l\'acc&amp;egrave;s &amp;agrave; l\'ensemble de la m&amp;eacute;moire de l\'ordinateur &amp;agrave; une application, qui normalement ne devrait pouvoir atteindre qu\'une partie bien d&amp;eacute;finie, et avec l\'autorisation de l\'utilisateur, comme le d&amp;eacute;taille Steven Meyer, CEO de ZENData, sp&amp;eacute;cialiste en cybers&amp;eacute;curit&amp;eacute;: &amp;laquo;Avec Meltdown ou Spectre, via le t&amp;eacute;l&amp;eacute;chargment d\'une application ou m&amp;ecirc;me la simple consultation d\'un site par la victime, un individu malveillant pourrait acc&amp;eacute;der &amp;agrave; l\'ensemble des donn&amp;eacute;es en m&amp;eacute;moire. Par exemple, les mots de passe stock&amp;eacute;s dans le navigateur, des documents Word, voir m&amp;ecirc;me des cookies d\'acc&amp;egrave;s au e-banking. Pour l\'instant, on n\'a pas encore d\'attaques de ce type constat&amp;eacute;es via cette vuln&amp;eacute;rabilit&amp;eacute;, mais ce n\'est qu\'une question de jours.&amp;raquo;&lt;/p&gt;', '2018-02-01 11:08:32');

-- --------------------------------------------------------

--
-- Structure de la table `t_articles_has_t_users`
--

CREATE TABLE `t_articles_has_t_users` (
  `T_ARTICLES_ID_ARTICLE` int(11) NOT NULL,
  `T_USERS_ID_USER` int(11) NOT NULL,
  `T_USERS_T_ROLES_ID_ROLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_categories`
--

CREATE TABLE `t_categories` (
  `ID_CATEGORIE` int(11) NOT NULL,
  `CATLIBELLE` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_categories`
--

INSERT INTO `t_categories` (`ID_CATEGORIE`, `CATLIBELLE`) VALUES
(1, 'Web'),
(2, 'Informatique'),
(3, 'MAV');

-- --------------------------------------------------------

--
-- Structure de la table `t_categories_has_t_articles`
--

CREATE TABLE `t_categories_has_t_articles` (
  `T_CATEGORIES_ID_CATEGORIE` int(11) NOT NULL,
  `T_ARTICLES_ID_ARTICLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_categories_has_t_articles`
--

INSERT INTO `t_categories_has_t_articles` (`T_CATEGORIES_ID_CATEGORIE`, `T_ARTICLES_ID_ARTICLE`) VALUES
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 65),
(2, 66),
(2, 67),
(2, 68),
(3, 66),
(3, 67),
(3, 68);

-- --------------------------------------------------------

--
-- Structure de la table `t_roles`
--

CREATE TABLE `t_roles` (
  `ID_ROLE` int(11) NOT NULL,
  `ROLEDESI` varchar(45) NOT NULL,
  `ROLEDEF` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_roles`
--

INSERT INTO `t_roles` (`ID_ROLE`, `ROLEDESI`, `ROLEDEF`) VALUES
(1, 'ROLE_SUPERADMIN', NULL),
(2, 'ROLE_ADMIN', NULL),
(3, 'ROLE_MODERATEUR', NULL),
(4, 'ROLE_REDACTEUR', NULL),
(5, 'ROLE_UTILISATEUR', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `t_users`
--

CREATE TABLE `t_users` (
  `ID_USER` int(11) NOT NULL,
  `USERNAME` varchar(45) NOT NULL,
  `USERFNAME` varchar(45) DEFAULT NULL,
  `USERMAIL` varchar(255) NOT NULL,
  `USERPASSWORD` char(40) NOT NULL,
  `USERDATEINS` datetime DEFAULT NULL,
  `T_ROLES_ID_ROLE` int(11) NOT NULL,
  `confirmkey` varchar(255) NOT NULL,
  `confirme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_users`
--

INSERT INTO `t_users` (`ID_USER`, `USERNAME`, `USERFNAME`, `USERMAIL`, `USERPASSWORD`, `USERDATEINS`, `T_ROLES_ID_ROLE`, `confirmkey`, `confirme`) VALUES
(1, 'DA COSTA', 'Théo', 'theo.dacos@gmail.com', '1d00b455881af29f5db99e94a61bf7d1b139e0e4', NULL, 1, '', 0),
(38, 'Bosson', 'Hugo', 'hugo@bosson.com', '8d1c07b72465736e6278d72019572d5d74c56373', NULL, 1, '48431881368294', 0),
(39, 'Ratel', 'Hugoboss', 'ratelhugo@gmail.com', '36d6ced3948d8a8578658f1d010f5d825acc032b', NULL, 5, '19029045131976', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_articles`
--
ALTER TABLE `t_articles`
  ADD PRIMARY KEY (`ID_ARTICLE`);

--
-- Index pour la table `t_articles_has_t_users`
--
ALTER TABLE `t_articles_has_t_users`
  ADD PRIMARY KEY (`T_ARTICLES_ID_ARTICLE`,`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_ARTICLES_has_T_USERS_T_USERS1_idx` (`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_ARTICLES_has_T_USERS_T_ARTICLES1_idx` (`T_ARTICLES_ID_ARTICLE`);

--
-- Index pour la table `t_categories`
--
ALTER TABLE `t_categories`
  ADD PRIMARY KEY (`ID_CATEGORIE`);

--
-- Index pour la table `t_categories_has_t_articles`
--
ALTER TABLE `t_categories_has_t_articles`
  ADD PRIMARY KEY (`T_CATEGORIES_ID_CATEGORIE`,`T_ARTICLES_ID_ARTICLE`),
  ADD KEY `fk_T_CATEGORIES_has_T_ARTICLES_T_ARTICLES1_idx` (`T_ARTICLES_ID_ARTICLE`),
  ADD KEY `fk_T_CATEGORIES_has_T_ARTICLES_T_CATEGORIES1_idx` (`T_CATEGORIES_ID_CATEGORIE`);

--
-- Index pour la table `t_roles`
--
ALTER TABLE `t_roles`
  ADD PRIMARY KEY (`ID_ROLE`);

--
-- Index pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`ID_USER`,`T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_USERS_T_ROLES_idx` (`T_ROLES_ID_ROLE`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_articles`
--
ALTER TABLE `t_articles`
  MODIFY `ID_ARTICLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT pour la table `t_categories`
--
ALTER TABLE `t_categories`
  MODIFY `ID_CATEGORIE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `t_roles`
--
ALTER TABLE `t_roles`
  MODIFY `ID_ROLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_articles_has_t_users`
--
ALTER TABLE `t_articles_has_t_users`
  ADD CONSTRAINT `fk_T_ARTICLES_has_T_USERS_T_ARTICLES1` FOREIGN KEY (`T_ARTICLES_ID_ARTICLE`) REFERENCES `t_articles` (`ID_ARTICLE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_ARTICLES_has_T_USERS_T_USERS1` FOREIGN KEY (`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`) REFERENCES `t_users` (`ID_USER`, `T_ROLES_ID_ROLE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_categories_has_t_articles`
--
ALTER TABLE `t_categories_has_t_articles`
  ADD CONSTRAINT `fk_T_CATEGORIES_has_T_ARTICLES_T_ARTICLES1` FOREIGN KEY (`T_ARTICLES_ID_ARTICLE`) REFERENCES `t_articles` (`ID_ARTICLE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_CATEGORIES_has_T_ARTICLES_T_CATEGORIES1` FOREIGN KEY (`T_CATEGORIES_ID_CATEGORIE`) REFERENCES `t_categories` (`ID_CATEGORIE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD CONSTRAINT `fk_T_USERS_T_ROLES` FOREIGN KEY (`T_ROLES_ID_ROLE`) REFERENCES `t_roles` (`ID_ROLE`) ON DELETE NO ACTION ON UPDATE NO ACTION;


--
-- Métadonnées
--
USE `phpmyadmin`;

--
-- Métadonnées pour la table messages
--

--
-- Métadonnées pour la table t_articles
--

--
-- Déchargement des données de la table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'nfactoryblog', 't_articles', '{\"sorted_col\":\"`ID_ARTICLE`  DESC\"}', '2018-02-01 09:21:11');

--
-- Métadonnées pour la table t_articles_has_t_users
--

--
-- Métadonnées pour la table t_categories
--

--
-- Métadonnées pour la table t_categories_has_t_articles
--

--
-- Métadonnées pour la table t_roles
--

--
-- Métadonnées pour la table t_users
--

--
-- Métadonnées pour la base de données nfactoryblog
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
