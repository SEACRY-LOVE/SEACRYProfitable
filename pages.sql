CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `linklabel` varchar(70) NOT NULL,
  `view` enum('0','1') NOT NULL DEFAULT '1',
  `template` varchar(25) NOT NULL DEFAULT 'default',
  `robots` varchar(25) NOT NULL DEFAULT 'noindex,nofollow',
  `meta_title` varchar(70) NOT NULL,
  `meta_description` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `link`, `linklabel`, `view`, `template`, `robots`, `meta_title`, `meta_description`) VALUES
(1, '/', 'Home', '1', 'home', 'noindex,nofollow', 'Basic CMS', 'A Basic CMS for web developers to expand their knowledge and understanding of full-stack / Back-end Programming'),
(2, '/about', 'About', '1', 'about', 'noindex,nofollow', 'About This CMS', 'This CMS (Content Management System) Is A fully fynamic, database driven, One Page Runs All System.'),
(3, '/contact', 'Contact', '1', 'contact', 'noindex,nofollow', 'Contact us', 'Send us a message to https://seacry.slack.com | The Seacry Team is happy to invest in transforming your efforts into results.
Help You Develop Your Projects'),
(4, '/404', '404', '1', '404', 'noindex,nofollow', '404 Error', '404 Error | Page Not Found'),
(5, '/sitemap.html', 'Sitemap', '0', 'sitemap', 'noindex,nofollow', 'Sitemap', 'Sitemap');

ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link`);

ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;
