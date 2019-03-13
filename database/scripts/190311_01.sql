INSERT INTO `executedScripts` (`name`, `description`, `createdDate`, `executedDate`)
VALUES
	('190311_01', 'Change password success email', NOW(), NOW());

INSERT INTO `emailTypes` (`id`, `name`, `description`, `createdAt`, `updatedAt`)
VALUES
	(6, 'Change Password Success', 'When a logged in user changes their password, send an email notifying of the change', NOW(), NOW());

INSERT INTO `emailTemplates` (`id`, `type`, `language`, `name`, `description`, `subject`, `html`, `createdAt`, `updatedAt`)
VALUES
	(11, 6, 1, 'Change Password Success', 'Email confirmation on password change', 'Your account password has changed | Reeve', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n    <head>\n        <meta name=\"viewport\" content=\"width=device-width\">\n        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n        <title>Change Password | Reeve</title>\n        <style>\n            img {max-width: 100%; height: auto;}\n        </style>\n</head>\n    <body>\n        <div id=\"content\">\n		<p>Dear <%= firstName %>,</p>\n		<p>We are sending you this email to confirm that the password to your account on the workspace <%= workspaceName %> has successfully been changed.</p>\n		<p>If you did not make this change. Please contact support immediately by replying to this email.</p>\n		<p>Best Regards,<br>Reeve Customer Support</p>\n	</div>\n	<br><br>\n        <div id=\"footer\">\n	&copy; Copyright 2018 Reeve. All Rights Reserved.\n        </div>\n    </body>\n</html>', NOW(), NOW()),
	(12, 6, 2, 'Cambia password successo', 'Conferma e-mail al cambio della password', 'La password del tuo account è cambiata | Reeve', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n    <head>\n        <meta name=\"viewport\" content=\"width=device-width\">\n        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n        <title>Cambia la password | Reeve</title>\n        <style>\n            img {max-width: 100%; height: auto;}\n        </style>\n</head>\n    <body>\n        <div id=\"content\">\n		<p>Caro <%= firstName %>,</p>\n		<p>Ti stiamo inviando questa email per confermare che la password del tuo account nello spazio di lavoro <%= workspaceName %> è stata modificata correttamente.</p>\n		<p>Se non hai fatto questo cambiamento. Contatta immediatamente l\'assistenza rispondendo a questa email.</p>\n		<p>I migliori saluti,<br>Reeve Servizio Clienti</p>\n	</div>\n	<br><br>\n        <div id=\"footer\">\n	&copy; Copyright 2018 Reeve. Tutti i diritti riservati.\n        </div>\n    </body>\n</html>', NOW(), NOW());