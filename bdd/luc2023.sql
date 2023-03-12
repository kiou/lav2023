-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 12 mars 2023 à 12:48
-- Version du serveur : 5.7.36
-- Version de PHP : 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `luc2023`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

DROP TABLE IF EXISTS `actualite`;
CREATE TABLE IF NOT EXISTS `actualite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `changed` datetime DEFAULT NULL,
  `fullsize` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actualite`
--

INSERT INTO `actualite` (`id`, `created`, `titre`, `slug`, `image`, `resume`, `contenu`, `is_active`, `changed`, `fullsize`) VALUES
(39, '2022-10-16 08:04:59', 'Le site l\'informatique avec vous est en ligne V1', 'le-site-linformatique-avec-vous-est-en-ligne-v1', 'pinelli-luc-l-informatique-avec-vous-00706600-123307132-1665907499.png', 'Le site l\'informatique avec vous est en ligne, hésitez pas à la consulter et me contacter', '<p>Le site l&#39;informatique avec vous est en ligne, h&eacute;sitez pas &agrave; la consulter et me contacter !<br />\r\nDisponible sur Chom&eacute;rac et ses alentours (Dr&ocirc;me, Ard&egrave;che) Je me d&eacute;place chez vous pour vous aider &agrave; r&eacute;gler votre probl&egrave;me informatique.<br />\r\nOu si vous avez besoin d&#39;une formation sp&eacute;cifique, ou de mettre &agrave; jour votre machine.<br />\r\nBref tout est sur le site, merci &agrave; vous !</p>', 1, '2022-11-06 21:50:31', 0),
(40, '2022-10-25 23:07:27', 'Les cartes de visite sont la', 'les-cartes-de-visite-sont-la', 'img-1822-1667173038.jpg', 'Les cartes de visite sont la ! PARTENARIAT, si une personne fait appel à mes services de votre part c\'est 25% de réduction', '<p>Les cartes de visite sont la ! PARTENARIAT, si une personne fait appel &agrave; mes services de votre part c&#39;est 25% de r&eacute;duction CUMULABLE sur votre prochaine intervention 🙂 Demandez la/les votre(s)</p>', 1, '2022-10-30 23:37:20', 0),
(41, '2022-10-25 23:08:42', 'je suis maintenant équipé d\'un TPE', 'je-suis-maintenant-equipe-dun-tpe', 'sumup-air-01-os-480-1666739332.png', 'Bonjour à tous·tes, je suis maintenant équipé d\'un terminal de paiement portable', '<p>Bonjour &agrave; tous&middot;tes, je suis maintenant &eacute;quip&eacute; d&#39;un terminal de paiement portable. Prenez rendez-vous et vous n&#39;avez plus qu&#39;&agrave; m&#39;attendre chez vous avec une petite grenadine 😉 &agrave; bient&ocirc;t !</p>', 1, '2022-10-25 23:08:52', 0),
(42, '2022-10-25 23:10:11', 'La communication est la', 'la-communication-est-la', '291490520-10227059114084623-4654131483999035961-n-rs-480-1666739411.jpg', 'Bonjour à tous·tes, La communication est la ! (manque plus que la voiture) Pour ceux qui ne me connaissent pas encore', '<p>Bonjour &agrave; tous&middot;tes, La communication est la ! (manque plus que la voiture) Pour ceux qui ne me connaissent pas encore, je viens &agrave; domicile et je vous aide / vous forme / vous &eacute;quipes ou une petite r&eacute;vision du PC / T&eacute;l&eacute;phone. Et encore bien d&#39;autres choses. Je suis &agrave; votre disposition !</p>', 1, NULL, 0),
(43, '2022-10-25 23:11:10', 'Mettre à jour votre PC', 'mettre-a-jour-votre-pc', '293385262-3181064898774691-5934229623551119570-n-os-480-1666739470.jpg', 'Parfois il suffit de mettre à jour une machine qui à quelques années', '<p>Parfois il suffit de mettre &agrave; jour une machine qui &agrave; quelques ann&eacute;es et c&#39;est repartis !! #informatique #diagnostique #reconditionnement</p>', 1, NULL, 0),
(44, '2022-10-25 23:11:59', 'Montage d’un serveur NAS synology', 'montage-dun-serveur-nas-synology', '293307184-3243187079262543-7525491894783321098-n-os-480-1666739519.jpg', 'Montage d’un serveur NAS synology. Le nuage mais à la maison. Tellement pratique et pour des usages multiples. #synology #informatique #domicile', '<p>Montage d&rsquo;un serveur NAS synology. Le nuage mais &agrave; la maison. Tellement pratique et pour des usages multiples. #synology #informatique #domicile</p>', 1, NULL, 0),
(45, '2022-10-25 23:12:39', 'Reconditionnement informatique', 'reconditionnement-informatique', '293184483-142440228437579-6976195009744113993-n-os-480-1666739559.jpg', 'Reconditionnement informatique une belle tour d’occasion quelques leds. Et voilà !! #reconditionné #informatique #chomerac', '<p>Reconditionnement informatique une belle tour d&rsquo;occasion quelques leds. Et voil&agrave; !! #reconditionn&eacute; #informatique #chomerac</p>', 1, NULL, 0),
(46, '2022-10-26 10:43:52', 'Article du Dauphiné Libéré du 06 juil. 2022', 'article-du-dauphine-libere-du-06-juil-2022', 'presse-dauphine-libere-os-480-1666781032.jpg', 'Bonjour à tous-tes, Article du Dauphiné Libéré du 06 juil. 2022', '<p><em>Luc Pinelli a ouvert son entreprise L&#39;informatique avec vous au 405, chemin d&#39;aurouze.</em></p>\r\n\r\n<p>Depuis le 25 mai, Luc Pinelli s&#39;est install&eacute; au num&eacute;ro 405 du chemin d&#39;Aurouze, dans le secteur de l&#39;infor-matique. La formation, le diagnostic, l&#39;intervention &agrave; domicile ou en ligne, la vente et l&#39;installation d&#39;ordi-mateur, la cr&eacute;ation de site et m&ecirc;me la t&eacute;l&eacute;phonie sont ses domaines de pr&eacute;dilection au sein de cette entreprise d&eacute;nomm&eacute;e L&#39;Informatique avec vous. Ag&eacute; de 35 ans et natif de Privas, il est titulaire d&#39;une licence de d&eacute;veloppement web &agrave; l&#39;&eacute;cole Aries, &agrave; Grenoble. Il a travaill&eacute; durant neuf ans dans une agence de communication grenobloise avant de songer &agrave; rentrer au pays et de se mettre &agrave; son compte. M&ecirc;me s&#39;il se dit &laquo; geek dans l&#39;&acirc;me &raquo;, il entend surtout avoir une approche p&eacute;dagogique aupr&egrave;s de ses clients qui, parfois, sont d&eacute;sorient&eacute;s face aux nouvelles techmologies</p>\r\n\r\n<p><img alt=\"\" src=\"/img/upload/presse-dauphine-libere-1668174154.jpg	\" style=\"height:987px; margin-bottom:15px; margin-top:15px; width:703px\" /></p>', 1, '2022-11-11 15:47:44', 1),
(47, '2022-10-26 10:45:30', 'Voila l\'intérieur d\'un SSD Kingston', 'alors-voila-linterieur-dun-ssd-kingston', '293826763-3299151960320053-7372443673972165597-n-os-480-1666781137.jpg', 'Alors, voila l\'intérieur d\'un SSD, le \"nouveau\" format de stockage pour les ordinateurs', '<p>Alors, voila l&#39;int&eacute;rieur d&#39;un SSD, le &quot;nouveau&quot; format de stockage pour les ordinateurs. Que des puces :) #ssd #informatique #chom&eacute;rac #pinelli</p>', 1, '2022-11-06 21:52:20', 0),
(48, '2022-10-26 10:46:55', 'Super boulot de SiformServices à privas', 'apres-super-boulot-de-siformservices-maintenan', 'img-1906-1667767064.jpg', 'Super boulot de SiformServices maintenant vous ne pouvez plus me rater !', '<p>Super boulot de #siformservices maintenant vous ne pouvez plus me rater ! #flocage #informatique #chomerac #graphisme</p>\r\n\r\n<p><img alt=\"\" src=\"/img/upload/img-1907-1668178429.jpg\" style=\"height:1080px; width:810px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/img/upload/img-1904-1668178358.jpg\" style=\"height:1080px; width:810px\" /></p>', 1, '2022-11-11 16:00:09', 0),
(49, '2022-10-26 10:47:51', 'Mon bureau en fin de journée.', 'mon-bureau-en-fin-de-journee', '297822156-1874915796030516-4779776589509208430-n-os-480-1666781271.jpg', 'Mon bureau en fin de journée. C’est plutôt sympa. Mais si je travail !! #ardeche #informatique #chomerac', '<p>Mon bureau en fin de journ&eacute;e. C&rsquo;est plut&ocirc;t sympa. Mais si je travail !! #ardeche #informatique #chomerac</p>', 1, NULL, 0),
(50, '2022-10-30 23:55:00', 'La différence de taille entre un HDD et un SSD', 'la-difference-de-taille-entre-un-hdd-et-un-ssd', '297990820-793012405449722-4854115207529963714-n-os-480-1667174107.jpg', 'La différence de taille entre un HDD (disque dur souvent utilisé dans les machines avec quelques années) et un SSD', '<p>La diff&eacute;rence de taille entre un HDD (disque dur souvent utilis&eacute; dans les machines avec quelques ann&eacute;es) et un SSD (beaucoup plus petit et beaucoup plus performant) une vraie bonne id&eacute;e pour donner un coup de neuf &agrave; votre PC. #informatique #chom&eacute;rac #reconditionn&eacute;</p>', 1, '2022-10-30 23:55:08', 0),
(51, '2022-10-30 23:56:11', 'Si vous avez l’impression que votre ordinateur chauffe', 'si-vous-avez-limpression-que-votre-ordinateur-chauffe', 'image-rs-480-1667174171.png', 'Si vous avez l’impression que votre ordinateur chauffe un peu il y’a parfois une bonne raison !!!', '<p>Si vous avez l&rsquo;impression que votre ordinateur chauffe un peu il y&rsquo;a parfois une bonne raison !!! Pensez &agrave; faire nettoyer votre ordinateur portable, il vous remerciera. #informatique #chomerac #ardeche #nettoyage #pcportable #lucpinelli</p>', 1, NULL, 0),
(52, '2022-10-30 23:57:11', 'Vous avez préparé votre trousse pour la rentrée ?', 'vous-avez-prepare-votre-trousse-pour-la-rentree', '301376376-817398175943411-6065719123397707476-n-os-480-1667174231.jpg', 'Vous avez préparé votre trousse pour la rentrée ? Comme quoi y’a des choses qui ne changent pas', '<p>Vous avez pr&eacute;par&eacute; votre trousse pour la rentr&eacute;e ? Comme quoi y&rsquo;a des choses qui ne changent pas. #rentr&eacute;e #informatique #trousse #d&eacute;placement #pinelliluc #ardeche</p>', 1, NULL, 0),
(53, '2022-10-30 23:57:53', 'L\'informatique avec vous est sponsor du CBC', 'linformatique-avec-vous-est-sponsor-du-cbc', 'img-2154-1667767622.jpg', 'L\'informatique avec vous est sponsor du CBC cette année. Mes deux nièces étant dans le club depuis un moment', '<p>L&#39;informatique avec vous est sponsor du CBC cette ann&eacute;e. Mes deux ni&egrave;ces &eacute;tant dans le club depuis un moment maintenant c&rsquo;&eacute;tais pour moi l&rsquo;occasion d&rsquo;apporter mon soutien et &eacute;galement un plaisir de pouvoir afficher le logo de mon entreprise au Triolet de Chom&eacute;rac que je connais depuis tout petit !</p>', 1, '2023-03-11 11:21:17', 0),
(54, '2022-11-19 12:41:37', 'Le \"Black Friday\" commence !', 'le-black-friday-commence', 'istock-1172459816-1668858130.jpg', 'C\'est le moment, si tu souhaites t\'équiper ou changer ton matériel de profiter des meilleurs prix !', '<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/img/upload/istock-1172459816-1668858070.jpg	\" style=\"height:544px; width:1302px\" /></p>\r\n\r\n<p>C&#39;est le moment, si tu souhaites t&#39;&eacute;quiper ou changer ton mat&eacute;riel de profiter des meilleurs prix !</p>\r\n\r\n<h2>Le Black Friday et &quot;L&#39;informatique avec vous&quot;</h2>\r\n\r\n<ul>\r\n	<li>Tu souhaites changer ou t&#39;equiper d&#39;un ordinateur</li>\r\n	<li>Tu souhaites gonfler&nbsp;la puissance de ton ordinateur</li>\r\n	<li>Tu souhaites changer de Smartphone, de forfait, peut &ecirc;tre les&nbsp;deux</li>\r\n	<li>D&eacute;couvrir les assistants connect&eacute;s (Alexa, Google)</li>\r\n	<li>Me poser une question sur un autre &eacute;quipement informatique&nbsp;?</li>\r\n</ul>\r\n\r\n<p>les r&eacute;ductions sont la et je t&#39;accompagne dans tes achat(s), ta livraison et ton installation.</p>\r\n\r\n<h2>Mes services</h2>\r\n\r\n<ol>\r\n	<li>Discussion du besoin et de la demande pour fixer un prix qui te correspond</li>\r\n	<li>Achat commande et verification de la commande</li>\r\n	<li>Livraison &agrave; domicile</li>\r\n	<li>Installation avec periph&eacute;rique(s)&nbsp;</li>\r\n	<li>Transfert des donn&eacute;es&nbsp;</li>\r\n	<li>Formation au besoin</li>\r\n</ol>\r\n\r\n<h2>Horraires</h2>\r\n\r\n<p>De 9h00 &agrave; 20h00 sauf le Dimanche, je suis &agrave; ton service<br />\r\nau 06 50 23 34 97</p>\r\n\r\n<p><em><small>* Conseil et commande disponible pour PC Windows et Apple</small></em></p>', 1, '2022-11-30 16:41:49', 1),
(56, '2022-12-17 18:39:11', 'Tu sais pas quoi offrir comme cadeau de noël ? Offre une formation !', 'tu-sais-pas-quoi-offrir-comme-cadeau-de-noel-offre-une-formation-en-informatique', 'banniere-fb-yt-copie-1671299706.jpg', 'Le bon cadeau de noël est la ! tu sais toujours pas quoi offrir à tes parents ? (ou autre) offre leur une formation en informatique :)', '<p><strong>Bonjour &agrave; tous-tes</strong></p>\r\n\r\n<p>Le bon cadeau de noel est la ! si toi aussi tu sais plus trop quoi offire &agrave; tes parents (ou autre) offre leur une formatio en informatique</p>\r\n\r\n<ul>\r\n	<li>Contact moi sur Facebook ou par T&eacute;l&eacute;phone (06 50 23 34 97) ou par Fax, (bon courage pour trouver le num&eacute;ro) !</li>\r\n	<li>On discute ensemble du type de formation que tu souhaites ainsi que de la dur&eacute;e (45&euro; les 2 heures, d&eacute;placement compris)</li>\r\n	<li>Je te fais une belle carte cadeau par email ou autre que tu pourras imprimer et completer au dos avec le message que tu souhaites</li>\r\n	<li>On convient ensemble une fois le cadeau offert, de la date pour commencer la formation (ou je m&#39;occupe de prendre contact avec la personne pour lui expliquer le d&eacute;roulement des choses et m&#39;organiser avec elle (la personne)</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/img/upload/sdsqdqs-1671299597.jpg\" style=\"height:826px; width:826px\" /></p>', 1, '2022-12-17 19:27:57', 1),
(57, '2022-12-31 21:40:08', 'Merci à tous-tes pour cette année 2022', 'merci-a-tous-tes-pour-cette-annee-2022', 'miniature-1672519598.jpg', 'Merci à tous-tes pour cette année 2022. Je souhaite vous faire un petit message à la fin de cette année concernant les 6 premiers mois de mon entreprise.', '<p>Bonjour &agrave; tous-tes,</p>\r\n\r\n<p>Je souhaite vous faire un petit message &agrave; la fin de cette ann&eacute;e concernant les 6 premiers mois de mon entreprise.</p>\r\n\r\n<p><strong>Luc Pinelli - L&#39;informatique avec vous</strong></p>\r\n\r\n<p>Tout d&#39;abord, je vous remercie d&#39;avoir &eacute;t&eacute; pr&eacute;sents pour le lancement de mon entreprise. Effectivement, j&#39;ai beaucoup travaill&eacute; pendant cette premi&egrave;re p&eacute;riode et j&#39;en suis tr&egrave;s content.</p>\r\n\r\n<p>J&#39;ai rencontr&eacute; de nombreuses belles personnes et j&#39;ai d&eacute;j&agrave; beaucoup de beaux souvenirs.<br />\r\nQue ce soit pendant une formation o&ugrave; j&#39;ai toujours le plaisir de transmettre ce que je sais (ce que j&#39;aime) &agrave; une autre personne.<br />\r\nQue ce soit pendant une intervention o&ugrave; vous achetez du mat&eacute;riel que je ne connais pas et que nous apprenons ensemble.<br />\r\nQue ce soit apr&egrave;s (ou pendant) l&#39;intervention quand nous prenons parfois le temps de discuter un peu et que j&#39;apprends &agrave; vous conna&icirc;tre.<br />\r\nQue ce soit le sourire d&#39;une personne au moment de la re d&eacute;couverte de son ordinateur de 8 ans auquel je viens de donner une belle seconde jeunesse. Et bien d&#39;autres choses encore.</p>\r\n\r\n<p>En cr&eacute;ant cette entreprise, mon but &eacute;tait de relier 4 choses qui me sont ch&egrave;res :</p>\r\n\r\n<ul>\r\n	<li>Aider les gens</li>\r\n	<li>Dans un sujet qui me passionne (l&#39;informatique dans sa globalit&eacute; ou presque),</li>\r\n	<li>Continuer &agrave; apprendre au quotidien,</li>\r\n	<li>&Ecirc;tre ind&eacute;pendant.</li>\r\n</ul>\r\n\r\n<p>Maintenant, c&#39;est 2023 qui arrive et j&#39;ai encore de nombreux projets en t&ecirc;te, j&#39;esp&egrave;re qu&#39;ils vont continuer &agrave; &eacute;voluer dans cette direction et je ferai de mon mieux pour que ce soit le cas.</p>\r\n\r\n<p>Comme je le disais, d&#39;autres projets arrivent :</p>\r\n\r\n<ul>\r\n	<li>La cr&eacute;ation de sites internet avec ma solution propri&eacute;taire (je ferai un article bient&ocirc;t pour expliquer ce point),</li>\r\n	<li>La formation de groupe qui devrait arriver &agrave; court/moyen terme (6 personnes),</li>\r\n	<li>Et d&#39;autres choses encore.</li>\r\n</ul>\r\n\r\n<p>​​Et je tiens &agrave; dire que lancer une entreprise (comme tout projet) demande beaucoup de travail et ma famille a toujours &eacute;t&eacute; pr&eacute;sente en coulisses (parfois m&ecirc;me sur sc&egrave;ne pour la distribution de cartes et de flyers) pour m&#39;aider, merci &agrave; eux !</p>\r\n\r\n<p>Pour terminer, voici quelques photos et explications de mon bureau (car je n&#39;ai pas de boutique et je n&#39;en aurai jamais), mais j&#39;ai un bureau tr&egrave;s professionnel o&ugrave; se retrouvent vos ordinateurs quand je les r&eacute;cup&egrave;re.</p>\r\n\r\n<p><br />\r\n<strong><span style=\"font-size:14px\">Merci &agrave; tous, &agrave; tr&eacute;s bient&ocirc;t, et une tr&eacute;s belle ann&eacute;e !</span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Mise &agrave; jour de la version 2022</strong></h2>\r\n\r\n<p><span style=\"font-size:14px\">Pour le moment installation sur pied et verification de l&#39;installation de l&#39;&eacute;cran vertical</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><img alt=\"\" src=\"/img/upload/img-2424-1672520021.jpg\" style=\"margin-bottom:15px; margin-top:15px\" /></strong></span></p>\r\n\r\n<h4>&nbsp;</h4>\r\n\r\n<h2><strong>Ajout du Pc portable (Mon Pc Windows)</strong></h2>\r\n\r\n<p>Sur un pied &eacute;galement et en hauteur pour pouvoir ajouter des &eacute;l&eacute;ments en dessous</p>\r\n\r\n<ul>\r\n	<li>A gauche sous l&#39;&eacute;cran le mac mini pour tout ce qui concerne la soci&eacute;t&eacute; et &eacute;galement pour avoir l&#39;habitude de travailler sur MacOS pour les formations Apple</li>\r\n	<li>Derri&eacute;re l&#39;&eacute;cran le micro sur pied qui me permet de faire les interventions &agrave; distance ainsi que des vid&eacute;os au besoin</li>\r\n	<li>A droite en dessous du&nbsp;Pc portable le serveur de la soci&eacute;t&eacute; et un lecteur de disque SATA pour faire les sauvegardes</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/img/upload/img-2425-1672520037.jpg\" style=\"margin-bottom:15px; margin-top:15px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Version termin&eacute;e de mon bureau 2023</strong></h2>\r\n\r\n<p>Tout fonctionne parfaitement, pas mal de materiel cach&eacute; derri&eacute;re les &eacute;crans ou coll&eacute; en dessous du bureau pour arriver &agrave; avoir un espace propre et une belle surface de travail (place &agrave; la d&eacute;co)</p>\r\n\r\n<p><strong><span style=\"font-size:16px\"><img alt=\"\" src=\"/img/upload/img-2427-1672520050.jpg\" /></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Derni&eacute;res mises en place et d&eacute;corations</strong></h2>\r\n\r\n<p>Voila la version du bureau <strong>L&#39;informatique avec vous</strong> 2023</p>\r\n\r\n<p><img alt=\"\" src=\"/img/upload/miniature-1672520075.jpg\" style=\"height:1080px; width:1440px\" /></p>\r\n\r\n<p>&nbsp;</p>', 1, '2023-03-11 11:05:21', 0),
(59, '2023-01-14 17:46:57', 'Donne une seconde vie à ton ordinateur', 'donne-une-seconde-vie-a-ton-ordinateur', 'img-2505-1673870028.jpg', 'Donne une seconde vie à ton ordinateur, si tu penses que ta machine est bonne à jeter, ce n’est pas forcément le cas, avec un peu de travail on peux souvent faire de belle choses.', '<p>Si tu as un ordinateur qui est lent voir presque inutilisable, tu penses forc&eacute;ment qu&#39;il est en bout de vie et qu&#39;il est bon &agrave; jeter et bien c&#39;est pas tout le temps le cas.&nbsp;</p>\r\n\r\n<p>Selon l&#39;utilisation (bureautique g&eacute;n&eacute;ralement) il y a souvent des solutions pour en faire une machine relativement acceptable pour un tarif bien en dessous d&#39;un rachat.</p>\r\n\r\n<p>Dans ce cas, je r&eacute;cup&egrave;re ton ordinateur et je fais un diagnostic:</p>\r\n\r\n<ul>\r\n	<li>Je fais un point complet sur l&#39;&eacute;tat physique,</li>\r\n	<li>Je fais un point sur les composants,</li>\r\n	<li>Je reviens vers toi rapidement et on fait le point ensemble,</li>\r\n	<li>Une fois l&#39;intervention termin&eacute;e&nbsp;(48/72h) je te livre la machine et on prend le temps ensemble de tout configurer en relation avec ton utilisation,</li>\r\n	<li>Cela prend en compte la r&eacute;initialisation des donn&eacute;es, des logiciels, et des p&eacute;riph&eacute;riques.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>1 / Diagnostic - Ext&eacute;rieur</h2>\r\n\r\n<p><img alt=\"\" src=\"/img/upload/analayse-exterieur-de-la-machine-1674322489.jpg	\" style=\"height:600px; width:1302px\" /></p>\r\n\r\n<p>&nbsp;​​​​​Cet ordinateur a 8 ans, apr&egrave;s analyse il a tout ce qu&#39;il faut pour commencer sa seconde vie:</p>\r\n\r\n<ul>\r\n	<li>Il est encrass&eacute; mais ne pr&eacute;sente pas de casse ou de d&eacute;formation,</li>\r\n	<li>Aucun souci au niveau des charni&egrave;res et du fonctionnement de l&#39;&eacute;cran,</li>\r\n	<li>Les connectiques sont fonctionnelles,</li>\r\n	<li>le clavier et le pav&eacute; tactile sont fonctionnels.</li>\r\n</ul>\r\n\r\n<h2><br />\r\n2 / Diagnostic - int&eacute;rieur</h2>\r\n\r\n<p><img alt=\"\" src=\"/img/upload/analyse-interieur-de-l-ordinatuer-avant-reparation-1674322313.jpg\" style=\"height:600px; width:1302px\" /></p>\r\n\r\n<p>Pour l&#39;int&eacute;rieur m&ecirc;me constat que l&#39;exterieur:</p>\r\n\r\n<ul>\r\n	<li>Il est recouvert de poussi&egrave;re mais pas de pi&egrave;ce abim&eacute;e ou oxyd&eacute;e,</li>\r\n	<li>Le ventilateur est fonctionnel et ne fait pas de bruit,</li>\r\n	<li>L&#39;aspect global est bon, <strong>au nettoyage maintenant.</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>3 / Nettoyage - int&eacute;rieur</h2>\r\n\r\n<p><img alt=\"\" src=\"/img/upload/interieur-de-l-ordinateur-portable-apres-nettoyage-1674383391.jpg\" style=\"height:600px; width:1302px\" /></p>\r\n\r\n<p>Voila, j&#39;ai m&ecirc;me d&eacute;mont&eacute; le clavier pour pouvoir le nettoyer correctement:</p>\r\n\r\n<ul>\r\n	<li>Je passe sur les d&eacute;tails mais je n&#39;utilise pas de consommables pour nettoyer les ordinateurs,</li>\r\n	<li>Le clavier est d&eacute;mont&eacute; pour pouvoir le nettoyer correctement et verifier son fonctionnement,</li>\r\n	<li>j&#39;ai &eacute;galement enlev&eacute;&nbsp;le disque (que je vais changer) et le lecteur DVD pour le nettoyer,</li>\r\n	<li><strong>maintenant on remonte&nbsp;et on installe les logiciels !</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>4 / Configurations - les logiciels</h2>\r\n\r\n<p><img alt=\"\" src=\"/img/upload/enregistrement-des-donnees-et-changement-du-disque-1674384210.jpg\" style=\"height:600px; width:1302px\" /></p>\r\n\r\n<p>Sur l&#39;image de gauche l&#39;ordinateur que j&#39;ai commenc&eacute; &agrave; remonter apr&eacute;s nettoyage, il a d&eacute;j&agrave; une autre t&ecirc;te !</p>\r\n\r\n<ul>\r\n	<li>&Agrave; ce niveau c&#39;est la&nbsp;sauvegarde des donn&eacute;es de&nbsp;l&#39;ancien disque,</li>\r\n	<li>On change le disque actuel (lent) par un disque neuf SSD (rapide et plus moderne),</li>\r\n	<li>Je m&#39;occupe ensuite de r&eacute;installer les logiciels utiles et de supprimer les logiciels inutiles,</li>\r\n	<li>Je termine le nettoyage complet et je fais la configuration ainsi que diff&eacute;rents tests habituels sur la machine.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>5 / Finition - seconde vie</h2>\r\n\r\n<p><img alt=\"\" src=\"/img/upload/img-2505-1673869904.jpg	\" /></p>', 1, '2023-03-11 11:06:09', 1),
(60, '2023-02-24 12:34:49', 'Journée Apple au Bureau !', 'journee-apple-reparation-mise-a-jou-formation', 'img-2642-1677238570.jpg', 'Si tu as un ordinateur Apple, et que tu souhaites le booster, faire des mises à jours ou encore te former c\'est ici.', '<p>Aujourd&#39;hui journ&eacute;e Apple au bureau</p>\r\n\r\n<p>En ce qui concerne les ordinateurs Apple, (MacBook Air, MacBook Pro, Imac)</p>\r\n\r\n<ul>\r\n	<li>Je fais des mises &agrave; jours et de l&#39;entretien</li>\r\n	<li>Je fais de l&#39;upgrage (si l&#39;ordinateur est trop lent) pour lui donner une seconde vie, exemple sur un PC ici =&gt;&nbsp;<a href=\"https://lucpinelli.fr/actualite/donne-une-seconde-vie-a-ton-ordinateur/59\">Article de seconde vie</a></li>\r\n	<li>Je fais certaines r&eacute;parations (&agrave; voir ensemble)</li>\r\n	<li>Je fais &eacute;galement des formation si tu es un peu perdu&nbsp;</li>\r\n</ul>\r\n\r\n<p>Il y&#39;a moins d&#39;interventions sur les produits Apple, mais je fais en sorte de ne laiss&eacute; personne sur le cot&eacute; :)</p>', 1, '2023-02-24 12:36:11', 0);

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

DROP TABLE IF EXISTS `avis`;
CREATE TABLE IF NOT EXISTS `avis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` int(11) NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`id`, `created`, `changed`, `nom`, `prenom`, `note`, `contenu`) VALUES
(1, '2023-01-09 22:12:14', NULL, 'Burnel', 'Joel', 5, 'Un pro de l\'informatique,\r\ntrès sérieux, très carré et très organisé.\r\nil va vous sortir de toutes les galères'),
(2, '2023-01-09 22:13:21', NULL, 'Bresson', 'Michel', 5, 'Contact sympathique et très sérieux, intervention exécutées rapidement ,de qualités, je recommande Luc  a plusieurs de mes relations'),
(3, '2023-01-09 22:14:10', NULL, 'Favier', 'Nadine', 5, 'Luc Pinelli , très compétent et pédagogue m\'a vraiment apporté des informations, des conseils pour me permettre d\'avancer et de progresser avec 2 outils : l\'ordinateur et le téléphone portable.'),
(4, '2023-01-09 22:15:03', NULL, 'Mazellier', 'Roger', 5, 'Prestation efficace  technicien très disponible  et polyvalent.\r\nNouvellement installé sur la région de Privas (07), doit être encouragé.\r\nUn client récent et heureux d\'avoir trouvé un technicien accessible et performant.'),
(5, '2023-01-09 22:15:27', NULL, 'Moroni', 'Eric', 5, 'A la recherche d\'un service informatique de proximité, j\'ai trouvé en Luc une personne de confiance et à l\'écoute de mes soucis informatiques. Il a su répondre à mes attentes avec professionnalisme et rapidité. Je recommande !'),
(6, '2023-01-09 22:15:55', NULL, 'Goutard', 'Cyril', 5, 'Je suis très content de cet informaticien. Il m\'a installé mon nouveau pc en me transférant mes données de pc à pc tout en respectant mes données et étant soigneux avec le matériel. Professionnel, très patient  à l\'écoute du client et toujours à la recherche d\'une solution pour les problèmes que vous pouvez rencontrer. Toujours disponible pour le SAV, je le recommande les yeux fermés. Suite à son intervention du 11/08/2022, je n\'ai aucun problème à ce jour. Si vous cherchez quelqu\'un de sérieux et de professionnel, je vous le recommande et petit plus il se déplace.'),
(7, '2023-01-09 22:16:16', NULL, 'Velasco', 'André', 5, 'Luc est une personne très professionnelle à l\'écoute du moindre problème. Il se met à la portée des personnes en expliquant le plus simplement possible les outils de l\'informatique et en prenant le temps. De plus, il a su répondre à nos attentes et nous a dépanné très rapidement. Merci encore à lui. A recommander sans hésiter. Un pro de l\'informatique sans oublier sa gentillesse.\r\nThérèse et André Velasco'),
(8, '2023-01-10 00:07:51', NULL, 'Simon', 'Alain', 5, 'Services conseils à domicile. Le pied pour moi. Compétences informatiques pour rendre mon PC portable performant et plus rapide dans l\'utilisation de mes applications. Excellent conseil qualité prix pour l\'achat d\'une imprimante. Je recommande vivement Luc Pinelli qui en + de ses services est un excellent pédagogue. Bravo Luc'),
(9, '2023-01-10 00:10:16', NULL, 'C', 'Julie', 5, 'Ma maman a fait appel à Luc pour l\'achat de son ordinateur portable. Il a pu lui trouver un ordinateur très performant et à un prix attractif ! De plus il est à l\'écoute, rapide et efficace. Merci à lui pour ses très bonnes qualités professionnelles.'),
(10, '2023-01-10 00:11:15', NULL, 'Bouquet', 'Christine', 5, 'Luc est à la fois professionnel, pédagogue et ... Sympathique. Que demander de plus ?  Nous allons maintenant avoir 2 pc qui fonctionne et normalement et savons pourquoi ce n\'était as le cas. C\'est clair et efficace alors surtout, n\'hésitez pas à faire appel à lui\r\nChristine et Patrick');

-- --------------------------------------------------------

--
-- Structure de la table `block`
--

DROP TABLE IF EXISTS `block`;
CREATE TABLE IF NOT EXISTS `block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `block`
--

INSERT INTO `block` (`id`, `created`, `changed`, `title`, `content`, `categorie`) VALUES
(1, '2022-11-27 23:01:37', '2022-11-30 16:51:10', 'Accroche header', '<h1>Luc Pinelli - L&#39;informatique avec vous, &agrave; domicile</h1>\r\n\r\n<p>Vous avez besoin d&rsquo;une aide, d&rsquo;une formation ou d&rsquo;une mise &agrave; jour de votre mat&eacute;riel.</p>\r\n\r\n<p>Vous devez remplacer votre t&eacute;l&eacute;phone et mettre en place un forfait qui vous correspond.</p>\r\n\r\n<p>Vous voulez avoir votre propre site internet pour plus de visibilit&eacute;.</p>\r\n\r\n<blockquote>\r\n<p>Dans tous les cas je me d&eacute;place chez vous et je vous accompagne dans<br />\r\nla r&eacute;solution de votre probl&egrave;me ou dans la cr&eacute;ation de votre projet.</p>\r\n</blockquote>', 'Accueil');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220806195830', '2022-08-06 19:58:39', 204),
('DoctrineMigrations\\Version20220808211344', '2022-08-08 21:14:01', 31),
('DoctrineMigrations\\Version20220818233607', '2022-08-18 23:36:16', 263),
('DoctrineMigrations\\Version20220818234012', '2022-08-18 23:40:17', 81),
('DoctrineMigrations\\Version20220826184823', '2022-08-26 18:48:25', 202),
('DoctrineMigrations\\Version20220826185054', '2022-08-26 18:50:58', 32),
('DoctrineMigrations\\Version20220828161532', '2022-08-28 16:16:19', 33),
('DoctrineMigrations\\Version20220828161613', '2022-08-28 16:16:19', 3),
('DoctrineMigrations\\Version20220828162256', '2022-08-28 16:22:58', 32),
('DoctrineMigrations\\Version20221109164756', '2022-11-09 17:48:15', 77),
('DoctrineMigrations\\Version20221109165042', '2022-11-09 17:50:46', 77),
('DoctrineMigrations\\Version20221110200302', '2022-11-10 21:03:15', 67),
('DoctrineMigrations\\Version20221127220040', '2022-11-27 23:00:54', 44),
('DoctrineMigrations\\Version20230109205808', '2023-01-09 21:58:17', 86);

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `created`, `title`, `image`) VALUES
(2, '2022-11-11 14:42:34', 'Dauphiné presse 2022', 'presse-dauphine-libere-1668174154.jpg'),
(3, '2022-11-11 15:52:38', 'Photo communication voiture', 'img-1904-1668178358.jpg'),
(4, '2022-11-11 15:53:03', 'Photo communication voiture 2', 'img-1905-1668178383.jpg'),
(5, '2022-11-11 15:53:26', 'Photo communication voiture 3', 'img-1906-1668178406.jpg'),
(6, '2022-11-11 15:53:49', 'Photo communication voiture  4', 'img-1907-1668178429.jpg'),
(7, '2022-11-19 12:41:10', 'black friday header', 'istock-1172459816-1668858070.jpg'),
(8, '2022-11-29 15:33:15', 'LAV vitrine 1', 'symfony-1669732395.jpg'),
(9, '2022-11-29 15:33:27', 'LAV vitrine 2', 'sans-titre-1-1669732407.jpg'),
(10, '2022-11-29 15:33:43', 'LAV vitrine 3', '2-1669732423.jpg'),
(11, '2022-11-29 15:33:55', 'LAV vitrine 5', '3-1669732444.jpg'),
(12, '2022-11-29 15:34:21', 'LAV vitrine 6', '4-1669732461.jpg'),
(13, '2022-11-29 15:34:31', 'LAV vitrine 7', '9-1669732471.jpg'),
(14, '2022-11-29 15:34:39', 'LAV vitrine 8', '5-1669732487.jpg'),
(15, '2022-11-29 15:35:00', 'LAV vitrine 9', '6-1669732500.jpg'),
(16, '2022-11-29 15:35:09', 'LAV vitrine 10', '7-1669732519.jpg'),
(17, '2022-11-29 15:35:29', 'LAV vitrine 11', '8-1669732529.jpg'),
(18, '2022-11-29 15:35:38', 'LAV vitrine 12', 'infographie-chiffres-cles-ovh-cloud-leader-europeen-1024x845-1669732548.jpg'),
(19, '2022-11-29 15:35:59', 'LAV vitrine 13', '10-1669732572.jpg'),
(20, '2022-12-17 18:39:49', 'Bon cadeau Noel', 'banniere-fb-yt-copie-1671298815.jpg'),
(21, '2022-12-17 18:53:17', 'Bon cadeau noel Mockup', 'sdsqdqs-1671299597.jpg'),
(22, '2022-12-31 21:46:10', 'Article Fin 2022 Bureau', 'miniature-1672519570.jpg'),
(23, '2022-12-31 21:53:41', 'Article Fin 2022 Bureau 2', 'img-2424-1672520021.jpg'),
(24, '2022-12-31 21:53:57', 'Article Fin 2022 Bureau 3', 'img-2425-1672520037.jpg'),
(25, '2022-12-31 21:54:10', 'Article Fin 2022 Bureau 4', 'img-2427-1672520050.jpg'),
(26, '2022-12-31 21:54:35', 'Article Fin 2022 Bureau 5', 'miniature-1672520075.jpg'),
(27, '2022-12-31 21:54:56', 'Article Fin 2022 Bureau 6', 'img-2427-1672520096.jpg'),
(28, '2023-01-14 18:14:20', 'Service réparation 1', 'analayse-exterieur-de-la-machine-1674322489.jpg'),
(29, '2023-01-14 18:21:23', 'Service réparation 2', 'analyse-de-la-machine-exterieur-clavier-1674320555.jpg'),
(30, '2023-01-14 18:21:50', 'Service réparation 3', 'analyse-interieur-de-l-ordinatuer-avant-reparation-1674322313.jpg'),
(31, '2023-01-14 18:22:41', 'Service réparation 4', 'inspection-de-l-interieur-niveau-ventialteur-1673716961.jpg'),
(32, '2023-01-14 18:23:12', 'Service réparation 5', 'autre-photo-de-l-interieur-de-la-charniere-droite-1673716992.jpg'),
(33, '2023-01-14 18:24:13', 'Service réparation 6', 'img-2499-1673717053.jpg'),
(34, '2023-01-14 20:17:40', 'Service réparation 7', 'on-enleve-la-clavier-pour-commencerl-e-nettoyage-1673723860.jpg'),
(35, '2023-01-14 20:26:29', 'Service média 8', 'interieur-de-l-ordinateur-portable-apres-nettoyage-1674383391.jpg'),
(36, '2023-01-14 20:26:57', 'Service média 9', 'premier-nettoyage-ud-pc-vue-du-dessus-1673724417.jpg'),
(37, '2023-01-14 20:27:25', 'Service média 10', 'clavier-apres-nettoyage-1673724445.jpg'),
(38, '2023-01-14 20:33:41', 'Service réparation 11', 'img-2500-1673724821.jpg'),
(39, '2023-01-14 20:36:32', 'Service réparation 12', 'haut-du-pc-remonte-et-nettoye-1673724992.jpg'),
(40, '2023-01-14 20:42:35', 'Service réparation 13', 'img-2506-1673725355.jpg'),
(41, '2023-01-14 20:43:03', 'Service réparation 14', 'enregistrement-des-donnees-et-changement-du-disque-1674384210.jpg'),
(42, '2023-01-16 12:41:35', 'Service reparation 15', 'img-2497-1673869295.jpg'),
(43, '2023-01-16 12:41:58', 'Service reparation 16', 'verification-du-ventilateur-pour-regler-les-problemes-de-temperatures-1673869318.jpg'),
(44, '2023-01-16 12:42:18', 'Service reparation 17', 'interieurdu-ventilateur-1673869338.jpg'),
(45, '2023-01-16 12:44:02', 'Service reparation 18', 'probleme-de-temperature-trop-haute-1673869442.jpg'),
(46, '2023-01-16 12:51:44', 'Service reparation 19', 'img-2505-1673869904.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `nom`, `prenom`, `roles`, `password`, `is_active`) VALUES
(3, 'pinelli.luc@outlook.fr', 'Pinelli', 'Luc', '[]', '$2y$13$SkVkKTcvty9n08r0TI/yAO7OIgjt6xMxfb.vylQk2Ot.PtqFBnJp.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `youtube`
--

DROP TABLE IF EXISTS `youtube`;
CREATE TABLE IF NOT EXISTS `youtube` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `youtube`
--

INSERT INTO `youtube` (`id`, `created`, `changed`, `title`, `image`, `categorie`, `link`, `time`, `is_active`) VALUES
(1, '2022-11-10 21:05:39', '2022-11-10 21:08:44', 'Google drive et les outils de Gmail', 'qsdqsdsqjpg-1668029154-1668110923.jpg', 'Formation', 'https://youtu.be/GWujZd5twLY', '1:07:02', 1),
(2, '2022-11-10 21:06:46', '2022-11-10 21:08:56', 'Arborescence des dossiers sur Windows', 'dqdq-1668029270-1668110936.jpg', 'Formation', 'https://youtu.be/BZfbkzMJ4TA', '50:17', 1),
(3, '2022-11-10 21:07:23', '2022-11-10 21:11:18', 'Utilisation des bases d\'un Iphone', 'hqdefault-1668029319-1668110944.jpg', 'Téléphonie', 'https://youtu.be/FXM1ZkpMU8A', '50:37', 1),
(4, '2022-11-10 21:21:20', '2023-03-07 19:15:15', 'La vérité sur les imprimantes', 'maxresdefault-1678216514.jpg', 'Communication', 'https://www.youtube.com/watch?v=zKfdjsK7VAI', '15:05', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
