-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 20, 2022 at 04:28 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviereviews`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add movie', 7, 'add_movie'),
(26, 'Can change movie', 7, 'change_movie'),
(27, 'Can delete movie', 7, 'delete_movie'),
(28, 'Can view movie', 7, 'view_movie'),
(29, 'Can add news', 8, 'add_news'),
(30, 'Can change news', 8, 'change_news'),
(31, 'Can delete news', 8, 'delete_news'),
(32, 'Can view news', 8, 'view_news'),
(33, 'Can add movie', 9, 'add_movie'),
(34, 'Can change movie', 9, 'change_movie'),
(35, 'Can delete movie', 9, 'delete_movie'),
(36, 'Can view movie', 9, 'view_movie'),
(37, 'Can add review', 10, 'add_review'),
(38, 'Can change review', 10, 'change_review'),
(39, 'Can delete review', 10, 'delete_review'),
(40, 'Can view review', 10, 'view_review');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$jck6S3Dj10bI40rpszaXRq$a3KvTIWXQtdX+jCOmVD8paUjDQEOGD6CNZzzwU0GUTk=', '2022-10-20 12:51:24.651945', 1, 'duclairdeugoue', '', '', 'duclairdeugoue@gmail.com', 1, 1, '2022-10-17 13:24:26.036458'),
(2, 'pbkdf2_sha256$390000$NdCaydWPpD1FRUKQsIBxka$IVd9zuWRYOrTuseanpZOCGxtXUY5MFFp86/0S9G5Egs=', '2022-10-20 09:54:18.950128', 0, 'frankostar', '', '', '', 0, 1, '2022-10-19 10:06:50.891901'),
(3, 'pbkdf2_sha256$390000$JMPmJ5suIeslfFSNrJS7Bd$Jt1qGGBcJ8WLvOSguqbLoYwVJOMD1DgAjtyiWZOizx0=', '2022-10-19 10:36:28.244735', 0, 'testing', '', '', '', 0, 1, '2022-10-19 10:36:27.892048');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-10-17 14:29:17.094896', '1', 'Movie object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-10-17 14:31:27.862084', '2', 'Movie object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-10-17 14:32:11.775601', '2', 'Movie object (2)', 2, '[{\"changed\": {\"fields\": [\"Url\"]}}]', 7, 1),
(4, '2022-10-17 14:33:48.610468', '3', 'Movie object (3)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-10-17 14:54:26.977075', '1', 'Wendell & Wild', 1, '[{\"added\": {}}]', 8, 1),
(6, '2022-10-17 14:55:49.533084', '2', 'Black Adam', 1, '[{\"added\": {}}]', 8, 1),
(7, '2022-10-17 14:57:16.316995', '3', 'My Policeman', 1, '[{\"added\": {}}]', 8, 1),
(8, '2022-10-17 14:59:33.497499', '4', 'Lorem', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'movie', 'movie'),
(10, 'movie', 'review'),
(7, 'movies', 'movie'),
(8, 'news', 'news'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-10-17 13:20:40.994883'),
(2, 'auth', '0001_initial', '2022-10-17 13:20:41.232625'),
(3, 'admin', '0001_initial', '2022-10-17 13:20:41.290095'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-10-17 13:20:41.302259'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-17 13:20:41.314413'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-10-17 13:20:41.377452'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-10-17 13:20:41.408821'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-10-17 13:20:41.444149'),
(9, 'auth', '0004_alter_user_username_opts', '2022-10-17 13:20:41.455992'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-10-17 13:20:41.511288'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-10-17 13:20:41.518572'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-10-17 13:20:41.544687'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-10-17 13:20:41.607679'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-10-17 13:20:41.647686'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-10-17 13:20:41.690312'),
(16, 'auth', '0011_update_proxy_permissions', '2022-10-17 13:20:41.710995'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-10-17 13:20:41.750794'),
(18, 'movies', '0001_initial', '2022-10-17 13:20:41.769286'),
(19, 'news', '0001_initial', '2022-10-17 13:20:41.788508'),
(20, 'sessions', '0001_initial', '2022-10-17 13:20:41.819558'),
(21, 'movie', '0001_initial', '2022-10-18 12:53:33.751546'),
(22, 'movie', '0002_review', '2022-10-20 05:02:27.773662');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('scxpjngfhln3rog93xw90e8c61pqod5o', '.eJxVjEEOgjAQRe_StWmYTqHVpXvOQIaZqUVNSSisjHdXEha6_e-9_zIDbWsetqrLMIm5GDCn320kfmjZgdyp3GbLc1mXabS7Yg9abT-LPq-H-3eQqeZv7cEDoXhi5zG0MWKnzRhddwZNjlIHLBoAKWIiZmVogyqRNIlEUMz7A9rnONw:1ol88n:FYL8g8VnmtyrOURC_tqSNeYuMfD3MR_SMah-w6eqNcM', '2022-11-02 12:25:45.571191'),
('sd59s4z53ano8sh7e3j7i5891pioou8q', 'e30:1ol8gw:S0GdOLD2JqBDg8_SZQJPRrJYJI5jV2LOZDyTqWU81t0', '2022-11-02 13:01:02.884669');

-- --------------------------------------------------------

--
-- Table structure for table `movie_movie`
--

CREATE TABLE `movie_movie` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie_movie`
--

INSERT INTO `movie_movie` (`id`, `title`, `description`, `image`, `url`) VALUES
(1, 'Doom', 'Action movie', 'movie/images/doom-quakecon-2015-02.jpg', 'https://youtu.be/SQ92hXK2w3M'),
(2, 'Friday the 13', 'Action Movie', 'movie/images/friday-the-13th-the-videogame.jpg', 'https://youtu.be/SQ92hXK2w3M'),
(3, 'Genshin Impact', 'Anime movie', 'movie/images/genshinimpact_KisfRW6.jpeg', 'https://youtu.be/7HDw6AscqaU');

-- --------------------------------------------------------

--
-- Table structure for table `movie_review`
--

CREATE TABLE `movie_review` (
  `id` bigint(20) NOT NULL,
  `text` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL,
  `watchAgain` tinyint(1) NOT NULL,
  `movie_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie_review`
--

INSERT INTO `movie_review` (`id`, `text`, `date`, `watchAgain`, `movie_id`, `user_id`) VALUES
(1, 'It one of my best movie i ever watch', '2022-10-20 06:29:07.298908', 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `news_news`
--

CREATE TABLE `news_news` (
  `id` bigint(20) NOT NULL,
  `headline` varchar(200) NOT NULL,
  `body` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_news`
--

INSERT INTO `news_news` (`id`, `headline`, `body`, `date`) VALUES
(1, 'Wendell & Wild', 'This spooky animated adventure is directed by Henry Selick, the maker of Coraline and The Nightmare Before Christmas, and co-written by Jordan Peele, the maker of Get Out and Nope – the perfect candidates, in other words, to cook up a funny-but-scary treat this Hallowe\'en. Peele also reunites with his television comedy partner, Keegan-Michael Key, to provide the voices of the title characters, a scheming pair of demon brothers who are summoned to the Land of the Living by a tough, green-haired 13-year-old orphan, Kat Elliott (Lyric Ross). \"Selick\'s handcrafted stop-motion has long been gorgeous in its strangeness and scares,\" says Kristy Puchko at Mashable. \"Here, he continues to push the envelope on the medium, on what topics can be explored in a kid\'s movie, and what he can do to dazzle us... Wendell & Wild offers chills, laughs, lessons, and a dark but radiant heart.\"', '2022-10-02'),
(2, 'Black Adam', 'There have been countless films about DC Comics\' superheroes, and one film about a DC supervillain – Joker. Black Adam is somewhere in between. He was introduced as a villain in 1941, but has since evolved into an anti-hero, a vengeful former slave who gets his powers from the same wizard as Shazam, and can\'t decide whether to use those powers for good or evil. Dwayne Johnson has the appropriate physique to play a comic-book titan, and former 007 Pierce Brosnan has the presence to play his mentor, Doctor Fate. \"We have an opportunity here to disrupt and change the paradigm,\" Johnson told Rosie Knight at Den of Geek. \"This world of superheroes has been around a long time and is responsible for a lot of massive business in our industry… But now you have this guy who… is the Dirty Harry of superheroes.\"', '2022-10-26'),
(3, 'My Policeman', 'Harry Styles has been in two high-profile films this year. The first of these, Don\'t Worry Darling, might not have convinced everyone that he was a serious actor rather than a handsome pop-star-turned-movie-star, but this sensitive romantic drama might help his case. Directed by Michael Grandage and based on a novel by Bethan Roberts, My Policeman features Styles as a policeman in 1950s Brighton who is in a relationship with a male museum curator (David Dawson), but who marries a female teacher (Emma Corrin) for appearances\' sake. In the 1990s, the three meet again, with Linus Roach, Gina McKee and Rupert Everett playing their older selves. But is there still time for them to right the wrongs of the past? Styles \"wonderfully inhabits a working-class man fearful of public scrutiny but unable to hide his true self,\" says Gregory Ellwood at The Playlist. \"Dawson is heartbreaking… and Corrin is simply fantastic as a young woman whose emotions get the best of her when it matters most.\"', '2022-10-11'),
(4, 'Lorem', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti modi sint, eius repellendus repellat perferendis, repudiandae quidem aperiam quisquam asperiores aliquam quas reprehenderit debitis aspernatur tempore. Maiores, eaque fugiat. Deserunt? Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nostrum, facilis? Corrupti numquam placeat officiis quibusdam earum. Quasi adipisci, corporis quis neque ipsam doloribus laudantium vitae. Sequi nostrum sed omnis obcaecati!', '2022-10-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `movie_movie`
--
ALTER TABLE `movie_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_review`
--
ALTER TABLE `movie_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_review_movie_id_43bc85b0_fk_movie_movie_id` (`movie_id`),
  ADD KEY `movie_review_user_id_511299d9_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `news_news`
--
ALTER TABLE `news_news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `movie_movie`
--
ALTER TABLE `movie_movie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `movie_review`
--
ALTER TABLE `movie_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news_news`
--
ALTER TABLE `news_news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `movie_review`
--
ALTER TABLE `movie_review`
  ADD CONSTRAINT `movie_review_movie_id_43bc85b0_fk_movie_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movie_movie` (`id`),
  ADD CONSTRAINT `movie_review_user_id_511299d9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
