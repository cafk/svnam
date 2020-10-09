-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Oct 09, 2020 at 10:29 PM
-- Server version: 5.5.65-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `svnam`
--

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE `help` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic` varchar(255) NOT NULL,
  `headline_en` varchar(255) NOT NULL,
  `headline_de` varchar(255) NOT NULL,
  `helptext_de` longtext NOT NULL,
  `helptext_en` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Table of help texts';

--
-- Dumping data for table `help`
--

INSERT INTO `help` (`id`, `topic`, `headline_en`, `headline_de`, `helptext_de`, `helptext_en`) VALUES
(1, 'login', 'Login', 'Login', 'Geben Sie Ihren Benutzernamen und Ihr Passwort ein. Sollte Ihr Passwort abgelaufen sein, m&uuml;ssen Sie es nach dem Login &auml;ndern.\r\nVergessene Passw&ouml;rter k&ouml;nnen Sie selbst unter \"Vergessenes Passwort\" zur&uuml;cksetzen, wenn Sie eine Sicherheitsabfrage und eine g&uuml;ltige Emailadresse bei Ihren Zugangsdaten hinterlegt haben.', 'Insert your username and your password. If your password has expired, you have to change it after login.\r\nLost passwords can be recovered with \"Lost password\", if you provided a \"Security question\" and a valid email address in your account settings.'),
(2, 'general', 'General', 'Allgemein', 'Hier k&ouml;nnen Sie Ihren Vornamen, Ihren Nachnamen, die Emailadresse und eventuell den Inhalt optionaler Felder &auml;ndern.\r\nBitte hinterlegen Sie eine g&uuml;ltige Emailadresse, damit Sie benachrichtigt werden und reagieren k&ouml;nnen, wenn zum Beispiel Ihr Passwort abl&auml;uft, um eine Sperrung Ihrer Benutzerkennung zu vermeiden.\r\nWenn Sie eine Sicherheitsfrage und eine dazugeh&ouml;rige Antwort hinterlegen, k&ouml;nnen Sie vergessene Passw&ouml;rter auf der Login-Seite selbst zur&uuml;cksetzen. Bei Eingabe der Antwort m&uuml;ssen Gro&szlig;- und Kleinschreibung beachtet werden.\r\nWeiter unten auf der Seite finden Sie eine &Uuml;bersicht ihrer Gruppenmitgliedschaften, der Projekte. f&uuml;r die Sie verantwortlich sind und ihre aktuellen SVN-Zugriffsrechte.', 'You can change your given name, your name, email address and the content of optional fields, if available.\r\nPlease provide a valid email address to be able to receive and act on information concerning your account, for example notification about an expiring password, which can lead to a lock of your account if not taken care of.\r\nIf you provide a security question and answer, you can recover lost passwords by yourself at the login page. The security answer is case sensitive.\r\n At the bottom of this page, you find an overview of your group memberships, projects you are responsible for and your current svn-access-rights.'),
(3, 'password', 'Password', 'Passwort', 'Geben Sie Ihr altes Passwort und dann zweimal das neue Passwort ein. Das neue Passwort muss der Passwort Richtlinie entsprechen.\r\nBeachten Sie, dass Ihr Passwort f&uuml;r das SVN Access Manager Webinterface sofort g&uuml;ltig ist, es aber einige Zeit dauern kann, bis das Passwort f&uuml;r den Zugriff auf die Repositories g&uuml;ltig wird. Das h&auml;ngt davon ab, ob ihr Administrator ein Update Intervall f&uuml;r die Aktualisierung der Passworte gesetzt hat und wie gro&szlig; dieses Intervall ist.', 'Fill in your old password and the new password two times. The new password must fit the password policy.\r\nNote that your new password becomes valid for the SVN Access Manager Webinterface immediately, but it may take some time for repository access itself. The latter depends from if and how your system administrator has setup the update-interval for passwords.'),
(4, 'password_policy', 'Password policy', 'Passwort Richtlinien', 'Diese Seite zeigt die Passwort Richtlinie, die bei Passwort&auml;nderungen beachtet werden muss.', 'This page shows the password policy which needs to be respected when changing your password.'),
(5, 'preferences', 'Preferences', 'Einstellungen', 'Hinterlegen Sie ihre bevorzugten Einstellungen.', 'Set your personal preferences.'),
(6, 'main', 'Main menu', 'Hauptmen&uuml;', 'Das Hauptmen&uuml;. Hier sehen Sie alle Ihnen zur Verf&uuml;gung stehenden Funktionen, die aus bis zu drei Bereichen stammen.\r\nUnter \"Allgemeine Funktionen\" finden Sie Einstellungen, die Ihren eigenen Account betreffen und f&uuml;r jeden Benutzer verf&uuml;gbar sind.\r\nFunktionen aus den Bereichen \"Verwaltung\" und \"Berichte\" sind f&uuml;r Sie nur sichtbar, wenn Ihr Zugang mit erweiterten Rechten zur Verwaltung von Benutzern, Gruppen, Projekten, Repositories oder Zugriffsrechten ausgestattet wurde. Im letztgenannten Fall, sollten Sie sich genauer mit den Funktionen von SVN Access Manager vertraut machen. Folgen Sie dazu dem Link zur \"Dokumentation\", oben auf der Seite und nutzen Sie die \"Hilfe\" auf den jeweiligen Unterseiten.', 'The main menu. Here you can see all functions that are usable for you, grouped in up to three sections.\r\nThe \"General functions\" section lists settings concerning your own account. These are available for every user.\r\nFunctions from the \"Administration\" and \"Reports\" sections are only visible for you, if your account has been setup with enhanced permissions to manage users, groups, projects, repositories or access rights. If the latter is the case, you should make yourself familiar with the functions of SVN Access Manager by reading the \"documentation\" available through the link on top of the page and by using \"Help\" on the respective subpages.'),
(7, 'listaccessrights', 'Overview of access rights', '&Uuml;bersicht der Zugriffsrechte', 'Die Liste zeigt alle vergebenen Zugriffsrechte auf die verschiedenen Subversion Repositories, die Sie auch administrieren d&uuml;rfen.\r\nEinzelne Rechte bearbeiten und l&ouml;schen Sie mit Hilfe der Kn&ouml;pfe in der \"Aktion\" Spalte. Sie k&ouml;nnen mehrere Rechte l&ouml;schen, indem Sie diese in der linken Spalte markieren und dann ganz unten auf den Knopf \"Ausgew&auml;hlte l&ouml;schen\" klicken. Mit dem Knopf \"Neues Zugriffsrecht\" unter der Tabelle, k&ouml;nnen Sie neue Eintr&auml;ge anlegen. F&uuml;r alle Aktionen gilt jeweils, dass Sie die dazu n&ouml;tigen Administrationsrechte besitzen m&uuml;ssen.\r\nVergessen Sie nicht, dass &Auml;nderungen erst g&uumltig werden, wenn die SVN Zugriffsdateien neu erstellt worden sind.\r\nDurch Anklicken der Spalten&uuml;berschriften k&ouml;nnen Sie nach dem Inhalt einer Spalte sortieren. Mit Hilfe der Suchfelder &uuml;ber der Tabelle k&ouml;nnen Sie bei langen Listen die Auswahl eingrenzen.', 'This list shows all available access rights to the different subversion repositories you are permitted to administer by yourself.\r\nEdit and delete single entries through the buttons listed in the \"Action\" column. You can delete a couple of rights by marking them in the left column and clicking the \"delete selected\" button at the bottom of the table. The button \"New access right\" is for creating new entries. The described actions are only available, if your account has sufficient administration permissions.\r\nKeep in mind that changes are only going to become active, after the access files have been recreated.\r\nYou can click the column headers to sort by a specific columns content. Use the search fields on top of the table to limit the view on large sets of access rights.'),
(8, 'listusers', 'Users', 'Benutzer', 'Aus der Liste der Benutzer kann ein Eintrag &uuml;ber die Symbole rechts unter \"Aktion\" zum Bearbeiten ausgew&auml;hlt oder gel&ouml;scht werden. Bearbeitet werden k&ouml;nnen an dieser Stelle grundlegende Eigenschaften eines Benutzerzugangs und die Berechtigungen innerhalb von SVN Access Manager. Die Zugriffsrechte auf die Repositories werden hingegen im Bereich \"Repository Zugriffsrechte\" vergeben.\r\nNeue Benutzer werden &uuml;ber das Plus-Symbol am unteren Ende der Liste eingerichtet.\r\nF&uuml;r alle Aktionen gilt jeweils, dass Sie die dazu n&ouml;tigen Administrationsrechte besitzen m&uuml;ssen.\r\nDurch Anklicken der Spalten&uuml;berschriften k&ouml;nnen Sie nach dem Inhalt einer Spalte sortieren. Mit Hilfe des Suchfelds &uuml;ber der Tabelle k&ouml;nnen Sie in langen Listen die gesuchten Benutzerzug&auml;nge schnell finden.', 'A user can be selected for editing or deletion by clicking on the symbols in the \"Action\" column. Editable in this place are basic properties of user accounts and management permissions for SVN Access Manager itself. Repository access rights are managed in a different place, surprisingly called \"Repository access rights\".\r\nNew users can be added by clicking on the button with the plus sign at the bottom of the list.\r\nThe described actions are only available, if your account has sufficient administration permissions.\r\nYou can click the column headers to sort by a specific columns content. Use the search field on top of the table to find specific user accounts in large sets of accounts quickly.'),
(9, 'workonuser', 'User Administration / edit user', 'Benutzer Administration / Benutzer &auml;ndern', 'Ein Benutzer muss eine eindeutige Benutzerkennung haben, die nur bei der Neuanlage vergeben und dann nicht mehr ge&auml;ndert werden kann.\r\nBei der Neuanlage muss dem Benutzer ein Passwort zugewiesen werden, das der Passwort Richtlinie gen&uuml;gt.\r\nDie Angabe einer g&uuml;ltigen Emailadresse ist zwingend erforderlich, da Benachrichtigungen zu abgelaufenen Passw&ouml;rtern an diese Adresse geschickt werden. Das Ablaufen kann automatisch zur Sperrung eines Accounts f&uuml;hren, wenn der Systemadministrator entsprechende Vorkehrungen getroffen hat. Gesperrte Benutzer k&ouml;nnen nicht mehr auf Repositories zugreifen.\r\nDas Kennzeichnen eines Benutzers als \"Administrator\" hat zur Folge, dass eine strengere Passwortpolicy angewendet wird. Dadurch werden aber noch keine besonderen Rechte vergeben. Dies erfolgt weiter unten, im Bereich \"Globale Benutzerrechte\".\r\nDas globale Repository Benutzerrecht kann \'lesen\' oder \'schreiben\' sein. Die globale Beschr&auml;nkung der Repository Zugriffsrechte eines Benutzer kann nicht durch das Setzen spezieller Repository Zugriffsrechte &uuml;berschrieben werden. Ein auf global auf \'lesen\' limitierter Benutzer kann also niemals Schreibzugriff auf irgendein durch SVN Access Manager verwaltetes Repository erhalten.\r\nIm Bereich \"Globale Benutzerrechte\" k&ouml;nnen globale Rechte f&uuml;r administrative Aufgaben innerhalb von SVN Access Manager vergeben werden. Benutzer, die die Subversion Repositories nur verwenden, brauchen in der Regel keine globalen Benutzerrechte. Auch f&uuml;r administrative Aufgaben, kann es sinnvoll sein, statt globaler Rechte, Gruppenadministrationsrechte und Projektverantwortlichkeiten f&uuml;r betroffene Gruppen und Projekte zu vergeben und so das Verwalten von Benutzern und Zugriffsrechten nur f&uuml;r ausgew&auml;hlte Projekte an daf&uuml;r verantwortliche Benutzer zu delegieren. Schauen Sie bei Bedarf f&uuml;r ein tieferes Verst&auml;ndnis der verschiedenen globalen Benutzerrrechte in die Dokumentation, die &uuml;ber den Link oben auf der Seite erreichbar ist.\r\nDas Recht \"L&ouml;schen\" schlie&szlig;t stets das Recht \"&Auml;ndern\", dieses das Recht \"Hinzuf&uuml;gen\" und letzteres wiederum das Recht \"Lesen\" mit ein. Sie k&ouml;nnen keine h&ouml;herwertigen globalen Benutzerrechte vergeben, als sie selbst besitzen.', 'A user must have an unique username which can only be set during initial generation and cannot be changed afterwards.\r\nAt generation of the user account, a password respecting the password policy has to be assigned.\r\nA valid email address must always be set, which is important as this address is used to send notifications regarding expired passwords. Password expiration can lead to automatic locks of the concerned user accounts, if password expiration has been setup by the system administrator. Locked users can\'t access any repository any longer.\r\nLabeling a user as \"Administrator\" leads to a stronger password policy for that user. It doesn\'t setup any special permissions, which can be done in the \"Select global user rights\" section below.\r\nThe global \"Repository user right\" can be \'read\' or \'write\'. A global restriction to \'read\' cannot be overwritten by dedicated repository access rights. As a consequence, a globally restricted user can never gain write access to any repository managed by SVN Access Manager.\r\nIn the section \"Global user rights\" global rights for administrative tasks in SVN Access Manager can be assigned to a user. Users working with Subversion repositories only don\'t need any global user rights in most settings. Even for administrative tasks it can often be better, to assign group administrators and Project responsibilities for concerned groups and projects to allow responsible users to manage groups and repository access rights for their projects only. Have a look at the documentation available through the link on top of the page for better understanding of different global user rights.\r\n\'delete\' permissions include \'edit\' permissions, these include \'add\' permissions and the latter include \'read\' permissions. You cannot assign higher privileges than the privileges owned by yourself.'),
(10, 'listgroups', 'Group administration', 'Gruppen Administration', 'Gruppen werden verwendet, um vielen Benutzern die selben Zugriffsrechte auf Dateien oder Verzeichnisse zuzuweisen. Au&szlig;erdem k&oumlnnen Sie in SVN Access Manager im Bereich \"Gruppen Administratoren\" die Administration von Gruppen an einen oder mehrere Benutzer &uuml;bertragen, die dann diese Gruppen selbst verwalten k&ouml;nnen.\r\nAus der Liste der Gruppen kann eine Gruppe &uuml;ber die Symbole rechts unter \"Aktion\" zum Bearbeiten ausgew&auml;hlt oder gel&ouml;scht werden. Die Liste zeigt nur Gruppen, die Sie auch administrieren d&uuml;rfen.\r\nSie k&ouml;nnen Name, und Beschreibung der Gruppe &auml;ndern und Benutzer hinzuf&uuml;gen oder entfernen. Die Zugriffsrechte von Gruppen auf die Repositories werden hingegen im Bereich \"Repository Zugriffsrechte\" vergeben.\r\nNeue Gruppen werden &uuml;ber das Plus-Symbol am unteren Ende der Liste eingerichtet.\r\nDurch Anklicken der Spalten&uuml;berschriften k&ouml;nnen Sie nach dem Inhalt einer Spalte sortieren. Mit Hilfe des Suchfelds &uuml;ber der Tabelle k&ouml;nnen Sie in langen Listen die gesuchten Gruppen schnell finden.', 'Groups are used, to set up multiple users with the same access rights to files and directories. Additionally it\'s possible, to allow one or several users to manage specific groups by themselves in SVN Access Managers \"Group administrators\" section.\r\nA group can be selected for editing or deletion by clicking on the symbols in the \"Action\" column. Only groups you are permitted to administer by yourself are shown.\r\nYou can change name and description of a group and also add and remove group members. Repository access rights for groups are managed in a different place, called \"Repository access rights\".\r\nNew groups can be added by clicking on the button with the plus sign at the bottom of the list.\r\nYou can click the column headers to sort by a specific columns content. Use the search field on top of the table to find specific groups in large sets of groups quickly.'),
(11, 'addgrouptoproject', 'Add group to project', 'Gruppe zu Projekt hinzuf&uuml;gen', '', ''),
(12, 'addmembertoproject', 'Add member to project', 'Benutzer zu Projekt hinzuf&uuml;gen', '', ''),
(13, 'createacessfiles', 'Create access files', 'Zugriffsdateien erzeugen', 'Die Zugriffsdateien f&uuml;r die Repositories werden erstellt. M&ouml;glicherweise wird das bei Ihrer Installation regelm&auml;&szlig;ig automatisch erledigt, damit  ge&auml;nderte Passw&ouml;rter zeitnah f&uuml;r den SVN-Zugriff g&uuml;ltig werden. Fragen Sie Ihren Systemadministrator. Falls Sie selbst der Systemadministrator sind, schauen Sie sich im Dateisystem das mitgelieferte Verzeichnis \"scripts\" und die Dokumentation von SVN Access Manager an.\r\nDie Viewvc Konfiguration wird nur f&uuml;r Apache Webserver erzeugt! W&auml;hlen Sie hier nur \'Ja\', wenn Sie einen Apache Webserver einsetzen.\r\nDas Kommando zum Laden der Webserver Konfiguration sollte kein Neustart des Webservers sein. Das Kommando muss so geschrieben sein, dass der Benutzer unter dem der Webserver l&auml;uft, es auch ausf&uuml;hren darf. Ggf. muss dazu eine sudo Regel unter Unix definiert werden.\r\n', 'Access files for the repositories will be created. It\'s possible, that this is done automatically in your system on a regular basis, to make sure changed passwords become valid for SVN access quickly. If in doubt, ask your system administrator. If you are the system administrator, check the \"scripts\" folder delivered with SVN Access Manager and the documentation.\r\nThe Viewvc configuration will only be created for an Apache Webserver! Select \'Yes\' only in case SVN Access Manager is running on an Apache Webserver.\r\nThe command to reload the webserver configuration should not restart the webserver. The command must be written in a way that allows the webserver user to execute the command. Depending on your environment you will need a sudo rule on Unix systems.'),
(14, 'deleteaccessright', 'Delete access right', 'Zugriffsrecht l&ouml;schen', 'Best&auml;tigen Sie das L&ouml;schen dieses Eintrags, oder brechen Sie den Vorgang ab.', 'Confirm the deletion of the selected entry, or cancel the operation.'),
(15, 'deletegroup', 'Delete group', 'Gruppe l&ouml;schen', 'Best&auml;tigen Sie das L&ouml;schen dieses Eintrags, oder brechen Sie den Vorgang ab.', 'Confirm the deletion of the selected entry, or cancel the operation.'),
(16, 'deletegroupaccessright', 'Delete group administrator', 'Gruppenadministrator l&ouml;schen', 'Best&auml;tigen Sie das L&ouml;schen dieses Eintrags, oder brechen Sie den Vorgang ab.', 'Confirm the deletion of the selected entry, or cancel the operation.'),
(17, 'deleteproject', 'Delete project', 'Projekt l&ouml;schen', 'Best&auml;tigen Sie das L&ouml;schen dieses Eintrags, oder brechen Sie den Vorgang ab.', 'Confirm the deletion of the selected entry, or cancel the operation.'),
(18, 'deleterepo', 'Delete repository', 'Repository l&ouml;schen', 'Sie k&ouml;nnen nur Repositories l&ouml;schen, f&uuml;r die in SVN Access Manager keine Projekte mehr eingerichtet sind. SVN Access Manager wird bei Bedarf in einer Warnmeldung auf betroffene Projekte hinweisen. Sollte es keine Warnmeldung geben, best&auml;tigen Sie das L&ouml;schen dieses Eintrags, oder brechen Sie den Vorgang ab.\r\nBedenken Sie, dass das Repository nur aus der SVN Access Manager Datenbank gel&ouml;scht wird, die Repositorydaten selbst werden nicht gel&ouml;scht. L&ouml;schen Sie das Repository separat, wenn das Ihre Absicht ist.', 'You can only delete repositories which aren\'t referenced to by projects configured in SVN Access Manager. SVN Access Manager will show a warning a print affected projects. If no warning is shown, confirm the deletion of the selected entry, or cancel the operation.\r\n Keep in mind, the repository is deleted from the SVN Access Manager database, but repository data itself will stay untouched. You need to delete the repository manually if that\'s your purpose.'),
(19, 'deleteuser', 'Delete user', 'Benutzer l&ouml;schen', 'Best&auml;tigen Sie das L&ouml;schen dieses Eintrags, oder brechen Sie den Vorgang ab.', 'Confirm the deletion of the selected entry, or cancel the operation.'),
(22, 'listgroupadmins', 'List group admins', 'Liste der Gruppen Administratoren', 'Gruppenadministratoren k&ouml;nnen in SVN Access Manager dazu verwendet werden, einzelnen Benutzern das Management bestimmter Gruppen zu &uumlbertragen. Je nach vergebener Berechtigung kann ein Gruppenadministrator dann Mitglieder auflisten, verwalten (also hinzuf&uuml;gen und entfernen) oder sogar die Gruppe l&ouml;schen.\r\nEin Gruppenadministrator kann &uuml;ber die Symbole in der Spalte \"Aktion\" zum Bearbeiten ausgew&auml;hlt oder gel&ouml;scht werden.\r\nEin neuer Gruppenadministrator kann durch Klicken auf den Kopf mit dem Plus Zeichen angelegt werden.\r\nF&uuml;r alle Aktionen gilt jeweils, dass Sie die dazu n&ouml;tigen Administrationsrechte besitzen m&uuml;ssen.\r\nDurch Anklicken der Spalten&uuml;berschriften k&ouml;nnen Sie nach dem Inhalt einer Spalte sortieren. Mit Hilfe des Suchfelds &uuml;ber der Tabelle k&ouml;nnen Sie in langen Listen die gesuchten Gruppenadministratoren schnell finden.', 'Group administrators in SVN Access Manager can be used to turn users into managers of specific groups. Depending on the granted permissions, these group administrators can list and manage (add and remove) group members or even delete the group.\r\nA group administrator can be selected for editing or deletion by clicking on the symbols in the \"Action\" column.\r\nNew group administrators can be added by clicking on the button with the plus sign at the bottom of the list.\r\nThe described actions are only available, if your account has sufficient administration permissions.\r\nYou can click the column headers to sort by a specific columns content. Use the search field on top of the table to find specific group administrators in large sets of groups quickly.'),
(23, 'listprojects', 'Project administration', 'Projekte administrieren', 'Als \"Projekt\" wird in SVN Access Manager ein Unterverzeichnis oder \"Modul\" eines Repositories betrachtet. So k&ouml;nnen in einem Repository mehrere Projekte unabh&auml;ngig voneinander verwaltet werden. Wenn ein  Projekt auf das Wurzelverzeichnis des Repositories verweist, wird das gesamte Repository dem Projekt zugeordnet.\r\nJedem Projekt k&ouml;nnen ein oder mehrere verantwortliche Benutzer zugewiesen werden, die dadurch anderen Benutzern und Gruppen Zugriffsrechte auf dieses Projekt und seine Unterverzeichnisse gew&auml;hren d&uuml;rfen.\r\nEin Projekt kann durch Klicken auf die Symbole in der Spalte \"Aktion\" zum Bearbeiten ausgew&auml;hlt oder gel&ouml;scht werden.\r\nNeue Projekte k&ouml;nnen durch Klicken auf das Symbol mit dem Pluszeichen am Ende der Liste angelegt werden.\r\nF&uuml;r alle Aktionen gilt jeweils, dass Sie die dazu n&ouml;tigen Administrationsrechte besitzen m&uuml;ssen.\r\nDurch Anklicken der Spalten&uuml;berschriften k&ouml;nnen Sie nach dem Inhalt einer Spalte sortieren. Mit Hilfe des Suchfelds &uuml;ber der Tabelle k&ouml;nnen Sie in langen Listen die gesuchten Projekte schnell finden.', 'A project in SVN Access Manager is a subfolder or \"module\" of an SVN repository. Hence, multiple projects can be managed within only one repository. If a project is linked to the root directory of a repository, the whole repository is assigned to this one project.\r\nOne or even multiple users can be declared responsible for a project and as a consequence get the permission to grant other groups or users access rights to the project or some of its subfolders.\r\nA project can be selected for editing or deleted by clicking on the symbols in the \"Action\" column.\r\nNew projects can be added by clicking on the button with the plus sign at the bottom of the list.\r\nThe described actions are only available, if your account has sufficient administration permissions.\r\nYou can click the column headers to sort by a specific columns content. Use the search field on top of the table to find specific projects in large sets quickly.'),
(24, 'listrepos', 'Repository list', 'Repository Liste', 'Das Verwalten von Zugriffsrechten f&uuml;r Subversion Repositories ist die Kernfunktion von SVN Access Manager. An dieser Stelle sind alle Repositories zu sehen, die derzeit in ihrer SVN Access Manager Installation bekannt sind.\r\nEin Repository kann durch Klicken auf die Symbole in der Spalte \"Aktion\" zum Bearbeiten ausgew&auml;hlt oder gel&ouml;scht werden.\r\nEin neues Repository kann durch Klicken auf den Knopf mit dem Plus Zeichen am Ende der Liste erstellt werden.\r\nF&uuml;r alle Aktionen gilt jeweils, dass Sie die dazu n&ouml;tigen Administrationsrechte besitzen m&uuml;ssen.\r\nDurch Anklicken der Spalten&uuml;berschriften k&ouml;nnen Sie nach dem Inhalt einer Spalte sortieren. Mit Hilfe des Suchfelds &uuml;ber der Tabelle k&ouml;nnen Sie in langen Listen die gesuchten Projekte schnell finden.', 'Management of access rights for Subversion repositories is the core function of SVN Access Manager. Here you see all repositories which are currently known in your SVN Access Manager installation.\r\nA repository can be selected for editing or deleted by clicking on the symbols in the \"Action\" column.\r\nNew repositories can be added by clicking on the button with the plus sign at the bottom of the list.\r\nThe described actions are only available, if your account has sufficient administration permissions.\r\nYou can click the column headers to sort by a specific columns content. Use the search field on top of the table to find specific projects in large sets quickly.'),
(26, 'nopermission', 'nopermission', 'nopermission', '', ''),
(27, 'repaccessrights', 'Report: Access rights', 'Bericht: Zugriffsrechte', 'Der Bericht stellt die Repository Zugriffsrechte zu einem vorher ausgew&auml;hlten Datum dar, filtert also Zugriffsrechte aus, die am gew&auml;hlten Datum nicht mehr oder noch nicht aktiv sind. Um ein Datum auszuw&auml;hlen bitte einfach in das Datumsfeld klicken.\r\nDurch Anklicken der Spalten&uuml;berschriften in der Ergebnisliste k&ouml;nnen Sie nach dem Inhalt einer Spalte sortieren. Mit Hilfe der Suchfelder &uuml;ber der Tabelle k&ouml;nnen Sie in langen Listen die gesuchten Zugriffsrechte schnell finden.', 'This report shows repository access rights valid at a selected date. Access rights which are not yet or not any longer valid for the selected date, are not shown. To select a date, simply click into the date field.\r\nYou can click the column headers of the result list to sort by a specific columns content. Use the search fields on top of the table to find specific access rights in large data sets quickly.'),
(28, 'repgranteduserrights', 'Report: Granted user rights', 'Bericht: Gew&auml;hrte Benutzerrechte', 'Der Bericht listet alle Benutzer und die ihnen gew&auml;hrten Rechte zum Wahrnehmen administrativer Aufgaben innerhalb von SVN Access Manager auf.\r\nDurch Anklicken der Spalten&uuml;berschriften in der Ergebnisliste k&ouml;nnen Sie nach dem Inhalt einer Spalte sortieren. Mit Hilfe der Suchfelder &uuml;ber der Tabelle k&ouml;nnen Sie in langen Listen die gesuchten Benutzer schnell finden.', 'This report shows all users and their granted rights to perform administrative tasks inside SVN Access Manager.\r\nYou can click the column headers of the result list to sort by a specific columns content. Use the search fields on top of the table to find specific users in large data sets quickly.'),
(29, 'replockedusers', 'Report: Locked users', 'Bericht: gesperrte Benutzer', 'Dieser Bericht listet alle gesperrten Benutzer auf. Benutzer k&ouml;nnen gesperrt sein, weil ihr Passwort abgelaufen ist, oder weil ihr Zugang manuell gesperrt wurde.\r\nBei Bedarf k&ouml;nnen gesperrte Zug&auml;nge von einem SVN Access Manager Administrator mit dem Recht zur Bearbeitung von Benutzern wieder freigeschaltet werden.\r\nDurch Anklicken der Spalten&uuml;berschriften in der Ergebnisliste k&ouml;nnen Sie nach dem Inhalt einer Spalte sortieren. Mit Hilfe der Suchfelder &uuml;ber der Tabelle k&ouml;nnen Sie in langen Listen die gesuchten Benutzer schnell finden.', 'This report shows all locked users. Users can become locked, because their password has expired or their account has been locked manually.\r\nLocked users can be unlocked by an SVN Access Manager administrator with permission to edit user accounts.\r\nYou can click the column headers of the result list to sort by a specific columns content. Use the search fields on top of the table to find specific users in large data sets quickly.'),
(30, 'replog', 'Report: SVN Access Manager changelog', 'Bericht: SVN Access Manager &Auml;nderungsprotokoll', 'Der Bericht listet Logeintr&auml;ge auf, die &Auml;nderungen innerhalb von SVN Access Manager betreffen, z.B. das Hinzuf&uuml;gen von Projekten oder das L&ouml;schen von Benutzern.\r\nDurch Anklicken der Spalten&uuml;berschriften in der Ergebnisliste k&ouml;nnen Sie nach dem Inhalt einer Spalte sortieren. Mit Hilfe der Suchfelder &uuml;ber der Tabelle k&ouml;nnen Sie in langen Listen die gesuchten Ereignisse schnell finden.', 'This report shows log entries, concerning actions inside SVN Access Manager, like the addition of new projects or the deletion of user accounts.\r\nYou can click the column headers of the result list to sort by a specific columns content. Use the search fields on top of the table to find specific events in large data sets quickly.'),
(31, 'repshowgroup', 'Report: Group', 'Bericht: Gruppe', 'Der Bericht zeigt alle Details zu einer ausgew&auml;hlten Gruppe an. Es werden alle Mitglieder der Gruppe, alle Gruppenadministratoren und alle mit der Gruppe verbundenen Repository Zugriffsrechte angezeigt.', 'This report shows all details about a chosen group. All members of the group, all group administrators and all access rights granted to the group will be listed.'),
(32, 'repshowuser', 'Report: User', 'Bericht: Benutzer', 'Der Bericht zeigt alle Details zu einem ausgew&auml;hlten Benutzer an. Es werden alle Gruppenmitgliedschaften, alle Projekte f&uuml;r die der Benutzer verantwortlich ist und alle Repository Zugriffsrechte angezeigt.', 'This report shows all details about a chosen user. All group memberships, all projects the user is responsible for and all repository access rights are shown.'),
(33, 'searchresult', 'searchresult', 'searchresult', '', ''),
(34, 'selectproject', 'Select project', 'Projekt ausw&auml;hlen', 'W&auml;hlen Sie das Projekt aus, f&uuml;r das Sie Zugriffsrechte vergeben wollen und gehen sie weiter zum n&auml;chsten Schritt.', 'Select the project you want to set access rights for and continue to the next step after that.'),
(35, 'selectgroup', 'Select group', 'Gruppe ausw&auml;hlen', 'W&auml;hlen Sie die Gruppe aus, die Sie bearbeiten wollen und gehen sie weiter zum n&auml;chsten Schritt.', 'Select the group you want to work with and continue to the next step after that.'),
(36, 'setaccessright', 'Set access rights', 'Zugriffsrechte vergeben', 'Als Zugriffsrechte stehen \"None\", \"Read\" und \"Write\" zur Verf&uuml;gung. \"None\" bedeutet, dass dem Benutzer oder der Gruppe der Zugriff auf die Datei oder das Verzeichnis und alle darunter liegenden Verzeichnisse verboten wird. Das Verbot kann in einer gesonderten Zugriffsrichtlinie f&uuml;r ein untergeordnetes Verzeichnis durch Erteilen der Rechte \"Read\" oder \"Write\" auf dieses untergeordnete Verzeichnis wieder aufgehoben werden. \"Write\" enth&auml;lt automatisch das Recht \"Read\".\r\n&Uuml;ber die optionalen Datumsfelder \"g&uuml;ltig von\" und \"g&uuml;ltig bis\" kann bei Bedarf zus&auml;tzlich festgelegt werden, ab wann das Recht gilt und wann es automatisch wieder entzogen wird.\r\nDie erlaubten Benutzer und die erlaubten Gruppen geben an, wem das Recht erteilt wird.', 'Available access rights are \"None\", \"Read\" and \"Write\". \"None\" means a user or group may not access the file or the directory with all its subdirectories. This proscription can be removed from specific subdirectories by granting the \"Read\" or \"Write\" permission on that subdirectories in a different access right rule. The right \"Write\" includes the right \"Read\" automatically.\r\nThe optional date fields \"valid from\" and \"valid until\" can be used to specify from when on the permission is valid and from when on the permission should be revoked automatically.\r\nThe users and groups allowed tell you, whom the right is granted to.'),
(37, 'workonaccessright', 'Directory for access right', 'Verzeichnis f&uuml;r Zugriffsrecht', 'Der Subversion Modulpfad wird dem ausgew&auml;hlten Verzeichnis vorangestellt. Sie k&ouml;nnen das Verzeichnis aus der Verzeichnisliste ausw&auml;hlen und dort auch tiefer in den Verzeichnisbaum einsteigen. Wenn sie den Pfad ausgew&auml;hlt haben, klicken sie auf den Pfeil, um zum n&auml;chsten Schritt zu gelangen.', 'The Subversion module path will prepend the chosen directory. You can browse the directory list and select a directory and move deeper into the subdirectories. After you have chosen a path, click the arrow symbol to continue to the next step.'),
(38, 'workongroup', 'Add or edit group', 'Gruppe hinzuf&uuml;gen oder &auml;ndern', 'Eine Gruppe muss einen eindeutigen Namen, eine Beschreibung und mindestens ein Mitglied haben. Wenn die Gruppe keine Mitglieder mehr hat, muss sie gel&ouml;scht werden.\r\nAktive Mitglieder einer Gruppe erhalten automatisch die SVN Zugriffsrechte, die der Gruppe zugewiesen werden.', 'A group must have an unique name, a description and at least one member. If the group has no members anymore, it has to be deleted.\r\nActive members of a group gain the groups svn access rights automatically.'),
(39, 'workongroupaccessright', 'Choose group administrator', 'Guppenadministrator ausw&auml;hlen', 'W&auml;hlen Sie den Benutzer aus, der zum Gruppenadministrator der vorher ausgew&auml;hten Gruppe werden soll, und bestimmen Sie, wie weit die Gruppenadministrationsrechte gefasst sein sollen.\r\nDas Leserecht erlaubt dem Benutzer nur, die Gruppe anzusehen.\r\nDas Recht zum &Auml;ndern erlaubt das Lesen und dar&uuml;ber hinaus das &Auml;ndern von Gruppenname und Gruppenbeschreibung sowie das Hinzuf&uuml;gen und Entfernen von Gruppenmitgliedern.\r\nDas Recht zum L&ouml;schen schlie&szlig;t die Rechte zum Lesen und &Auml;ndern ein und erlaubt zus&auml;tzlich das L&ouml;schen der gesamten Gruppe.', 'Select the user that should become group administrator of the group chosen in the last step and decide, which group administration rights you wish to grant.\r\nRead permissions only allow the user to watch the group.\r\nEdit permissions include the possibility to watch the group but also to change its name and description and add or remove group members.\r\nDelete permissions include edit and read permissions and additionally allows complete deletion of the whole group.'),
(40, 'workonproject', 'Project administration', 'Projekte administrieren', 'Ein Subversion Projekt braucht einen eindeutigen Namen.\r\nZus&auml;tzlich muss das Repository ausgew&auml;hlt und der Modulpfad innerhalb des Repositories angegeben werden. W&auml;hlt man \"/\" als Modulpfad, umfasst das Projekt das gesamte Repository.\r\nJedes Projekt muss mindestens einen verantwortlichen Benutzer haben, der dann berechtigt ist, Zugriffsrechte auf das Projekt zu verwalten.', 'A subversion project needs a unique name.\r\nA repository has to be selected, and the path within the subversion repository needs to be set, too. If the chosen module path is \"/\", the project will contain the whole repository.\r\nEach project must have at least on responsible user, who is than able to manage access rights of that project.'),
(41, 'workonrepo', 'Add or edit repository', 'Repository hinzuf&uuml;gen oder &auml;ndern', 'Repositories repr&auml;sentiert in SVN Access Manager tats&auml;lich existierende Subversion Repositories im lokalen Dateisystem oder auf einem entfernten Server. Ein Repository ben&ouml;tigt einen eindeutigen Namen und einen Pfad. Der Pfad kann mit file:// beginnen, wenn der SVN Access Manager auf derselben Maschine l&auml;uft auf der auch die Repositories liegen. In dem Fall werden weder Benutzername noch Passwort f&uuml;r den Repository Zugriff ben&ouml;tigt.\r\nEin Repository kann direkt aus dem SVN Access Manager angelegt werden. Das funktioniert nur, wenn die Repositories auf demselben Server liegen auf dem auch der SVN Access Manager l&auml;uft. Wenn selinux verwendet wird, m&uuml;ssen es die selinux Regeln dem Webserver gestatten, Repositories anzulegen.\r\nBenutzen Sie \'/\' als Pfad Trennzeichen auf Windows Systemen. Sie m&uuml;ssen einen Repository Pfad z. B. wie folgt schreiben: file:///c:/svn/testrepo', 'Repositories in SVN Access Manager represent real Subversion repositories located in the local file system or on a remote server. A repository needs a unique name and a path. The path can start with file:// if SVN Access Manager is running on the same host the repositories are located on. In this case, no username and password are needed for repository access. Otherwise you will need credentials to access the repository.\r\nA repository can be created directly from SVN Access Manager. This only works, if SVN Access Manager is running on the same host as the repositories are located on and in case of selinux usage the selinux rules permit the webserver to create the repository.\r\nUse \'/\' as path separator on Windows systems. You must write down a repository path e. g. like this: file:///c:/svn/testrepo'),
(42, 'bulkaddldapusers', 'Bulk add LDAP users', 'Hinzuf&uuml;gen vieler LDAP Benutzer', 'Alle ausgew&auml;hlten LDAP Benutzer werden in die Benutzertabelle der SVN Access Manager Datenbank eingetragen. Name, Vorname, Emailadresse, und Benutzerkennung werden aus dem LDAP &uuml;bernommen. Das globale Repository Zugriffsrecht wird gem&auml;&szlig; der Auswahl gesetzt. Alle Benutzer erhalten dasselbe Recht!', 'All selected LDAP users will be added to the users table of the SVN Access Manager database. Name, givenname, email address and userid are taken from LDAP. The global repository access right is set accordingly to your selection. All users will get the same right! ');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(10) UNSIGNED NOT NULL,
  `logtimestamp` varchar(14) NOT NULL DEFAULT '00000000000000',
  `username` varchar(255) NOT NULL,
  `ipaddress` varchar(15) NOT NULL,
  `logmessage` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table of log messages';

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `logtimestamp`, `username`, `ipaddress`, `logmessage`) VALUES
(1, '20171212125601', 'admin', '10.0.8.6', 'user  logged in'),
(2, '20171212125726', 'admin', '10.0.8.6', 'admin logged out'),
(3, '20171213145106', 'admin', '10.0.8.6', 'user  logged in'),
(4, '20171213145155', 'admin', '10.0.8.6', 'addes repository Test1 (file:///svn/repos/test1)'),
(5, '20171213145419', 'admin', '10.0.8.6', 'addes repository Test2 (file:///svn/repos/test2)'),
(6, '20171213145513', 'admin', '10.0.8.6', 'added user test1, Tester1, Tester1'),
(7, '20171213145525', 'admin', '10.0.8.6', 'added user test2, Tester2, Tester2'),
(8, '20171213145552', 'admin', '10.0.8.6', 'insert of group Tester (Group for testers)'),
(9, '20171213145552', 'admin', '10.0.8.6', 'added test1 to group  Tester'),
(10, '20171213145552', 'admin', '10.0.8.6', 'added test2 to group  Tester'),
(11, '20171213145619', 'admin', '10.0.8.6', 'project Test1 (/) added'),
(12, '20171213145619', 'admin', '10.0.8.6', 'added project responsible test1'),
(13, '20171213145637', 'admin', '10.0.8.6', 'project Test2 (/) added'),
(14, '20171213145637', 'admin', '10.0.8.6', 'added project responsible test2'),
(15, '20171213145702', 'admin', '10.0.8.6', 'added access right write for 1 to /'),
(16, '20171213145718', 'admin', '10.0.8.6', 'added access right write for 1 to /'),
(17, '20171213145731', 'admin', '10.0.8.6', 'created auth files'),
(18, '20171213145819', 'admin', '10.0.8.6', 'admin logged out'),
(19, '20171213145843', 'admin', '10.0.8.6', 'user  logged in'),
(20, '20171213145947', 'admin', '10.0.8.6', 'password changed'),
(21, '20171213145950', 'admin', '10.0.8.6', 'admin logged out'),
(22, '20171213145959', 'admin', '10.0.8.6', 'user  logged in'),
(23, '20171213150003', 'admin', '10.0.8.6', 'admin logged out'),
(24, '20171213151944', 'admin', '10.0.8.6', 'user  logged in'),
(25, '20171213152010', 'admin', '10.0.8.6', 'admin logged out'),
(26, '20171213170558', 'admin', '10.0.8.6', 'user  logged in'),
(27, '20171213171112', 'admin', '10.0.8.6', 'admin logged out'),
(28, '20171213171139', 'admin', '10.0.8.6', 'user  logged in'),
(29, '20171213171148', 'admin', '10.0.8.6', 'admin logged out'),
(30, '20171213171157', 'test1', '10.0.8.6', 'user  logged in'),
(31, '20171213171229', 'test1', '10.0.8.6', 'test1 logged out'),
(32, '20180112133941', 'admin', '10.0.8.6', 'user  logged in'),
(33, '20180112135329', 'admin', '10.0.8.6', 'added access right read for admin to /'),
(34, '20180112135353', 'admin', '10.0.8.6', 'updated access right from read to read for admin in Test1 for /'),
(35, '20180114223423', 'admin', '10.10.54.101', 'user changed his data( Admin, Test, admin@example.com)'),
(36, '20180114223447', 'admin', '10.10.54.101', 'added test1 as responsible for group Tester with right delete'),
(37, '20180117112425', 'admin', '10.0.8.6', 'user  logged in'),
(38, '20180120193103', 'admin', '10.10.54.101', 'user  logged in'),
(39, '20180120193103', 'admin', '10.10.54.101', 'password of user  expired, force password change'),
(40, '20180120193156', 'admin', '10.10.54.101', 'password changed'),
(41, '20180120193228', 'admin', '10.10.54.101', 'password changed'),
(42, '20201010002626', 'admin', '172.17.0.1', 'user  logged in'),
(43, '20201010002626', 'admin', '172.17.0.1', 'password of user  expired, force password change'),
(44, '20201010002640', 'admin', '172.17.0.1', 'password changed'),
(45, '20201010002805', 'admin', '172.17.0.1', 'updated user admin'),
(46, '20201010002823', 'admin', '172.17.0.1', 'password changed');

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) NOT NULL,
  `page_size` int(4) NOT NULL,
  `user_sort_fields` varchar(255) NOT NULL,
  `user_sort_order` varchar(255) NOT NULL,
  `created` varchar(14) NOT NULL DEFAULT '00000000000000',
  `created_user` varchar(255) NOT NULL DEFAULT ' ',
  `modified` varchar(14) NOT NULL DEFAULT '00000000000000',
  `modified_user` varchar(255) NOT NULL,
  `deleted` varchar(14) NOT NULL DEFAULT '00000000000000',
  `deleted_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table of user preferences';

-- --------------------------------------------------------

--
-- Table structure for table `rights`
--

CREATE TABLE `rights` (
  `id` int(10) UNSIGNED NOT NULL,
  `right_name` varchar(255) NOT NULL,
  `description_en` varchar(255) NOT NULL,
  `description_de` varchar(255) NOT NULL,
  `allowed_action` enum('none','read','edit','delete') NOT NULL DEFAULT 'none',
  `created` varchar(14) NOT NULL DEFAULT '00000000000000',
  `created_user` varchar(255) NOT NULL DEFAULT ' ',
  `modified` varchar(14) NOT NULL DEFAULT '00000000000000',
  `modified_user` varchar(255) NOT NULL DEFAULT ' ',
  `deleted` varchar(14) NOT NULL DEFAULT '00000000000000',
  `deleted_user` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table of rights to grant to users';

--
-- Dumping data for table `rights`
--

INSERT INTO `rights` (`id`, `right_name`, `description_en`, `description_de`, `allowed_action`, `created`, `created_user`, `modified`, `modified_user`, `deleted`, `deleted_user`) VALUES
(1, 'User admin', 'Administer users', 'Benutzer verwalten', 'delete', '20171212125535', 'install', '00000000000000', '', '00000000000000', ''),
(2, 'Group admin', 'Administer groups', 'Gruppen verwalten', 'delete', '20171212125535', 'install', '00000000000000', '', '00000000000000', ''),
(3, 'Project admin', 'Administer projects', 'Projekte verwalten', 'delete', '20171212125535', 'install', '00000000000000', '', '00000000000000', ''),
(4, 'Repository admin', 'Administer repositories', 'Repositories verwalten', 'delete', '20171212125535', 'install', '00000000000000', '', '00000000000000', ''),
(5, 'Access rights admin', 'Administer repository access rights', 'Repository Zugriffsrechte verwalten', 'delete', '20171212125535', 'install', '00000000000000', '', '00000000000000', ''),
(6, 'Create files', 'Create access files', 'Zugriffs-Kontroll-Dateien generieren', 'edit', '20171212125535', 'install', '00000000000000', '', '00000000000000', ''),
(7, 'Reports', 'Show reports', 'Berichte ansehen', 'read', '20171212125535', 'install', '00000000000000', '', '00000000000000', '');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(255) NOT NULL,
  `session_expires` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `session_expires`, `session_data`) VALUES
('j8976grkkfa56gfojhn7verld0', 1602282553, '');

-- --------------------------------------------------------

--
-- Table structure for table `svngroups`
--

CREATE TABLE `svngroups` (
  `id` int(10) UNSIGNED NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created` varchar(14) NOT NULL DEFAULT '00000000000000',
  `created_user` varchar(255) NOT NULL DEFAULT ' ',
  `modified` varchar(14) NOT NULL DEFAULT '00000000000000',
  `modified_user` varchar(255) NOT NULL DEFAULT ' ',
  `deleted` varchar(14) NOT NULL DEFAULT '00000000000000',
  `deleted_user` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table of svn user groups';

--
-- Dumping data for table `svngroups`
--

INSERT INTO `svngroups` (`id`, `groupname`, `description`, `created`, `created_user`, `modified`, `modified_user`, `deleted`, `deleted_user`) VALUES
(1, 'Tester', 'Group for testers', '20171213145552', 'admin', '00000000000000', ' ', '00000000000000', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `svnmailinglists`
--

CREATE TABLE `svnmailinglists` (
  `id` int(10) UNSIGNED NOT NULL,
  `mailinglist` varchar(255) NOT NULL,
  `emailaddress` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created` varchar(14) NOT NULL DEFAULT '00000000000000',
  `created_user` varchar(255) NOT NULL DEFAULT ' ',
  `modified` varchar(14) NOT NULL DEFAULT '00000000000000',
  `modified_user` varchar(255) NOT NULL DEFAULT ' ',
  `deleted` varchar(14) NOT NULL DEFAULT '00000000000000',
  `deleted_user` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table of available svn mailing lists';

-- --------------------------------------------------------

--
-- Table structure for table `svnpasswordreset`
--

CREATE TABLE `svnpasswordreset` (
  `id` int(11) UNSIGNED NOT NULL,
  `unixtime` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `idstr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `svnprojects`
--

CREATE TABLE `svnprojects` (
  `id` int(10) UNSIGNED NOT NULL,
  `repo_id` int(10) UNSIGNED NOT NULL,
  `svnmodule` varchar(255) NOT NULL,
  `modulepath` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created` varchar(14) NOT NULL DEFAULT '00000000000000',
  `created_user` varchar(255) NOT NULL DEFAULT ' ',
  `modified` varchar(14) NOT NULL DEFAULT '00000000000000',
  `modified_user` varchar(255) NOT NULL DEFAULT ' ',
  `deleted` varchar(14) NOT NULL DEFAULT '00000000000000',
  `deleted_user` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table of svn modules';

--
-- Dumping data for table `svnprojects`
--

INSERT INTO `svnprojects` (`id`, `repo_id`, `svnmodule`, `modulepath`, `description`, `created`, `created_user`, `modified`, `modified_user`, `deleted`, `deleted_user`) VALUES
(1, 1, 'Test1', '/', '', '20171213145619', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(2, 2, 'Test2', '/', '', '20171213145637', 'admin', '00000000000000', ' ', '00000000000000', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `svnrepos`
--

CREATE TABLE `svnrepos` (
  `id` int(10) UNSIGNED NOT NULL,
  `reponame` varchar(255) NOT NULL,
  `repopath` varchar(255) NOT NULL,
  `repouser` varchar(255) NOT NULL,
  `repopassword` varchar(255) NOT NULL,
  `different_auth_files` tinyint(1) NOT NULL DEFAULT '0',
  `auth_user_file` varchar(255) NOT NULL,
  `svn_access_file` varchar(255) NOT NULL,
  `created` varchar(14) NOT NULL DEFAULT '00000000000000',
  `created_user` varchar(255) NOT NULL DEFAULT ' ',
  `modified` varchar(14) NOT NULL DEFAULT '00000000000000',
  `modified_user` varchar(255) NOT NULL DEFAULT ' ',
  `deleted` varchar(14) NOT NULL DEFAULT '00000000000000',
  `deleted_user` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table of svn repositories';

--
-- Dumping data for table `svnrepos`
--

INSERT INTO `svnrepos` (`id`, `reponame`, `repopath`, `repouser`, `repopassword`, `different_auth_files`, `auth_user_file`, `svn_access_file`, `created`, `created_user`, `modified`, `modified_user`, `deleted`, `deleted_user`) VALUES
(1, 'Test1', 'file:///svn/repos/test1', '', '', 0, '', '', '20171213145155', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(2, 'Test2', 'file:///svn/repos/test2', '', '', 0, '', '', '20171213145419', 'admin', '00000000000000', ' ', '00000000000000', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `svnusers`
--

CREATE TABLE `svnusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `givenname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `passwordexpires` tinyint(1) NOT NULL DEFAULT '1',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `emailaddress` varchar(255) NOT NULL DEFAULT '',
  `admin` char(1) NOT NULL DEFAULT 'n',
  `user_mode` varchar(10) NOT NULL,
  `created` varchar(14) NOT NULL DEFAULT '00000000000000',
  `created_user` varchar(255) NOT NULL DEFAULT ' ',
  `modified` varchar(14) NOT NULL DEFAULT '00000000000000',
  `modified_user` varchar(255) NOT NULL DEFAULT ' ',
  `deleted` varchar(14) NOT NULL DEFAULT '00000000000000',
  `deleted_user` varchar(255) NOT NULL DEFAULT ' ',
  `password_modified` varchar(14) NOT NULL DEFAULT '00000000000000',
  `superadmin` tinyint(1) NOT NULL DEFAULT '0',
  `securityquestion` varchar(255) DEFAULT '',
  `securityanswer` varchar(255) DEFAULT '',
  `custom1` varchar(255) DEFAULT '',
  `custom2` varchar(255) DEFAULT '',
  `custom3` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table of all known users';

--
-- Dumping data for table `svnusers`
--

INSERT INTO `svnusers` (`id`, `userid`, `name`, `givenname`, `password`, `passwordexpires`, `locked`, `emailaddress`, `admin`, `user_mode`, `created`, `created_user`, `modified`, `modified_user`, `deleted`, `deleted_user`, `password_modified`, `superadmin`, `securityquestion`, `securityanswer`, `custom1`, `custom2`, `custom3`) VALUES
(1, 'admin', 'Admin', 'Test', '$apr1$XEH1mFuf$BMO8NJA2N6zjwUJKXcqGH.', 0, 0, 'admin@example.com', '0', 'write', '20171212125535', 'install', '20201010002805', 'admin', '00000000000000', ' ', '20201010002823', 1, '', '', '', '', ''),
(2, 'test1', 'Tester1', 'Tester1', '$1$VrhSdvqG$my0HkGdemPLiI2Na.pYGl1', 0, 0, 'tester@example.org', 'n', 'write', '20171213145513', 'admin', '00000000000000', ' ', '00000000000000', ' ', '20000101000000', 0, '', '', '', '', ''),
(3, 'test2', 'Tester2', 'Tester2', '$1$3beUV90q$O/fyoucrD.nsB3SfgqokA.', 0, 0, 'tester2@example.org', 'n', 'write', '20171213145525', 'admin', '00000000000000', ' ', '00000000000000', ' ', '20000101000000', 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `svn_access_rights`
--

CREATE TABLE `svn_access_rights` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `group_id` int(10) NOT NULL,
  `path` longtext NOT NULL,
  `valid_from` varchar(14) NOT NULL COMMENT 'JHJJMMTT',
  `valid_until` varchar(14) NOT NULL COMMENT 'JHJJMMTT',
  `access_right` enum('none','read','write') NOT NULL DEFAULT 'none',
  `recursive` enum('yes','no') NOT NULL DEFAULT 'yes',
  `created` varchar(14) NOT NULL DEFAULT '00000000000000',
  `created_user` varchar(255) NOT NULL DEFAULT ' ',
  `modified` varchar(14) NOT NULL DEFAULT '00000000000000',
  `modified_user` varchar(255) NOT NULL DEFAULT ' ',
  `deleted` varchar(14) NOT NULL DEFAULT '00000000000000',
  `deleted_user` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table of user or group access rights';

--
-- Dumping data for table `svn_access_rights`
--

INSERT INTO `svn_access_rights` (`id`, `project_id`, `user_id`, `group_id`, `path`, `valid_from`, `valid_until`, `access_right`, `recursive`, `created`, `created_user`, `modified`, `modified_user`, `deleted`, `deleted_user`) VALUES
(1, 1, 0, 1, '/', '00000000', '99999999', 'write', 'yes', '20171213145702', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(2, 2, 0, 1, '/', '00000000', '99999999', 'write', 'yes', '20171213145718', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(3, 1, 1, 0, '/', '20180101', '20180430', 'read', 'yes', '20180112135329', 'admin', '20180112135353', 'admin', '00000000000000', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `svn_groups_responsible`
--

CREATE TABLE `svn_groups_responsible` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `allowed` enum('none','read','edit','delete') NOT NULL DEFAULT 'none',
  `created` varchar(14) NOT NULL DEFAULT '00000000000000',
  `created_user` varchar(255) NOT NULL DEFAULT ' ',
  `modified` varchar(14) NOT NULL DEFAULT '00000000000000',
  `modified_user` varchar(255) NOT NULL DEFAULT ' ',
  `deleted` varchar(14) NOT NULL DEFAULT '00000000000000',
  `deleted_user` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `svn_groups_responsible`
--

INSERT INTO `svn_groups_responsible` (`id`, `user_id`, `group_id`, `allowed`, `created`, `created_user`, `modified`, `modified_user`, `deleted`, `deleted_user`) VALUES
(1, 2, 1, 'delete', '20180114223447', 'admin', '00000000000000', ' ', '00000000000000', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `svn_projects_mailinglists`
--

CREATE TABLE `svn_projects_mailinglists` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `mailinglisten_id` int(10) UNSIGNED NOT NULL,
  `created` varchar(14) NOT NULL DEFAULT '00000000000000',
  `created_user` varchar(255) NOT NULL DEFAULT ' ',
  `modified` varchar(14) NOT NULL DEFAULT '00000000000000',
  `modified_user` varchar(255) NOT NULL DEFAULT ' ',
  `deleted` varchar(14) NOT NULL DEFAULT '00000000000000',
  `deleted_user` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table of modules and mailinglist relations';

-- --------------------------------------------------------

--
-- Table structure for table `svn_projects_responsible`
--

CREATE TABLE `svn_projects_responsible` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created` varchar(14) NOT NULL DEFAULT '00000000000000',
  `created_user` varchar(255) NOT NULL DEFAULT ' ',
  `modified` varchar(14) NOT NULL DEFAULT '00000000000000',
  `modified_user` varchar(255) NOT NULL DEFAULT ' ',
  `deleted` varchar(14) NOT NULL DEFAULT '00000000000000',
  `deleted_user` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table of project responsible users';

--
-- Dumping data for table `svn_projects_responsible`
--

INSERT INTO `svn_projects_responsible` (`id`, `project_id`, `user_id`, `created`, `created_user`, `modified`, `modified_user`, `deleted`, `deleted_user`) VALUES
(1, 1, 2, '20171213145619', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(2, 2, 3, '20171213145637', 'admin', '00000000000000', ' ', '00000000000000', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `svn_users_groups`
--

CREATE TABLE `svn_users_groups` (
  `id` int(10) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `created` varchar(14) NOT NULL DEFAULT '00000000000000',
  `created_user` varchar(255) NOT NULL DEFAULT ' ',
  `modified` varchar(14) NOT NULL DEFAULT '00000000000000',
  `modified_user` varchar(255) NOT NULL DEFAULT ' ',
  `deleted` varchar(14) NOT NULL DEFAULT '00000000000000',
  `deleted_user` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table of user group relations';

--
-- Dumping data for table `svn_users_groups`
--

INSERT INTO `svn_users_groups` (`id`, `user_id`, `group_id`, `created`, `created_user`, `modified`, `modified_user`, `deleted`, `deleted_user`) VALUES
(1, 2, 1, '20171213145552', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(2, 3, 1, '20171213145552', 'admin', '00000000000000', ' ', '00000000000000', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `users_rights`
--

CREATE TABLE `users_rights` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) NOT NULL,
  `right_id` int(10) NOT NULL,
  `allowed` enum('none','read','add','edit','delete') NOT NULL DEFAULT 'none',
  `created` varchar(14) NOT NULL DEFAULT '00000000000000',
  `created_user` varchar(255) NOT NULL DEFAULT ' ',
  `modified` varchar(14) NOT NULL DEFAULT '00000000000000',
  `modified_user` varchar(255) NOT NULL DEFAULT ' ',
  `deleted` varchar(14) NOT NULL DEFAULT '00000000000000',
  `deleted_user` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table of granted user rights';

--
-- Dumping data for table `users_rights`
--

INSERT INTO `users_rights` (`id`, `user_id`, `right_id`, `allowed`, `created`, `created_user`, `modified`, `modified_user`, `deleted`, `deleted_user`) VALUES
(1, 1, 1, 'delete', '20171212125536', 'install', '20201010002805', 'admin', '00000000000000', ' '),
(2, 1, 2, 'delete', '20171212125536', 'install', '20201010002805', 'admin', '00000000000000', ' '),
(3, 1, 3, 'delete', '20171212125536', 'install', '20201010002805', 'admin', '00000000000000', ' '),
(4, 1, 4, 'delete', '20171212125536', 'install', '20201010002805', 'admin', '00000000000000', ' '),
(5, 1, 5, 'delete', '20171212125536', 'install', '20201010002805', 'admin', '00000000000000', ' '),
(6, 1, 6, 'edit', '20171212125536', 'install', '20201010002805', 'admin', '00000000000000', ' '),
(7, 1, 7, 'read', '20171212125536', 'install', '20201010002805', 'admin', '00000000000000', ' '),
(8, 2, 1, 'none', '20171213145513', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(9, 2, 2, 'none', '20171213145513', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(10, 2, 3, 'none', '20171213145513', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(11, 2, 4, 'none', '20171213145513', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(12, 2, 5, 'none', '20171213145513', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(13, 2, 6, 'none', '20171213145513', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(14, 2, 7, 'none', '20171213145513', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(15, 3, 1, 'none', '20171213145525', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(16, 3, 2, 'none', '20171213145525', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(17, 3, 3, 'none', '20171213145525', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(18, 3, 4, 'none', '20171213145525', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(19, 3, 5, 'none', '20171213145525', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(20, 3, 6, 'none', '20171213145525', 'admin', '00000000000000', ' ', '00000000000000', ' '),
(21, 3, 7, 'none', '20171213145525', 'admin', '00000000000000', ' ', '00000000000000', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `workinfo`
--

CREATE TABLE `workinfo` (
  `id` int(10) UNSIGNED NOT NULL,
  `usertimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='table of workinfo';

--
-- Dumping data for table `workinfo`
--

INSERT INTO `workinfo` (`id`, `usertimestamp`, `action`, `status`, `type`) VALUES
(1, '2017-12-13 13:57:29', 'createauthuserfile', 'closed', 'sem'),
(2, '2017-12-13 13:57:29', 'createaccessfile', 'closed', 'sem'),
(3, '2017-12-13 13:57:29', 'createviewvcconf', 'closed', 'sem');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `help`
--
ALTER TABLE `help`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_topic` (`topic`);
ALTER TABLE `help` ADD FULLTEXT KEY `helptext_de` (`helptext_de`);
ALTER TABLE `help` ADD FULLTEXT KEY `helptext_en` (`helptext_en`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_timestamp` (`logtimestamp`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userid` (`user_id`);

--
-- Indexes for table `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `idx_expires` (`session_expires`);

--
-- Indexes for table `svngroups`
--
ALTER TABLE `svngroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupname` (`groupname`);

--
-- Indexes for table `svnmailinglists`
--
ALTER TABLE `svnmailinglists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `svnpasswordreset`
--
ALTER TABLE `svnpasswordreset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `svnprojects`
--
ALTER TABLE `svnprojects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_repoid` (`repo_id`),
  ADD KEY `idx_deleted` (`deleted`);

--
-- Indexes for table `svnrepos`
--
ALTER TABLE `svnrepos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_deleted` (`deleted`);

--
-- Indexes for table `svnusers`
--
ALTER TABLE `svnusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_userid` (`userid`,`deleted`),
  ADD KEY `idx_mode` (`locked`),
  ADD KEY `idx_passwordexpires` (`passwordexpires`),
  ADD KEY `idx_deleted` (`deleted`);

--
-- Indexes for table `svn_access_rights`
--
ALTER TABLE `svn_access_rights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_projectid` (`project_id`),
  ADD KEY `idx_userid` (`user_id`),
  ADD KEY `idx_groupid` (`group_id`),
  ADD KEY `idx_path` (`path`(512)),
  ADD KEY `idx_deleted` (`deleted`);

--
-- Indexes for table `svn_groups_responsible`
--
ALTER TABLE `svn_groups_responsible`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_projectid_userid_groupid` (`user_id`,`group_id`),
  ADD KEY `idx_deleted` (`deleted`);

--
-- Indexes for table `svn_projects_mailinglists`
--
ALTER TABLE `svn_projects_mailinglists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `moduleid` (`project_id`,`mailinglisten_id`),
  ADD KEY `mailinglistenid` (`mailinglisten_id`);

--
-- Indexes for table `svn_projects_responsible`
--
ALTER TABLE `svn_projects_responsible`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_projectid` (`project_id`),
  ADD KEY `idx_deleted` (`deleted`);

--
-- Indexes for table `svn_users_groups`
--
ALTER TABLE `svn_users_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_groupid` (`group_id`),
  ADD KEY `idx_userid` (`user_id`),
  ADD KEY `idx_deleted` (`deleted`);

--
-- Indexes for table `users_rights`
--
ALTER TABLE `users_rights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_right_id` (`right_id`);

--
-- Indexes for table `workinfo`
--
ALTER TABLE `workinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `help`
--
ALTER TABLE `help`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rights`
--
ALTER TABLE `rights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `svngroups`
--
ALTER TABLE `svngroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `svnmailinglists`
--
ALTER TABLE `svnmailinglists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `svnpasswordreset`
--
ALTER TABLE `svnpasswordreset`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `svnprojects`
--
ALTER TABLE `svnprojects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `svnrepos`
--
ALTER TABLE `svnrepos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `svnusers`
--
ALTER TABLE `svnusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `svn_access_rights`
--
ALTER TABLE `svn_access_rights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `svn_groups_responsible`
--
ALTER TABLE `svn_groups_responsible`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `svn_projects_mailinglists`
--
ALTER TABLE `svn_projects_mailinglists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `svn_projects_responsible`
--
ALTER TABLE `svn_projects_responsible`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `svn_users_groups`
--
ALTER TABLE `svn_users_groups`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_rights`
--
ALTER TABLE `users_rights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `workinfo`
--
ALTER TABLE `workinfo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
