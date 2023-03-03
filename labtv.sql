-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Feb 01, 2023 alle 15:51
-- Versione del server: 5.7.34
-- Versione PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labtv`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `director`
--

CREATE TABLE `director` (
  `id` int(11) UNSIGNED NOT NULL,
  `surname` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `biography` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `director`
--

INSERT INTO `director` (`id`, `surname`, `name`, `biography`) VALUES
(1, 'Venier', 'Massimo', 'Massimo Venier è un regista e sceneggiatore italiano.'),
(3, 'Nunziante', 'Gennaro', 'Gennaro Nunziante è un regista, attore e sceneggiatore italiano.'),
(4, 'Speer', 'Scott', 'Scott Speer è un regista, produttore cinematografico e scrittore statunitense.'),
(5, 'Watts', 'Jon', 'Jonathan Watts è un regista americano. I suoi crediti includono la regia dei film sui supereroi del Marvel Cinematic Universe Spider-Man: Homecoming, Spider-Man: Far From Home e Spider-Man: No Way Home.'),
(6, 'De Luigi', 'Fabio', 'Fabio De Luigi è un attore, comico, imitatore, doppiatore, regista, conduttore televisivo ed ex giocatore di baseball italiano.'),
(7, 'Allen', 'Elizabeth', 'Elizabeth Allen Rosenbaum, conosciuta anche come Liz Allen, è una regista cinematografica e televisiva americana. Ha diretto e prodotto sei pilot per la TV, che sono stati tutti inseriti in una serie.'),
(8, 'Cameron', 'James', 'James Francis Cameron è un regista, sceneggiatore, produttore cinematografico e montatore canadese. Diventato noto a metà degli anni ottanta con il film Terminator, due dei suoi film, Avatar e Titanic, sono rispettivamente il primo e il terzo film di maggiore incasso della storia del cinema.'),
(9, 'Muschietti', 'Andrés', 'Andrés Muschietti è un regista argentino che ha ottenuto ampi riconoscimenti con il film Mama del 2013, che ha realizzato con Neil Cross e sua sorella, produttrice e sceneggiatrice Barbara Muschietti, basato sull\'omonimo film di tre minuti.'),
(10, 'Cowperthwaite', 'Gabriela', 'Gabriela Cowperthwaite è una regista americana/brasiliana. Ha diretto documentari e lungometraggi e inoltre produce, monta, scrive e dirige per la televisione e film documentari. I suoi film affrontano spesso questioni sociali, culturali e ambientali relative a eventi della vita reale.'),
(11, 'Chbosky', 'Stephen', 'Stephen Chbosky è uno scrittore, regista, sceneggiatore e produttore cinematografico statunitense. Chbosky è noto per aver scritto il romanzo epistolare Ragazzo da parete.');

-- --------------------------------------------------------

--
-- Struttura della tabella `evidenza`
--

CREATE TABLE `evidenza` (
  `id` varchar(100) NOT NULL,
  `rank` double DEFAULT NULL,
  `rankUpDown` double DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `fullTitle` varchar(100) DEFAULT NULL,
  `year` double DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `crew` varchar(100) DEFAULT NULL,
  `imDbRating` varchar(100) DEFAULT NULL,
  `imDbRatingCount` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `evidenza`
--

INSERT INTO `evidenza` (`id`, `rank`, `rankUpDown`, `title`, `fullTitle`, `year`, `image`, `crew`, `imDbRating`, `imDbRatingCount`) VALUES
('tt0068646', 30, 9, 'The Godfather', 'The Godfather (1972)', 1972, 'https://imdb-api.com/images/original/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.7015_AL_.jpg', '\"Francis Ford Coppola (dir.), Marlon Brando, Al Pacino\"', '9.2', '1790386'),
('tt0076759', 64, 35, 'Star Wars', 'Star Wars (1977)', 1977, 'https://imdb-api.com/images/original/MV5BNzg4MjQxNTQtZmI5My00YjMwLWJlMjUtMmJlY2U2ZWFlNzY1XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_Ratio0.6716_AL_.jpg', '\"George Lucas (dir.), Mark Hamill, Harrison Ford\"', '8.6', '1327004'),
('tt0087800', 99, 155, 'A Nightmare on Elm Street', 'A Nightmare on Elm Street (1984)', 1984, 'https://imdb-api.com/images/original/MV5BNzFjZmM1ODgtMDBkMS00NWFlLTg2YmUtZjc3ZTgxMjE1OTI2L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_Ratio0.6716_AL_.jpg', '\"Wes Craven (dir.), Heather Langenkamp, Johnny Depp\"', '7.4', '231715'),
('tt0092099', 2, 0, 'Top Gun', 'Top Gun (1986)', 1986, 'https://imdb-api.com/images/original/MV5BZjQxYTA3ODItNzgxMy00N2Y2LWJlZGMtMTRlM2JkZjI1ZDhhXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_Ratio0.6716_AL_.jpg', '\"Tony Scott (dir.), Tom Cruise, Tim Robbins\"', '6.9', '360465'),
('tt0096446', 43, 9, 'Willow', 'Willow (1988)', 1988, 'https://imdb-api.com/images/original/MV5BZWIyMTA2M2ItOGI5MC00OTY0LWFmZTItN2NkOWQ0MGQ5NDkyL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg', '\"Ron Howard (dir.), Val Kilmer, Joanne Whalley\"', '7.2', '111825'),
('tt0099685', 44, -19, 'Goodfellas', 'Goodfellas (1990)', 1990, 'https://imdb-api.com/images/original/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg', '\"Martin Scorsese (dir.), Robert De Niro, Ray Liotta\"', '8.7', '1121248'),
('tt0107290', 53, 1, 'Jurassic Park', 'Jurassic Park (1993)', 1993, 'https://imdb-api.com/images/original/MV5BMjM2MDgxMDg0Nl5BMl5BanBnXkFtZTgwNTM2OTM5NDE@._V1_Ratio0.6716_AL_.jpg', '\"Steven Spielberg (dir.), Sam Neill, Laura Dern\"', '8.2', '950065'),
('tt0109830', 71, 81, 'Forrest Gump', 'Forrest Gump (1994)', 1994, 'https://imdb-api.com/images/original/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg', '\"Robert Zemeckis (dir.), Tom Hanks, Robin Wright\"', '8.8', '2003798'),
('tt0111161', 65, 11, 'The Shawshank Redemption', 'The Shawshank Redemption (1994)', 1994, 'https://imdb-api.com/images/original/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg', '\"Frank Darabont (dir.), Tim Robbins, Morgan Freeman\"', '9.3', '2595057'),
('tt0120915', 62, 57, 'Star Wars: Episode I - The Phantom Menace', 'Star Wars: Episode I - The Phantom Menace (1999)', 1999, 'https://imdb-api.com/images/original/MV5BYTRhNjcwNWQtMGJmMi00NmQyLWE2YzItODVmMTdjNWI0ZDA2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_Ratio0.6716_AL_.jpg', '\"George Lucas (dir.), Ewan McGregor, Liam Neeson\"', '6.5', '784271'),
('tt0121766', 66, 54, 'Star Wars: Episode III - Revenge of the Sith', 'Star Wars: Episode III - Revenge of the Sith (2005)', 2005, 'https://imdb-api.com/images/original/MV5BNTc4MTc3NTQ5OF5BMl5BanBnXkFtZTcwOTg0NjI4NA@@._V1_Ratio0.7313_AL_.jpg', '\"George Lucas (dir.), Hayden Christensen, Natalie Portman\"', '7.6', '767962'),
('tt0241527', 76, 55, 'Harry Potter and the Sorcerer\'s Stone', 'Harry Potter and the Sorcerer\'s Stone (2001)', 2001, 'https://imdb-api.com/images/original/MV5BMzkyZGFlOWQtZjFlMi00N2YwLWE2OWQtYTgxY2NkNmM1NjMwXkEyXkFqcGdeQXVyNjY1NTM1MzA@._V1_Ratio0.6716_AL_.jpg', '\"Chris Columbus (dir.), Daniel Radcliffe, Rupert Grint\"', '7.6', '754674'),
('tt0325980', 51, -5, 'Pirates of the Caribbean: The Curse of the Black Pearl', 'Pirates of the Caribbean: The Curse of the Black Pearl (2003)', 2003, 'https://imdb-api.com/images/original/MV5BNGYyZGM5MGMtYTY2Ni00M2Y1LWIzNjQtYWUzM2VlNGVhMDNhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg', '\"Gore Verbinski (dir.), Johnny Depp, Geoffrey Rush\"', '8.0', '1093866'),
('tt0367594', 72, 15, 'Charlie and the Chocolate Factory', 'Charlie and the Chocolate Factory (2005)', 2005, 'https://imdb-api.com/images/original/MV5BNjcxMjg1Njg2NF5BMl5BanBnXkFtZTcwMjQ4NzMzMw@@._V1_Ratio0.6716_AL_.jpg', '\"Tim Burton (dir.), Johnny Depp, Freddie Highmore\"', '6.7', '468838'),
('tt0369610', 80, -2, 'Jurassic World', 'Jurassic World (2015)', 2015, 'https://imdb-api.com/images/original/MV5BNzQ3OTY4NjAtNzM5OS00N2ZhLWJlOWUtYzYwZjNmOWRiMzcyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg', '\"Colin Trevorrow (dir.), Chris Pratt, Bryce Dallas Howard\"', '6.9', '622914'),
('tt0376136', 35, 5, 'The Rum Diary', 'The Rum Diary (2011)', 2011, 'https://imdb-api.com/images/original/MV5BMTM5ODA4MjYxM15BMl5BanBnXkFtZTcwMTM3NTE5Ng@@._V1_Ratio0.6716_AL_.jpg', '\"Bruce Robinson (dir.), Johnny Depp, Giovanni Ribisi\"', '6.1', '104247'),
('tt10298810', 59, 21, 'Lightyear', 'Lightyear (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYTg2Zjk0ZTctM2ZmMi00MDRmLWJjOGYtNWM0YjBmZTBjMjRkXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Angus MacLane (dir.), Chris Evans, Keke Palmer\"', '', '0'),
('tt10323676', 93, 31, 'The Contractor', 'The Contractor (2022)', 2022, 'https://imdb-api.com/images/original/MV5BOWQ3MDg1MTgtMmI4ZC00YjU3LWIyZGEtNmRkNzI0Y2QyN2ExXkEyXkFqcGdeQXVyNzgzODI1OTE@._V1_Ratio0.6716_AL_.jpg', '\"Tarik Saleh (dir.), Chris Pine, Gillian Jacobs\"', '5.8', '12770'),
('tt10648342', 7, -3, 'Thor: Love and Thunder', 'Thor: Love and Thunder (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYmMxZWRiMTgtZjM0Ny00NDQxLWIxYWQtZDdlNDNkOTEzYTdlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"Taika Waititi (dir.), Natalie Portman, Taika Waititi\"', '', '0'),
('tt10838180', 67, 4, 'The Matrix Resurrections', 'The Matrix Resurrections (2021)', 2021, 'https://imdb-api.com/images/original/MV5BMGJkNDJlZWUtOGM1Ny00YjNkLThiM2QtY2ZjMzQxMTIxNWNmXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_Ratio0.6716_AL_.jpg', '\"Lana Wachowski (dir.), Keanu Reeves, Carrie-Anne Moss\"', '5.7', '228448'),
('tt10872600', 41, -3, 'Spider-Man: No Way Home', 'Spider-Man: No Way Home (2021)', 2021, 'https://imdb-api.com/images/original/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_Ratio0.6716_AL_.jpg', '\"Jon Watts (dir.), Tom Holland, Zendaya\"', '8.3', '648270'),
('tt10886166', 56, -8, '365 Days', '365 Days (2020)', 2020, 'https://imdb-api.com/images/original/MV5BMDdhYzNkOWQtYWNlNi00NDdjLWJlZDMtMjJjZDYyNjAxM2U1XkEyXkFqcGdeQXVyMTQyMTMwOTk0._V1_Ratio0.7313_AL_.jpg', '\"Barbara Bialowas (dir.), Anna-Maria Sieklucka, Michele Morrone\"', '3.3', '82481'),
('tt10954652', 33, 2, 'Old', 'Old (2021)', 2021, 'https://imdb-api.com/images/original/MV5BMjJjZGRhM2YtNTU4NC00OWMwLThhYWUtMWUxNDNhMDZlOTNmXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_Ratio0.6716_AL_.jpg', '\"M. Night Shyamalan (dir.), Gael García Bernal, Vicky Krieps\"', '5.8', '103432'),
('tt11138512', 9, -1, 'The Northman', 'The Northman (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMzVlMmY2NTctODgwOC00NDMzLWEzMWYtM2RiYmIyNTNhMTI0XkEyXkFqcGdeQXVyNTAzNzgwNTg@._V1_Ratio0.6716_AL_.jpg', '\"Robert Eggers (dir.), Alexander Skarsgård, Nicole Kidman\"', '7.3', '111885'),
('tt11271038', 98, -9, 'Licorice Pizza', 'Licorice Pizza (2021)', 2021, 'https://imdb-api.com/images/original/MV5BYjkwMzIxYzMtOTVkMS00NDQxLThkMjItNzgxN2RiNjdlNTliXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_Ratio0.6716_AL_.jpg', '\"Paul Thomas Anderson (dir.), Alana Haim, Cooper Hoffman\"', '7.3', '84308'),
('tt11291274', 96, -35, 'The Unbearable Weight of Massive Talent', 'The Unbearable Weight of Massive Talent (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNDM2ODNiMWItOWRkNS00ODE3LWE2OGYtNTZkMDJkOWI1ODMxXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_Ratio0.6716_AL_.jpg', '\"Tom Gormican (dir.), Nicolas Cage, Pedro Pascal\"', '7.4', '23154'),
('tt1160419', 55, -5, 'Dune', 'Dune (2021)', 2021, 'https://imdb-api.com/images/original/MV5BN2FjNmEyNWMtYzM0ZS00NjIyLTg5YzYtYThlMGVjNzE1OGViXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"Denis Villeneuve (dir.), Timothée Chalamet, Rebecca Ferguson\"', '8.0', '576128'),
('tt11703710', 36, -14, 'Downton Abbey: A New Era', 'Downton Abbey: A New Era (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZDdjZjM1YWItNWRmOS00OTEzLWJmYjAtOGQzNTAyNmEwNDhjXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"Simon Curtis (dir.), Hugh Bonneville, Jim Carter\"', '7.7', '7649'),
('tt11827628', 50, -26, 'Memory', 'Memory (2022)', 2022, 'https://imdb-api.com/images/original/MV5BOGI5N2FhNzktZjZlNi00MmRjLWE1MmUtNjRlNzQyOGMzYjNhXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_Ratio0.6716_AL_.jpg', '\"Martin Campbell (dir.), Liam Neeson, Guy Pearce\"', '5.6', '8194'),
('tt1189340', 61, -17, 'The Lincoln Lawyer', 'The Lincoln Lawyer (2011)', 2011, 'https://imdb-api.com/images/original/MV5BMTQ4NDE4NTY5MV5BMl5BanBnXkFtZTcwODQyMTkxNA@@._V1_Ratio0.6716_AL_.jpg', '\"Brad Furman (dir.), Matthew McConaughey, Marisa Tomei\"', '7.3', '234306'),
('tt12004038', 89, 163, 'Watcher', 'Watcher (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMTNkNjU4OGYtODM3NS00NzM1LWFkZWItZTExNzdjYTAwMmRlXkEyXkFqcGdeQXVyMTE1MzI2NzIz._V1_Ratio0.6716_AL_.jpg', '\"Chloe Okuno (dir.), Maika Monroe, Karl Glusman\"', '6.8', '615'),
('tt12412888', 22, 1, 'Sonic the Hedgehog 2', 'Sonic the Hedgehog 2 (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMGI1NjA1MjUtNGQxNC00NDYyLThjODgtZjFkZjQ4OGM0NDc5XkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_Ratio0.6716_AL_.jpg', '\"Jeff Fowler (dir.), James Marsden, Jim Carrey\"', '6.6', '42140'),
('tt12593682', 63, 111, 'Bullet Train', 'Bullet Train (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMDU2ZmM2OTYtNzIxYy00NjM5LTliNGQtN2JmOWQzYTBmZWUzXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"David Leitch (dir.), Zazie Beetz, Sandra Bullock\"', '7.8', '35'),
('tt1273221', 94, 9, 'London Fields', 'London Fields (2018)', 2018, 'https://imdb-api.com/images/original/MV5BYjMwYWNiN2EtMWNkMS00MDU5LThiMGMtOTk5NTQzMjQ4OTkwXkEyXkFqcGdeQXVyNDExMzMxNjE@._V1_Ratio0.6716_AL_.jpg', '\"Mathew Cullen (dir.), Amber Heard, Theo James\"', '3.8', '10643'),
('tt12996154', 58, -11, '365 Days: This Day', '365 Days: This Day (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYjY2NzUxNjgtNjJhNy00NTA4LTlmNzItYzQ4MDdjNWYxZjkwXkEyXkFqcGdeQXVyMTEwMTY3NDI@._V1_Ratio0.7015_AL_.jpg', '\"Barbara Bialowas (dir.), Anna-Maria Sieklucka, Michele Morrone\"', '2.5', '14807'),
('tt13276352', 86, -45, 'Toscana', 'Toscana (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYjJhNGRhNmItMDA1Yi00MTk0LWJiY2YtMmI2MzhiZTU0ZWZiXkEyXkFqcGdeQXVyNTk1NDE0NTU@._V1_Ratio0.7910_AL_.jpg', '\"Mehdi Avaz (dir.), Cristiana Dell\'Anna, Lærke Winther\"', '5.7', '4293'),
('tt13320622', 15, -1, 'The Lost City', 'The Lost City (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMmIwYzFhODAtY2I1YS00ZDdmLTkyYWQtZjI5NDIwMDc2MjEyXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_Ratio0.6716_AL_.jpg', '\"Aaron Nee (dir.), Sandra Bullock, Channing Tatum\"', '6.2', '59532'),
('tt13560574', 18, 1, 'X', 'X (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMTJiMmE5YWItOWZjYS00YTg0LWE0MTYtMzg2ZTY4YjNkNDEzXkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_Ratio0.7910_AL_.jpg', '\"Ti West (dir.), Mia Goth, Jenna Ortega\"', '6.6', '43622'),
('tt13650600', 34, 23, 'Emergency', 'Emergency (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMzg0ZDkwZDItMzVkZC00YjI2LTk5OTAtMmE4YTZjMWU3YzllXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_Ratio0.6716_AL_.jpg', '\"Carey Williams (dir.), RJ Cyler, Donald Elise Watkins\"', '6.0', '3332'),
('tt13841850', 21, -5, 'Men', 'Men (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZGQ2ZDNiMjgtMTNhNS00MjUxLWFkYTMtYTI1OTE0MmQ2MmJkXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Alex Garland (dir.), Jessie Buckley, Rory Kinnear\"', '6.3', '6993'),
('tt13919802', 85, 283, 'Anek', 'Anek (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNjc0ZGI2ZDItZmVmNC00ZjdiLWEwMDYtMmI1NjMyNzg5MDk3XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_Ratio0.6716_AL_.jpg', '\"Anubhav Sinha (dir.), Ayushmann Khurrana, Andrea Kevichüsa\"', '8.2', '11683'),
('tt14114802', 83, 10, 'The Outfit', 'The Outfit (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYWQ0NWUyMjktYjg4Yy00NmY3LTg2YzEtNWY5OTY5YTc2MjhjXkEyXkFqcGdeQXVyMTA2MDU0NjM5._V1_Ratio0.6716_AL_.jpg', '\"Graham Moore (dir.), Zoey Deutch, Dylan O\'Brien\"', '7.1', '22524'),
('tt14174940', 17, 445, 'Interceptor', 'Interceptor (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZGNjYjQ3NjgtZWM0NS00MTY5LTlkZWMtODZlNzhkNTU3MzZiXkEyXkFqcGdeQXVyMjM2OTI3Mzk@._V1_Ratio0.6716_AL_.jpg', '\"Matthew Reilly (dir.), Elsa Pataky, Luke Bracey\"', '4.5', '6394'),
('tt14439896', 23, 310, 'Father Stu', 'Father Stu (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNGYwOTI1MTUtYmY0Mi00OTAxLTkwNDEtOTI5YTkyZTVhN2JiXkEyXkFqcGdeQXVyMTAxNDE3MTE5._V1_Ratio0.7910_AL_.jpg', '\"Rosalind Ross (dir.), Mark Wahlberg, Mel Gibson\"', '6.5', '5407'),
('tt14549466', 14, 14, 'Crimes of the Future', 'Crimes of the Future (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZDdjODNkMmYtYjMwNS00NTQzLThlYjUtODY2ZjdjNTNlY2JiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"David Cronenberg (dir.), Léa Seydoux, Kristen Stewart\"', '6.6', '2195'),
('tt1464335', 31, -2, 'Uncharted', 'Uncharted (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMWEwNjhkYzYtNjgzYy00YTY2LThjYWYtYzViMGJkZTI4Y2MyXkEyXkFqcGdeQXVyNTM0OTY1OQ@@._V1_Ratio0.6716_AL_.jpg', '\"Ruben Fleischer (dir.), Tom Holland, Mark Wahlberg\"', '6.4', '126841'),
('tt1477834', 26, -8, 'Aquaman', 'Aquaman (2018)', 2018, 'https://imdb-api.com/images/original/MV5BOTk5ODg0OTU5M15BMl5BanBnXkFtZTgwMDQ3MDY3NjM@._V1_Ratio0.6716_AL_.jpg', '\"James Wan (dir.), Jason Momoa, Amber Heard\"', '6.8', '454765'),
('tt1488589', 88, 0, 'Guillermo del Toro\'s Pinocchio', 'Guillermo del Toro\'s Pinocchio (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMTkwNjk2ODY2NF5BMl5BanBnXkFtZTcwNTgzNjAyOQ@@._V1_Ratio0.6716_AL_.jpg', '\"Guillermo del Toro (dir.), Finn Wolfhard, Ewan McGregor\"', '', '0'),
('tt15004136', 37, 211, 'Last Seen Alive', 'Last Seen Alive (2022)', 2022, 'https://imdb-api.com/images/original/MV5BODk4MzkxODgtODEwZi00YTAwLWJjYzUtNjRkYjEzY2ZmNzYxXkEyXkFqcGdeQXVyMDEyNTM2Mg@@._V1_Ratio0.7015_AL_.jpg', '\"Brian Goodman (dir.), Gerard Butler, Jaimie Alexander\"', '5.6', '2214'),
('tt15215512', 25, -12, 'A Perfect Pairing', 'A Perfect Pairing (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNTgzZjM5MWQtN2NhMy00NTFiLTliNGUtYTFiZjY3MWYwYmZjXkEyXkFqcGdeQXVyNjEwNTM2Mzc@._V1_Ratio0.7910_AL_.jpg', '\"Stuart McDonald (dir.), Victoria Justice, Adam Demos\"', '6.1', '6192'),
('tt15218000', 57, 975, 'Fire Island', 'Fire Island (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNjBiZjc3YzItYWQ0Ni00YjZlLWFjYTAtMTBiNzM5ZmMxOGExXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_Ratio0.6716_AL_.jpg', '\"Andrew Ahn (dir.), Joel Kim Booster, Bowen Yang\"', '6.8', '2186'),
('tt1630029', 78, -42, 'Avatar: The Way of Water', 'Avatar: The Way of Water (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMWFmYmRiYzMtMTQ4YS00NjA5LTliYTgtMmM3OTc4OGY3MTFkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_Ratio0.7910_AL_.jpg', '\"James Cameron (dir.), Michelle Yeoh, Zoe Saldana\"', '', '0'),
('tt1649418', 48, -28, 'The Gray Man', 'The Gray Man (2022)', 2022, 'https://imdb-api.com/images/original/MV5BOWY4MmFiY2QtMzE1YS00NTg1LWIwOTQtYTI4ZGUzNWIxNTVmXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_Ratio0.6716_AL_.jpg', '\"Anthony Russo (dir.), Ana de Armas, Chris Evans\"', '', '0'),
('tt1745960', 1, 0, 'Top Gun: Maverick', 'Top Gun: Maverick (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMmIwZDMyYWUtNTU0ZS00ODJhLTg2ZmEtMTk5ZmYzODcxODYxXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_Ratio0.6716_AL_.jpg', '\"Joseph Kosinski (dir.), Tom Cruise, Jennifer Connelly\"', '8.7', '115447'),
('tt1790809', 73, -9, 'Pirates of the Caribbean: Dead Men Tell No Tales', 'Pirates of the Caribbean: Dead Men Tell No Tales (2017)', 2017, 'https://imdb-api.com/images/original/MV5BMTYyMTcxNzc5M15BMl5BanBnXkFtZTgwOTg2ODE2MTI@._V1_Ratio0.6716_AL_.jpg', '\"Joachim Rønning (dir.), Johnny Depp, Geoffrey Rush\"', '6.5', '300554'),
('tt1798632', 87, -45, 'Firestarter', 'Firestarter (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMWIzNzA4MmUtYTIzNy00Y2Q5LWIyM2YtZGRiYzM0ZWQzOTU2XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"Keith Thomas (dir.), Zac Efron, Ryan Kiera Armstrong\"', '4.6', '10012'),
('tt1877830', 12, 0, 'The Batman', 'The Batman (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMDdmMTBiNTYtMDIzNi00NGVlLWIzMDYtZTk3MTQ3NGQxZGEwXkEyXkFqcGdeQXVyMzMwOTU5MDk@._V1_Ratio0.6716_AL_.jpg', '\"Matt Reeves (dir.), Robert Pattinson, Zoë Kravitz\"', '7.9', '500872'),
('tt1879016', 39, -13, 'Operation Mincemeat', 'Operation Mincemeat (2021)', 2021, 'https://imdb-api.com/images/original/MV5BOGZlNjZhNjgtMjQzZC00MDI0LWFmNGQtNmNiYTIyYTE3ODhkXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_Ratio0.6716_AL_.jpg', '\"John Madden (dir.), Colin Firth, Matthew Macfadyen\"', '6.6', '13449'),
('tt19623240', 8, -2, 'Winnie-The-Pooh: Blood and Honey', 'Winnie-The-Pooh: Blood and Honey ( 2)', 2, 'https://imdb-api.com/images/original/MV5BNWZiMDFiZTgtN2QzYS00YjViLWE2OGQtZWIxNzA4MjFmM2UzXkEyXkFqcGdeQXVyMjM4MTU4NjQ@._V1_Ratio1.7761_AL_.jpg', '\"Rhys Frake-Waterfield (dir.), Natasha Tosini, Amber Doig-Thorne\"', '', '0'),
('tt2049403', 32, 130, 'Beetlejuice 2', 'Beetlejuice 2 (2025)', 2025, 'https://imdb-api.com/images/original/nopicture.jpg', 'Tim Burton (dir.)', '', '0'),
('tt2382320', 69, 5, 'No Time to Die', 'No Time to Die (2021)', 2021, 'https://imdb-api.com/images/original/MV5BYWQ2NzQ1NjktMzNkNS00MGY1LTgwMmMtYTllYTI5YzNmMmE0XkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_Ratio0.6716_AL_.jpg', '\"Cary Joji Fukunaga (dir.), Daniel Craig, Ana de Armas\"', '7.3', '359021'),
('tt2463208', 81, -5, 'The Adam Project', 'The Adam Project (2022)', 2022, 'https://imdb-api.com/images/original/MV5BOWM0YWMwMDQtMjE5NS00ZTIwLWE1NWEtODViMWZjMWI2OTU3XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_Ratio0.6716_AL_.jpg', '\"Shawn Levy (dir.), Ryan Reynolds, Walker Scobell\"', '6.7', '169249'),
('tt2953050', 97, -2, 'Encanto', 'Encanto (2021)', 2021, 'https://imdb-api.com/images/original/MV5BNjE5NzA4ZDctOTJkZi00NzM0LTkwOTYtMDI4MmNkMzIxODhkXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_Ratio0.6716_AL_.jpg', '\"Jared Bush (dir.), Stephanie Beatriz, María Cecilia Botero\"', '7.2', '199843'),
('tt3183660', 54, 128, 'Fantastic Beasts and Where to Find Them', 'Fantastic Beasts and Where to Find Them (2016)', 2016, 'https://imdb-api.com/images/original/MV5BMjMxOTM1OTI4MV5BMl5BanBnXkFtZTgwODE5OTYxMDI@._V1_Ratio0.6716_AL_.jpg', '\"David Yates (dir.), Eddie Redmayne, Katherine Waterston\"', '7.2', '463482'),
('tt3513500', 11, -8, 'Chip \'n Dale: Rescue Rangers', 'Chip \'n Dale: Rescue Rangers (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZjBlMjIxN2ItNTMyNi00NDk5LWFhMzEtNzdiODE0Y2M4MWI2XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Akiva Schaffer (dir.), Andy Samberg, John Mulaney\"', '7.1', '23350'),
('tt3704428', 13, 2, 'Elvis', 'Elvis (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMjk0YWFlZDQtZjIzYi00Y2Q3LTkxMjktNmMzNzc1NzFmMzhjXkEyXkFqcGdeQXVyNjc0NzQzNTM@._V1_Ratio0.6716_AL_.jpg', '\"Baz Luhrmann (dir.), Tom Hanks, Austin Butler\"', '', '0'),
('tt3748528', 92, 90, 'Rogue One: A Star Wars Story', 'Rogue One: A Star Wars Story (2016)', 2016, 'https://imdb-api.com/images/original/MV5BMjEwMzMxODIzOV5BMl5BanBnXkFtZTgwNzg3OTAzMDI@._V1_Ratio0.6716_AL_.jpg', '\"Gareth Edwards (dir.), Felicity Jones, Diego Luna\"', '7.8', '608945'),
('tt3774694', 70, 11, 'Love', 'Love (2015)', 2015, 'https://imdb-api.com/images/original/MV5BMTQzNDUwODk5NF5BMl5BanBnXkFtZTgwNzA0MDQ2NTE@._V1_Ratio0.7015_AL_.jpg', '\"Gaspar Noé (dir.), Aomi Muyock, Karl Glusman\"', '6.0', '57320'),
('tt3794354', 100, -17, 'Sonic the Hedgehog', 'Sonic the Hedgehog (2020)', 2020, 'https://imdb-api.com/images/original/MV5BNTdmNmI4MzQtZTAzNS00MjhjLWEzOGQtZjI1NDNjZjk4N2JjXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_Ratio0.6716_AL_.jpg', '\"Jeff Fowler (dir.), Ben Schwartz, James Marsden\"', '6.5', '131186'),
('tt4081630', 46, -25, 'The Valet', 'The Valet (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNWZiNDM3MjgtYzY1Ni00ZTI1LTgzMTktMzBiOTI5OWU0OTc0XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Richard Wong (dir.), Eugenio Derbez, Samara Weaving\"', '6.7', '6735'),
('tt4123430', 29, 104, 'Fantastic Beasts: The Crimes of Grindelwald', 'Fantastic Beasts: The Crimes of Grindelwald (2018)', 2018, 'https://imdb-api.com/images/original/MV5BYWVlMDI5N2UtZTIyMC00NjZkLWI5Y2QtODM5NGE5MzA0NmVjXkEyXkFqcGdeQXVyNzU3NjUxMzE@._V1_Ratio0.6716_AL_.jpg', '\"David Yates (dir.), Eddie Redmayne, Katherine Waterston\"', '6.5', '271344'),
('tt4123432', 3, 31, 'Fantastic Beasts: The Secrets of Dumbledore', 'Fantastic Beasts: The Secrets of Dumbledore (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZGQ1NjQyNDMtNzFlZS00ZGIzLTliMWUtNGJkMGMzNTBjNDg0XkEyXkFqcGdeQXVyMTE1NDI5MDQx._V1_Ratio0.6716_AL_.jpg', '\"David Yates (dir.), Eddie Redmayne, Jude Law\"', '6.3', '81866'),
('tt4154796', 79, -5, 'Avengers: Endgame', 'Avengers: Endgame (2019)', 2019, 'https://imdb-api.com/images/original/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_Ratio0.6716_AL_.jpg', '\"Anthony Russo (dir.), Robert Downey Jr., Chris Evans\"', '8.4', '1059848'),
('tt4513678', 40, -9, 'Ghostbusters: Afterlife', 'Ghostbusters: Afterlife (2021)', 2021, 'https://imdb-api.com/images/original/MV5BMmZiMjdlN2UtYzdiZS00YjgxLTgyZGMtYzE4ZGU5NTlkNjhhXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_Ratio0.6716_AL_.jpg', '\"Jason Reitman (dir.), Carrie Coon, Paul Rudd\"', '7.1', '153135'),
('tt4593060', 5, 0, 'Pinocchio', 'Pinocchio (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNDZiMTA3ZjEtZGJjNS00OTkwLWFiYzUtZjdkZDUxZTVlZTY0XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Robert Zemeckis (dir.), Tom Hanks, Lorraine Bracco\"', '', '0'),
('tt4998632', 45, 0, 'Ambulance', 'Ambulance (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYjUyN2VlZGEtNGEyZC00YjViLTgwYmQtZDJiM2FlOTU3Mjg2XkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_Ratio0.6716_AL_.jpg', '\"Michael Bay (dir.), Jake Gyllenhaal, Yahya Abdul-Mateen II\"', '6.1', '43435'),
('tt5108870', 16, 1, 'Morbius', 'Morbius (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNTA3N2Q0ZTAtODJjNy00MmQzLWJlMmItOGFmNDI0ODgxN2QwXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_Ratio0.6716_AL_.jpg', '\"Daniel Espinosa (dir.), Jared Leto, Matt Smith\"', '5.2', '72601'),
('tt5315212', 19, -10, 'Senior Year', 'Senior Year (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNDUyYTM0ODYtYzIyMy00OTM2LWFmOTAtMTFlODQwN2NlYjY1XkEyXkFqcGdeQXVyNTk5NTQzNDI@._V1_Ratio0.7910_AL_.jpg', '\"Alex Hardcastle (dir.), Rebel Wilson, Angourie Rice\"', '5.5', '27857'),
('tt5834426', 82, -16, 'Moonfall', 'Moonfall (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZjk0OWZiN2ItNmQ2YS00NTJmLTg0MjItNzM4NzBkMWM1ZTRlXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_Ratio0.7015_AL_.jpg', '\"Roland Emmerich (dir.), Halle Berry, Patrick Wilson\"', '5.2', '51197'),
('tt5919756', 49, 0, 'Disappearance at Clifton Hill', 'Disappearance at Clifton Hill (2019)', 2019, 'https://imdb-api.com/images/original/MV5BZmQ4NTM4ODctZjU1Yi00ZGMwLWJkMGYtYWZiNjhmMzg2MTk2XkEyXkFqcGdeQXVyODY3Nzc0OTk@._V1_Ratio0.6716_AL_.jpg', '\"Albert Shin (dir.), Addison Tymec, Mikayla Radan\"', '5.4', '3499'),
('tt6264654', 84, 15, 'Free Guy', 'Free Guy (2021)', 2021, 'https://imdb-api.com/images/original/MV5BOTY2NzFjODctOWUzMC00MGZhLTlhNjMtM2Y2ODBiNGY1ZWRiXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_Ratio0.6716_AL_.jpg', '\"Shawn Levy (dir.), Ryan Reynolds, Jodie Comer\"', '7.1', '341531'),
('tt6467266', 91, -1, 'Sing 2', 'Sing 2 (2021)', 2021, 'https://imdb-api.com/images/original/MV5BMWRiZGQ1NDMtODQ2OS00MDlhLWJkZGYtM2ZmNjlhZThjOWRmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"Garth Jennings (dir.), Matthew McConaughey, Reese Witherspoon\"', '7.4', '50341'),
('tt6710474', 4, 1, 'Everything Everywhere All at Once', 'Everything Everywhere All at Once (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYTdiOTIyZTQtNmQ1OS00NjZlLWIyMTgtYzk5Y2M3ZDVmMDk1XkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_Ratio0.6716_AL_.jpg', '\"Dan Kwan (dir.), Michelle Yeoh, Stephanie Hsu\"', '8.3', '98776'),
('tt7131622', 60, 4, 'Once Upon a Time... In Hollywood', 'Once Upon a Time... In Hollywood (2019)', 2019, 'https://imdb-api.com/images/original/MV5BOTg4ZTNkZmUtMzNlZi00YmFjLTk1MmUtNWQwNTM0YjcyNTNkXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_Ratio0.6716_AL_.jpg', '\"Quentin Tarantino (dir.), Leonardo DiCaprio, Brad Pitt\"', '7.6', '691573'),
('tt7144666', 52, 18, 'The Black Phone', 'The Black Phone (2021)', 2021, 'https://imdb-api.com/images/original/MV5BOWVmNTBiYTUtZWQ3Yi00ZDlhLTgyYjUtNzBhZjM3YjRiNGRkXkEyXkFqcGdeQXVyNzYyOTM1ODI@._V1_Ratio0.6716_AL_.jpg', '\"Scott Derrickson (dir.), Ethan Hawke, Jeremy Davies\"', '7.3', '935'),
('tt7322224', 20, 33, 'Triangle of Sadness', 'Triangle of Sadness (2022)', 2022, 'https://imdb-api.com/images/original/MV5BOTFlYzkyMzEtMTEyNS00MTA3LTk4NTAtZGQzMGQ5MTBiNzVmXkEyXkFqcGdeQXVyNDYwNDUyNDc@._V1_Ratio0.6716_AL_.jpg', '\"Ruben Östlund (dir.), Charlbi Dean, Harris Dickinson\"', '7.8', '252'),
('tt7466442', 42, 16, 'The Bob\'s Burgers Movie', 'The Bob\'s Burgers Movie (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYzFhNDNkY2UtYjc3ZS00NzVkLTlhNzEtYmZiZGMzYmRjMjVhXkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_Ratio0.6716_AL_.jpg', '\"Loren Bouchard (dir.), H. Jon Benjamin, Kristen Schaal\"', '7.5', '3440'),
('tt7657566', 27, 6, 'Death on the Nile', 'Death on the Nile (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNjI4ZTQ1OTYtNTI0Yi00M2EyLThiNjMtMzk1MmZlOWMyMDQwXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_Ratio0.6716_AL_.jpg', '\"Kenneth Branagh (dir.), Tom Bateman, Annette Bening\"', '6.3', '113472'),
('tt8009428', 95, 167, 'Hustle', 'Hustle (2022)', 2022, 'https://imdb-api.com/images/original/MV5BYjdhYTE3NjMtZjI3OC00NzVlLWFiNTUtNzQ3NDNiNTI3NDg4XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_Ratio0.6716_AL_.jpg', '\"Jeremiah Zagar (dir.), Adam Sandler, Ben Foster\"', '', '0'),
('tt8041270', 10, 17, 'Jurassic World: Dominion', 'Jurassic World: Dominion (2022)', 2022, 'https://imdb-api.com/images/original/MV5BZmQ1NDZjMTktMjFhZC00ZGY5LWEyMTMtNDhkOWM4NmMyZjI0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg', '\"Colin Trevorrow (dir.), Chris Pratt, Bryce Dallas Howard\"', '6.3', '4153'),
('tt8115900', 38, -6, 'The Bad Guys', 'The Bad Guys (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMDhkYmU0MzctMWEzNy00ODg1LWI3ZjAtMGZlZjkzNWVmMzVjXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Pierre Perifel (dir.), Sam Rockwell, Marc Maron\"', '6.9', '19356'),
('tt8178634', 28, 8, 'RRR', 'RRR (2022)', 2022, 'https://imdb-api.com/images/original/MV5BOTA5NzQwMGMtNDRlZC00YzA4LTliMzQtNGM0NDIwYTk5Y2ZiXkEyXkFqcGdeQXVyMTIyNzY0NTMx._V1_Ratio1.0000_AL_.jpg', '\"S.S. Rajamouli (dir.), Ram Charan, N.T. Rama Rao Jr.\"', '8.1', '73723'),
('tt8367814', 77, -10, 'The Gentlemen', 'The Gentlemen (2019)', 2019, 'https://imdb-api.com/images/original/MV5BMTlkMmVmYjktYTc2NC00ZGZjLWEyOWUtMjc2MDMwMjQwOTA5XkEyXkFqcGdeQXVyNTI4MzE4MDU@._V1_Ratio0.6716_AL_.jpg', '\"Guy Ritchie (dir.), Matthew McConaughey, Charlie Hunnam\"', '7.8', '319455'),
('tt8550054', 74, -9, 'Pleasure', 'Pleasure (2021)', 2021, 'https://imdb-api.com/images/original/MV5BNmU3ZTJjMTEtYzc2Ny00YjVhLTkyYmQtZTFhYWY0N2MxMzkxXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Ninja Thyberg (dir.), Sofia Kappel, Zelda Morrison\"', '6.3', '9833'),
('tt9032400', 90, -18, 'Eternals', 'Eternals (2021)', 2021, 'https://imdb-api.com/images/original/MV5BMTExZmVjY2ItYTAzYi00MDdlLWFlOWItNTJhMDRjMzQ5ZGY0XkEyXkFqcGdeQXVyODIyOTEyMzY@._V1_Ratio0.6716_AL_.jpg', '\"Chloé Zhao (dir.), Gemma Chan, Richard Madden\"', '6.3', '309483'),
('tt9179430', 68, 0, 'Vikram', 'Vikram (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMmJhYTYxMGEtNjQ5NS00MWZiLWEwN2ItYjJmMWE2YTU1YWYxXkEyXkFqcGdeQXVyMTEzNzg0Mjkx._V1_Ratio0.6716_AL_.jpg', '\"Lokesh Kanagaraj (dir.), Kamal Haasan, Vijay Sethupathi\"', '9.1', '13365'),
('tt9419884', 6, 1, 'Doctor Strange in the Multiverse of Madness', 'Doctor Strange in the Multiverse of Madness (2022)', 2022, 'https://imdb-api.com/images/original/MV5BNWM0ZGJlMzMtZmYwMi00NzI3LTgzMzMtNjMzNjliNDRmZmFlXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_Ratio0.6716_AL_.jpg', '\"Sam Raimi (dir.), Benedict Cumberbatch, Elizabeth Olsen\"', '7.3', '195460'),
('tt9603212', 47, -36, 'Mission: Impossible - Dead Reckoning - Part One', 'Mission: Impossible - Dead Reckoning - Part One (2023)', 2023, 'https://imdb-api.com/images/original/MV5BZmM1MmI1MjctOTkyMi00MjZhLWEwN2MtYjEwNGRjNmUxZmVjXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_Ratio0.6716_AL_.jpg', '\"Christopher McQuarrie (dir.), Tom Cruise, Indira Varma\"', '', '0'),
('tt9663764', 75, -15, 'Aquaman and the Lost Kingdom', 'Aquaman and the Lost Kingdom (2023)', 2023, 'https://imdb-api.com/images/original/MV5BM2QyYTRkMjMtMDk5NC00OTc0LWIyYTYtNGNhMzRjMTNhNGNkXkEyXkFqcGdeQXVyNjc0NzQzNTM@._V1_Ratio1.7761_AL_.jpg', '\"James Wan (dir.), Amber Heard, Temuera Morrison\"', '', '0'),
('tt9764362', 24, 0, 'The Menu', 'The Menu (2022)', 2022, 'https://imdb-api.com/images/original/MV5BMGUyOTNhZjEtYzg3Ni00NDJjLWJlYzQtYzRmMTBhODRmM2FkXkEyXkFqcGdeQXVyODc0OTEyNDU@._V1_Ratio1.5075_AL_.jpg', '\"Mark Mylod (dir.), Anya Taylor-Joy, Ralph Fiennes\"', '', '0');

-- --------------------------------------------------------

--
-- Struttura della tabella `film`
--

CREATE TABLE `film` (
  `id` int(11) UNSIGNED NOT NULL,
  `image` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `plot` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `star` int(11) UNSIGNED NOT NULL,
  `director` int(11) UNSIGNED NOT NULL,
  `genre` int(11) UNSIGNED NOT NULL,
  `similar` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `film`
--

INSERT INTO `film` (`id`, `image`, `title`, `plot`, `star`, `director`, `genre`, `similar`) VALUES
(1, 'https://lh3.googleusercontent.com/pw/AL9nZEU8MgyO-CcK4Vin0DQ27QPWIQcP4umUfUcNsOa3PzC6vuM8gsgEHVNpoWhINKzcBsrT5GhejZsKPt7XjSrO1YiXakR0_JTKrsDaQuanZQYus9p-LCTbA-PZXExcve_C38kYA9qil3Bvit3oKXn6qCo=w680-h906-no?authuser=0', 'odio l\'estate', 'Le famiglie di Aldo, Giovanni e Giacomo, che non si conoscono e sono molto diverse tra loro, partono per una vacanza in Puglia e si ritrovano, a causa di un disguido, a dover condividere l\'abitazione.', 1, 1, 1, 1),
(2, 'https://lh3.googleusercontent.com/pw/AL9nZEUNwcJqG91zxskKWV0rzJ3ANBB-D5T2au0r9WNzJKl_TwGN8pt2KyPjnVWpVQYza0QdjfZGClKHNFK5Z88WjH1yR8YeGaX_GR2jqD6fnJpyM_FbJNxg6tVc6E7aCou_ARmF3OHUfht9DtphX6SI_8c=w618-h824-no?authuser=0', 'chiedimi se sono felice', 'Aldo, Giovanni e Giacomo, tre grandi amici, hanno un sogno in comune: mettere in scena il Cyrano di Bergerac. Intanto, per vivere, Aldo fa la comparsa al teatro dell\'Opera; Giovanni ha il ruolo di statua vivente in un centro commerciale; Giacomo fa il doppiatore di serial e telefilm. Anche la vita sentimentale non li lascia tranquilli. Aldo proclama di non avere legami, ma in realtà ne ha uno molto intenso con Silvana che lo tiene ben stretto. Giacomo fantastica di favolose storie d\'amore, mentre Giovanni pensa a come cambiare la propria vita e lasciare il suo lavoro insopportabile. Riusciranno ad andare in scena con il Cyrano di Bergerac?', 2, 1, 1, 2),
(3, 'https://lh3.googleusercontent.com/pw/AL9nZEUppOim1Ddlb_q6k2XHPhjKcaUKCd4hSptT8fjU-kS_MLHj-H2TAHDLT2ATvRa6UoAOOWHcTVt17h7tYiqaXHzca8s_2iqv7fUf_5zl-XZ5cKWgN-Lb-qYEYiqldljxjZq6uKVAY1tmw5lUjmdGw54=w618-h824-no?authuser=0', 'quo vado?', 'Checco è un ragazzo pugliese che ha realizzato tutte le aspettative che aveva dalla sua vita, in quanto vive con i genitori in modo da evitare le responsabilità dell\'indipendenza e non pagare affitti e bollette, non si è mai sposato ma è sempre stato fidanzato con Penelope per evitare le responsabilità del matrimonio e soprattutto è riuscito ad avere un lavoro sicuro ottenendo un posto fisso come dipendente pubblico: lavora infatti come funzionario nell\'ufficio provinciale caccia e pesca, in cui timbra le licenze di cacciatori e pescatori. In questo modo Checco affronta una vita che fa invidia a tutti. Un giorno però tutto cambia, in quanto nel 2015 il governo vara la riforma della pubblica amministrazione che prevede un risparmio sui dipendenti pubblici, eliminandone molti. Convocato al ministero dalla spietata dirigente dottoressa Sironi, Checco è messo di fronte a una scelta difficile: lasciare il posto fisso o mantenerlo venendo messo in mobilità e trasferito lontano da casa.', 3, 3, 1, 3),
(4, 'https://lh3.googleusercontent.com/pw/AL9nZEWUMwuk4Rg6snD9qFqOSIhNBFnEmeOsJaLcoxDTiJQY_G3cHgtGkxRWB-ZclUsXCF6s0EeI7MznJyA_evRXpB3CFcwdp8UyEEFAAn2YrrQS3maClGaZShLJc7f-zenHHIK_K82W-hVYetOVTP-NOVA=w618-h824-no?authuser=0', 'il sole a mezzanotte', 'Al riparo fin dalla prima infanzia, Katie Price vive con una sensibilità pericolosa alla luce solare causata da una condizione genetica rara, lo Xeroderma pigmentoso, da lei chiamata XP. Durante il giorno, è costretta a stare rinchiusa dentro casa, con solo suo padre, Jack, e la sua migliore amica, Morgan, a farle compagnia. Durante la notte, però, Katie esce di casa per andare a suonare alla stazione del treno. Per il suo immaginario diploma, suo padre le regala la chitarra appartenuta alla madre, morta anni prima. Una notte, mentre sta suonando il suo strumento, attira l\'attenzione di Charlie, ragazzo per il quale lei ha avuto sempre una cotta, ma fugge via, dimenticando il suo quaderno lì. La sera successiva, quando va a riprenderlo, Katie incontra di nuovo Charlie, con il quale inizia una conversazione.', 4, 4, 3, 4),
(5, 'https://lh3.googleusercontent.com/pw/AL9nZEUdiApqt6ONCEBdFq3TkflITYMV1Vrs_upD_ZyoT7mJ55Y0cpifwDaV7uICVA4tasEDHzo_cXA6_8rnhFNO1T3Sxey9UBw57OzUX0nP0b893FNCPBZcERsbLq_VnIgAWEjfq5DKsyXYuvtbyugrBm4=w618-h824-no?authuser=0', 'spider-man: no way home', 'Una settimana dopo gli attacchi di Quentin Beck in Europa, viene pubblicato un video in cui Beck incolpa Spider-Man della sua morte e rivela la sua identità segreta. Peter e MJ fuggono dai giornalisti e si dirigono verso l\'appartamento di Peter, riunendosi con sua zia May e Happy. Con l\'appartamento circondato dalla Damage Control, Peter, MJ, Ned e May vengono presi in custodia e interrogati, ma le accuse legali vengono ritirate grazie all\'avvocato Matt Murdock. Peter, MJ e Ned tornano a scuola, ma tutte le loro domande di ammissione all\'università vengono respinte a causa delle recenti controversie. Peter si consulta allora con il Dr. Stephen Strange nel Sanctum Sanctorum, chiedendogli di lanciare un incantesimo per far dimenticare a tutti che lui è Spider-Man. Nonostante l\'avvertimento di Wong sulle possibili conseguenze, Strange lancia l\'incantesimo. Tuttavia, Peter chiede costantemente delle modifiche, interrompendolo prima della riuscita. Irritato, Strange gli ordina di andarsene, dopo avere saputo che non ha provato a contattare l\'M.I.T. prima di richiedere l\'incantesimo.', 5, 5, 6, 5),
(6, 'https://lh3.googleusercontent.com/pw/AL9nZEXpQKDKOVUNSVkuHJRnTehF1nWaZasBSe10spX_FJGx6I8lmtxaJ5Un7xcid3OuphHpyQ4DImnW6aXmzTwv_8vEHOQaF4vdM1OgpyLsb4fh1uoMzRHScOsRFnPL8xYw_PxluiW_ntVZgy30UoM3srg=w618-h824-no?authuser=0', 'purple hearts', 'Cassie Salazar, un\'aspirante cantautrice, e Luke Morrow, un marine statunitense, sono due persone molto diverse. Cassie è una ragazza che lavora all\'interno di un locale dove alla fine del proprio turno fa anche la cantante. Un giorno all\'interno del locale arrivano alcuni marine tra cui Luke Morrow, tra i due c’è una sorta di colpo di fulmine che si spezza quasi bruscamente con l\'odio di Cassie per gli uomini in uniforme. Cassie però vive con una malattia, il diabete e purtroppo senza la sua terapia di insulina, fa fatica ad andare avanti così, chiedendo aiuto al suo migliore amico (anch\'esso un marine), decide di volersi sposare per poter avere l\'assicurazione che le paghi le cure. Non tutti sanno che Luke in passato ha avuto problemi di droga ed alcol e che una sua vecchia conoscenza lo tormenta per riavere i soldi di un vecchio debito non saldato, così Luke decide di sposare Cassie per interesse. Si incontrano così per accordarsi: lei lo avrebbe sposato per avere l\'assicurazione sanitaria e lui per pagare il vecchio debito. Qualche giorno dopo decidono di incontrarsi per sposarsi con la testimonianza del migliore amico di Cassie, che per l\'occasione li filma anche. Il giorno dopo Luke parte con gli altri per una nuova missione…', 6, 7, 3, 6),
(7, 'https://lh3.googleusercontent.com/pw/AL9nZEVDLDRELqIm1amoATZqoAgqguWOH19lhjT5NUUOWWv8z1XsILbu87bDGCgr3VWNOkqQmmqXILZXtaOXLpG2MaBRSGp6G0Uk3WQrgiqiMcSgjSZQ6kN23ceYPJ4WQBUrIL4djC_N7AnTEg1-XgNmwv8=w630-h771-no?authuser=0', 'il grande giorno', 'Elio e Caterina stanno per sposarsi in una sontuosa villa sul lago di Como. Fervono i preparativi e gli ospiti cominciano ad arrivare qualche giorno prima del fatidico sì, per coordinare, fare le prove generali e trascorrere del tempo insieme. Giovanni, il padre perfezionista di Elio, non perde occasione per dirigere i lavori e polemizzare su alcune scelte dei familiari e dello staff. Giacomo, padre cagionevole di Caterina, raggiunge la villa con la moglie e cerca di tenere sotto controllo le spese che il socio in affari e futuro consuocero accumula senza pensarci troppo. L’ex moglie di Giovanni, Margherita, interpretata da Lucia Mascino, porta al matrimonio il suo nuovo compagno Aldo, un uomo estroverso e semplice che porta scompiglio come un tornado tra incidenti, pareri sinceri e frecciatine.', 10, 1, 1, 7),
(8, 'https://lh3.googleusercontent.com/pw/AL9nZEUk_eVMHeqATqEKxTIOXsjSnzCvSIErtOZkqMdBWLbH9Y6N36AZDgTmAq3hE1SStNtzglBpIANiSByATf9ZzZz7uNJEZE6peCAa4msxPb1AEtX9jZXiZP_XYV4rtjLyoaKm9GmpJvFwB80u_zeAQGQ=w540-h750-no?authuser=0', 'avatar - la via dell\'acqua', 'Ambientato più di dieci anni dopo gli eventi del primo film, Avatar: La Via dell’Acqua inizia a raccontare la storia della famiglia Sully (Jake, Neytiri e i loro figli), del pericolo che li segue, di dove sono disposti ad arrivare per tenersi al sicuro a vicenda, delle battaglie che combattono per rimanere in vita e delle tragedie che affrontano.', 7, 8, 9, 8),
(9, 'https://lh3.googleusercontent.com/pw/AL9nZEVv5VOyUtBV4KCK8jSYuh_c5LGalc4kv7yOokjYaloKY45n1zt0fn-cBVwJPQ3X3jnrolNwHgYFDNsVcQ1rN0VGFMX4D5p_s1CQPSk1lStXSopoA0d-NkgsRue3tg1A_OaO3osCBFXY57nsq_FNR5U=w680-h906-no?authuser=0', 'it', 'Derry, Maine. In una piovosa giornata del 1988, Bill Denbrough, un ragazzo balbuziente, regala a Georgie, il suo fratellino più piccolo, una barchetta di carta. Il bambino esce di casa da solo, visto che Bill è malato, e decide di far navigare la barchetta lungo le strade del quartiere, ma ad un certo punto questa cade in uno scarico fognario. Mentre tenta di recuperarla, Georgie vede spuntare dallo scarico un pagliaccio, che gli si presenta come Pennywise, il Clown Ballerino. La misteriosa entità invita il bambino ad avvicinarsi con la proposta di restituirgli la barca, per poi staccargli un braccio con un morso e trascinarlo con sé nelle fogne.', 8, 9, 10, 9),
(10, 'https://lh3.googleusercontent.com/pw/AL9nZEUbV-GSKWa79mIMLLsp_usvkNbWt0RVqFFW6EdarZ3Te8Z1Ah1JqaT88yuPk6przeivlojjI5tA8fJ1_NIQlp-U7QXdZDm-1n0V7myxQHgdNn5LWmyKstQ3QovS17H0PxfTYyy4lsOo-8m6sEHzhbmP=w680-h906-no?authuser=0', 'sergente rex', 'Megan Leavey è una giovane marine dell’unità artificieri partita per il fronte in Iraq con il suo cane Rex. Il fortissimo legame tra Megan e Rex, addestrato per affrontare i combattimenti accanto a lei, permette ai due di portare a termine più di 100 missioni salvando molte vite umane. Quando entrambi restano feriti in seguito ad una brutta esplosione, Megan è costretta a congedarsi e Rex rischia di essere soppresso. Tornata alla vita da civile, la coraggiosa caporale, farà di tutto per riunirsi all’animale. Inizierà una vera e propria campagna di sensibilizzazione… Riuscirà ad adottarlo?', 9, 10, 5, 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `genre`
--

CREATE TABLE `genre` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(7, 'Avventura'),
(6, 'Azione'),
(1, 'Commedia'),
(5, 'Drammatico'),
(9, 'Fantascienza'),
(2, 'Guerra'),
(10, 'Horror'),
(8, 'Musicale'),
(3, 'Romantico'),
(4, 'Satira');

-- --------------------------------------------------------

--
-- Struttura della tabella `similar`
--

CREATE TABLE `similar` (
  `id` int(11) UNSIGNED NOT NULL,
  `image` varchar(250) NOT NULL,
  `title` varchar(45) NOT NULL,
  `plot` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `similar`
--

INSERT INTO `similar` (`id`, `image`, `title`, `plot`) VALUES
(1, 'https://lh3.googleusercontent.com/pw/AL9nZEVjkd6pTUmaWXjifUAFHtbDp2nwfLNC8vX7yCwVpNob4K2UKUCEVNicJh5i3G0JYGVPLkhkK7Dcj31kCgN74KElOR5ZpYTq8f5lH3UidkpAyBSXayGx3GpAaH4FbkhuOmCVFq7X416kzsDnnGo1g_U=w680-h906-no?authuser=0', 'Sotto il sole di riccione', 'Mentre si trovano a passare le vacanze sulle spiagge di Riccione, alcuni ragazzi fanno amicizia tra loro e si aiutano a vicenda a gestire le relazioni romantiche e le cotte estive.'),
(2, 'https://lh3.googleusercontent.com/pw/AL9nZEXhoaGlEJ7uKF1pcgxGmf-h9rs_baepGnTQZFyXcwZYl4-1KM1dwFDa2MXTeCQPQjz-EAFezlDFDHYbu-LQtYNjIkSEOv9SQDVWHVYH8dpjlXAJfi676FqvAmq6yGrnukiK38jvs4LeeL9_zEGehgc=w680-h906-no?authuser=0', 'Cado dalle nubi', 'Checco Zalone è un giovane cantante che si esibisce nei fine settimana in una gelateria a Polignano a Mare, suo paese natale, e desidera fortemente entrare nel mondo dello spettacolo. È fidanzato con Angela, ma lei, che ha sempre detestato i suoi modi appiccicosi, lo lascia dopo sei anni e sette mesi di fidanzamento perché lo considera un fallito e perché, non avendo un lavoro stabile, non le garantisce la possibilità di formare una famiglia. Disperato e imbronciato, su consiglio dello zio lascia il paese natio per trasferirsi a Milano, con la speranza di trovare nuove opportunità. A Milano Checco viene ospitato dal cugino omosessuale Alfredo, il quale è fidanzato con il personal trainer Manolo, con cui condivide l\'appartamento. A un certo punto, in un negozio di strumenti musicali, Checco incontra casualmente Marika Mantegazza, una bella ragazza che fa volontariato presso l\'abbazia di Morimondo, aiutando ragazzi che hanno genitori criminali o con problemi di droga o alcol.'),
(3, 'https://lh3.googleusercontent.com/pw/AL9nZEWcAuRxSdyVj5ZQO13u0O0i-dmUh8u34fJJYFHR5MdGXK7XQi78QMcb0u2D8HbywDYTwFz6yiYaPLnYrZkD4AU6LBHCtSEMRdflm4XaUgDF5Z5h6hJuV_WGrbpjLvgT3doeCyE0P7L1h1JwTv0SB74=w680-h906-no?authuser=0', 'Tolo tolo', 'Pierfrancesco Zalone, detto Checco, è un giovane disoccupato pugliese che, non volendo ricevere il reddito di cittadinanza, decide di crearsi un lavoro tentando di introdurre la cultura del sushi nella sua terra d\'origine, Spinazzola, luogo in cui la gastronomia è dominata da piatti a base di carne, in cui apre un improbabile ristorante giapponese chiamato “Murgia & Sushi”. Il progetto si risolve nel più completo fallimento, in quanto ad appena un mese dall\'apertura Checco viene travolto dai debiti, con il fisco che gli pignora il locale e lo costringe alla chiusura; per sfuggire ai creditori, scappa in Africa, dove trova lavoro come cameriere in un lussuoso villaggio turistico del Kenya. Qui conosce Oumar, anch\'egli cameriere, appassionato della cultura italiana e molto più acculturato e intelligente del protagonista. Checco si innamora inoltre della giovane e bella Idjaba e fa amicizia con Doudou, un ragazzino descritto da Idjaba come suo figlio.'),
(4, 'https://lh3.googleusercontent.com/pw/AL9nZEVm6VfLKdBNT6Fy9spoInh0tZlSYJ0ZQHZvLA2hVwonraZ7boAKavl8wniofg5ovZTqjY5y36fbiBS2KnKynKcgfU4zozge4hPgdrvK3rB-Qt_QDvZJhmlDc6MXFXWAtzrkZPiGTByAWTi__cbCiCE=w680-h906-no?authuser=0', 'L\'abbinamento perfetto', 'Lola, un’ambiziosa dirigente di una ditta di vini presente nella città di Los Angeles in California, ha dovuto sopportare per molto tempo il comportamento prevaricatore dei suoi superiori; fin quando, stanca di non veder riconosciuta la sua professionalità, decide di licenziarsi. L’obiettivo è fondare una propria azienda di importazione di vini. Per farlo, deve volare nell’Australia rurale alla ricerca di un primo grosso cliente. Se questa operazione non riesce, il suo sogno è destinato al fallimento. Questo cliente, il produttore di vini Vaughn, non sembra intenzionato ad avere a che fare con la sua azienda appena fondata e non ancora decollata. Lola, determinata, si offre quindi di coprire una posizione vacante nella fattoria della famiglia Vaughn, per dimostrare la sua dedizione alla causa e il suo spirito di sacrificio.'),
(5, 'https://lh3.googleusercontent.com/pw/AL9nZEXVpIvohSRhkE7sT8zA3C4zJr3tZeHORefWip_7yZkwpjNq4k37oyVy1Vm5HsnMOkY8nDaq0xrbp9q-kaogPL40GesOYKnGKvFyN-SU4bz8St5hMfnPn0cM41UjQ7v--bqkLib9GRieib58aukzXvM=w680-h906-no?authuser=0', 'Uncharted', 'I fratelli Nathan e Sam Drake vengono catturati dalla sicurezza per aver cercato di rubare la prima mappa realizzata dopo la spedizione di Magellano. Poiché questo è il terzo reato di Sam, l\'orfanotrofio che ospita entrambi i ragazzi butta fuori Sam e lo costringe a stare altrove, lontano da Nate. Prima di andarsene, Sam promette al fratellino che tornerà a prenderlo, lasciandogli un anello appartenente al loro antenato sir Francis Drake, con la scritta \"Sic Parvis Magna\" (\"Da umili origini a grandi imprese\"). Quindici anni dopo, Nathan lavora come barista e borseggia i ricchi clienti. Victor \"Sully\" Sullivan, un cacciatore di tesori che ha lavorato con Sam alla ricerca del tesoro nascosto dall\'equipaggio di Magellano, spiega a Nathan che Sam è scomparso dopo averlo aiutato a rubare il diario di Juan Sebastian Elcano. Nathan, che ha diverse cartoline che Sam gli ha mandato nel corso degli anni, accetta di aiutare Sully a trovare suo fratello.'),
(6, 'https://lh3.googleusercontent.com/pw/AL9nZEXKhMhkuNitXip_u1ISa05o4RRF6OudZ9GwvpjaSB1L4lhh1WK1RLpSObU5Wc_dhl3FUUclGPNkqtJDR869jUTFqRAlVySPnm_LmpdVOJRJMYdUVgayiVNOWqwdNgZeqKdCOg5Wy3C8-qNiJYoEhoU=w680-h906-no?authuser=0', 'Tattiche d\'amore', 'Asli è una stilista che cura un blog chiamato “Tattiche d’amore” in cui dà consigli amorosi alle donne. Pare saperne una in più del diavolo sugli uomini. Sfidata dai suoi followers, Asli decide di mettere in pratica le sue tattiche: vuole fare innamorare un uomo e raccontare di come ci è riuscita sul blog. La sua vittima è Kerem, un pubblicitario che frequenta tante donne ma non ha mai avuto una relazione stabile. Ciò che la blogger non sa è che anche Kerem vuole “giocare” con lei: ha scommesso con alcuni colleghi di riuscire a far innamorare una donna grazie ai suoi infallibili metodi da conquistatore. Peccato che mentre entrambi i cuori di ghiaccio cercano di tendere una trappola al partner, iniziano ad innamorarsi veramente…'),
(7, 'https://lh3.googleusercontent.com/pw/AL9nZEXlR8U1UcqxosA42TKGHoVKWl4jIre6Th8CaLxzUiOAbS6TRQ9XsazFUToIzxRxWaaHMgLwKuOjz3w0jB19OtyoPXfY-Y9SKuYv90c9h3H42MIq83DusemmtZTy_oR4yOJhtRudMn88kVXydMBA0oI=w774-h906-no?authuser=0', 'Il ricco, il povero e il maggiordomo', 'Il \"ricco\" (Giacomo) è un broker spregiudicato ed elegantissimo, che vive tra il lussuoso ufficio nella nuova city di Milano e una villa favolosa alle porte della città. Il suo fido \"maggiordomo\" (Giovanni) ha una forte passione per le arti marziali, oltre che per la domestica Dolores. Il \"povero\" (Aldo) vive con la mamma in un quartiere popolare, fa il venditore abusivo e allena una squadra di calcio di bambini extracomunitari. Un incidente rocambolesco porterà i tre ad incontrarsi e, tra mille disavventure, a realizzare grandi cambiamenti!'),
(8, 'https://lh3.googleusercontent.com/pw/AL9nZEU1RpzGBrXIqoF0QDionVKQXHREjEm8ga1z3H2_yw7L0RQ0kP4vtmAPRKccEzjtDQiLrHE3nIN0rBX5HZn0iKlIH9xkwRsABOleJkWqpSWBIoSzV6RN85v4JmQPOiT-R-vOMXZhz6sSzgkajllrH3U=w710-h906-no?authuser=0', 'Interstellar', 'Interstellar è un film con ambientazione in un futuro prossimo, nel XXI secolo, cui la Terra, prima casa dell’essere umano, sta diventando di anno in anno sempre più inabitabile per quest’ultimo. Alcuni scienziati, che un tempo lavoravano per la NASA, sta studiando il wormhole per sfruttarlo nella ricerca di un pianeta abitabile e per farlo organizza delle missioni. In una di queste viene coinvolto Cooper, ex pilota che decide di lasciare i propri figli, con la consapevolezza che non li vedrà crescere e che probabilmente potrebbe non rivederli mai più. A guidarlo è la volontà di assicurare a loro e all’umanità tutta un futuro migliore. Mentre lui si trova nello spazio, Murphy la figlia minore, nel tentativo di cercare di mettersi in contatto con il padre, intraprende il suo stesso percorso. I due saranno destinati ad incontrarsi di nuovo, in un modo o nell’altro, su un pianeta o nell’altro.'),
(9, 'https://lh3.googleusercontent.com/pw/AL9nZEXNTpvzGFykHhcHV3CYG37fGr-5ukCS18LVVdD75e-B9YgRf1dDifX9SqmMb3KbcuOe4jrhV0dR6N55TY9wwbRlxMe2nFc1zaIszgLjOyWcVMLf0f0uzpUmCjyfKJeiZ1dXCqMpaYgvKqHdOpJj-ug=w320-h449-no?authuser=0', 'Nope', 'Dopo l’improvvisa morte del padre, i fratelli OJ ed Em Haywood ereditano il ranch di famiglia e cercano di mantenere viva l’attività paterna, che consiste nell’addestrare e gestire cavalli per produzioni cinematografiche e televisive. Le difficoltà economiche costringono OJ a vendere i cavalli a Jupe, direttore di un parco a tema western, ma l’improvvisa comparsa di una presenza extraterrestre si trasformerà in una ghiotta occasione per arricchirsi e risollevare le sorti dell’attività.'),
(10, 'https://lh3.googleusercontent.com/pw/AL9nZEW1DEK5NqoJga7KBi4DE_fxkQK-nPKWAFbh3ib9c6dqTwy5kMCClGQA7qD4XDV2yLGKXQRHaEHZhIVbI2XWD1JQU53c4SjhqGbADtk-sLMjQc3BuqxisD1ORafOr5K8QXPLsyzQpr1tC9Tn0oPSHuzZ=w600-h800-no?authuser=0', 'Palma: Un amore di cane', 'Palma è un pastore tedesco che viene inavvertitamente abbandonato dal suo padrone in un aeroporto. Lì incontra Nicholas, un bambino di nove anni che ha da poco perso la madre e per questo è rimasto con un padre che conosce appena. Per la precisione, è proprio il padre, pilota, colui che trova Palma in aeroporto e che permette la nascita di un grandissimo affetto tra il figlio e il cane.');

-- --------------------------------------------------------

--
-- Struttura della tabella `star`
--

CREATE TABLE `star` (
  `id` int(11) UNSIGNED NOT NULL,
  `surname` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `biography` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `star`
--

INSERT INTO `star` (`id`, `surname`, `name`, `biography`) VALUES
(1, 'Baglio', 'Cataldo', 'Cataldo Baglio, detto Aldo, è un comico, attore e regista italiano, noto per essere un componente del trio comico Aldo, Giovanni e Giacomo.'),
(2, 'Poretti', 'Giacomo', 'Giacomo Poretti, all\'anagrafe Giacomino Poretti (Villa Cortese, 26 aprile 1956), è un comico, attore e sceneggiatore italiano componente del trio comico Aldo, Giovanni e Giacomo.'),
(3, 'Medici', 'Luca Pasquale', 'Checco Zalone, pseudonimo di Luca Pasquale Medici, è un comico, showman, attore, cabarettista, imitatore, cantautore, musicista, sceneggiatore e regista italiano. I suoi cinque film hanno incassato complessivamente 220 milioni di euro e 4 di questi compaiono nella lista dei 10 film con maggiori incassi in Italia.'),
(4, 'Skovbye', 'Tiera', 'Tiera Skovbye è un\'attrice canadese. È nota per aver recitato nelle serie The Unauthorized Saved by the Bell Story, C\'era una volta e Riverdale.'),
(5, 'Holland', 'Thomas Stanley', 'Thomas Stanley \"Tom\" Holland è un attore britannico. Dopo aver interpretato il ruolo di Lucas nel film The Impossible del 2012, è diventato noto dal 2016 per il suo ruolo di Peter Parker / Spider-Man nel Marvel Cinematic Universe; nel 2017 ha ricevuto il Premio BAFTA alla miglior stella emergente, vincendo il Saturn Award per il miglior attore emergente per il film Captain America: Civil War.'),
(6, 'Char', 'Sofía Daccarett', 'Sofía Daccarett Char, conosciuta professionalmente come Sofia Carson, è un\'attrice e cantante americana. La sua prima apparizione in televisione è stata come guest star nella serie di Disney Channel Austin & Ally.'),
(7, 'Rodriguez', 'Mayte Michelle', 'Mayte Michelle Rodriguez è un\'attrice e ambientalista statunitense.'),
(8, 'Hamilton', 'Nicholas William', 'Nicholas William Hamilton è un attore australiano famoso per aver interpretato Rellian in Captain Fantastic e Henry Bowers in It e It - Capitolo due.'),
(9, 'Mara', 'Kate Rooney', 'Kate Rooney Mara è un\'attrice statunitense. È nota principalmente per il suo ruolo di Hayden McClaine nella serie antologica American Horror Story: Murder House e di Zoe Barnes nella serie TV House of Cards - Gli intrighi del potere, per il quale ha ricevuto una candidatura agli Emmy Award.'),
(10, 'Storti', 'Giovanni', 'Giovanni Storti è un comico, attore e sceneggiatore italiano componente del noto trio comico Aldo, Giovanni e Giacomo.');

-- --------------------------------------------------------

--
-- Struttura della tabella `trailer`
--

CREATE TABLE `trailer` (
  `id` int(11) UNSIGNED NOT NULL,
  `video_url` varchar(100) NOT NULL,
  `id_film` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `trailer`
--

INSERT INTO `trailer` (`id`, `video_url`, `id_film`) VALUES
(1, 'https://mega.nz/embed/KiIxgKrS#sCX5YHhmMM_ZVjV-mxrAk-t_cVZ6tPpE3PgtCrMdTLI', 1),
(3, 'https://mega.nz/embed/v3AEya5D#RLjBAbc-aj3x_c775NUbeOgT29KwRsDxSDVFmRwljVg', 2),
(6, 'https://mega.nz/embed/m24mAI5T#XhbHwEvsUiAxtJHMNv5U2LYPZUAHpbm4QB11OMGRLrM', 3),
(7, 'https://mega.nz/embed/7iBwyYRT#773A7sru4Wn7QS4yFTPyqmfwEuJXUxEu58T_Pe3GPCM', 4),
(11, 'https://mega.nz/embed/jjQGkbTY#4GjwoJZZ2vVdykioXTOWduJ5UnVyQvHh9BXYq3L1R30', 7),
(12, 'https://mega.nz/embed/HjxBHCIL#16aA6YgVjj40ddDjKLQVDGSLwPyiYR3D8QwT8a-Gv5o', 8),
(13, 'https://mega.nz/embed/L7RHgQQB#797ertYznO9t6EFefgHR2gqfAzSemFPzViCA3bM3UT0', 7),
(14, 'https://mega.nz/embed/m2AkSRoR#N3dCjcJv_-Z6ZaIwk5SbCNlx2VfDrMLrlc-IwxCD0uM', 1),
(15, 'https://mega.nz/embed/ruBhWQpb#E3sVyQvcYDUDoU3YhDv4mU8MEJzE31Wex9okI4Cu-iE', 5),
(16, 'https://mega.nz/embed/P2xxRRSa#OhPogS03Vw8J83_NIJysRVp4E78krxMS7RKdcsTsRBY', 6),
(17, 'https://mega.nz/embed/umJFkSCb#VP_wQRX9F2Njf1P4f626AZ9TfBTbgboCpPm6kPdP1v4', 9),
(18, 'https://mega.nz/embed/P6xnRbxC#AMPbkXeJn6x5PvCRwHiff3ve2FYvmR6lflte0FLpG3c', 10),
(19, 'https://mega.nz/embed/euRBRbyY#ioumNyq6cfzKZKaQHXgze3rtd5caKTaUrUDw44Ypi4A', 6);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `evidenza`
--
ALTER TABLE `evidenza`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_evidenza_rank` (`rank`) USING BTREE,
  ADD UNIQUE KEY `unique_evidenza_title` (`title`) USING BTREE,
  ADD UNIQUE KEY `unique_evidenza_fullTitle` (`fullTitle`) USING BTREE,
  ADD UNIQUE KEY `unique_evidenza_image` (`image`) USING BTREE;

--
-- Indici per le tabelle `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_film_image` (`image`) USING BTREE,
  ADD UNIQUE KEY `unique_film_title` (`title`) USING BTREE,
  ADD KEY `director` (`director`),
  ADD KEY `genre` (`genre`),
  ADD KEY `similar` (`similar`),
  ADD KEY `star` (`star`),
  ADD KEY `index_film_title` (`title`) USING BTREE;

--
-- Indici per le tabelle `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_genre_name` (`name`) USING BTREE;

--
-- Indici per le tabelle `similar`
--
ALTER TABLE `similar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_similar_image` (`image`) USING BTREE,
  ADD UNIQUE KEY `unique_similar_title` (`title`) USING BTREE;

--
-- Indici per le tabelle `star`
--
ALTER TABLE `star`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `trailer`
--
ALTER TABLE `trailer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_trailer_video_url` (`video_url`) USING BTREE,
  ADD KEY `id_film` (`id_film`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `director`
--
ALTER TABLE `director`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `similar`
--
ALTER TABLE `similar`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `star`
--
ALTER TABLE `star`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `trailer`
--
ALTER TABLE `trailer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `director` FOREIGN KEY (`director`) REFERENCES `director` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `genre` FOREIGN KEY (`genre`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `similar` FOREIGN KEY (`similar`) REFERENCES `similar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `star` FOREIGN KEY (`star`) REFERENCES `star` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `trailer`
--
ALTER TABLE `trailer`
  ADD CONSTRAINT `id_film` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
