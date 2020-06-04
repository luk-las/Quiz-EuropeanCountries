-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Wersja serwera: 10.1.36-MariaDB
-- Wersja PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `europeancountries`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `questions`
--

CREATE TABLE `questions` (
  `id` int(10) NOT NULL,
  `Country` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Q1` text COLLATE utf8_polish_ci NOT NULL,
  `Q2` text COLLATE utf8_polish_ci NOT NULL,
  `Q3` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `questions`
--

INSERT INTO `questions` (`id`, `Country`, `Q1`, `Q2`, `Q3`) VALUES
(0, 'Albania', 'Stolicą jest Tirana', 'Flaga i herb składają się z dwugłowego orła', 'Najdłuższa rzeka to Drin'),
(1, 'Andora', 'Drugim największym miastem jest Escaldes-Engordany', 'Językiem urzędowym jest kataloński', 'Graniczy z Francją i Hiszpanią'),
(2, 'Austria', 'W tym kraju jest miasto Salzburg', 'Z tego kraju pochodzi Wolgang Amadeusz Mozart', 'Najwyższy szczyt to Grossglockner'),
(3, 'Belgia', 'W tym kraju jest miasto Genk', 'Główne grupy etniczne to Flamandowie i Walonowie', 'Słynie z piwa, czekolady i frytek(z majonezem)'),
(4, 'Białoruś', 'W tym kraju jest miasto Borysów', 'Największe w Europie państwo śródlądowe', 'Za dodatkową opłatą można szybciej załatwić sprawy urzędowe'),
(5, 'Bośnia i Hercegowina', 'Stolicą jest Sarajewo', 'Oficjalna waluta to marka zamiena', 'Posiada dostęp do Morza Adriatyckiego na 20-kilometrowym odcinku'),
(6, 'Bułgaria', 'W tym kraju znajduję się miasto Płowdiw', 'Graniczy m.in. z Rumunią i Turcją', 'Domena internetowa to .bg'),
(7, 'Chorwacja', 'Stolicą jest Zagrzeb', 'Wstąpili do Unii Europejskiej w 2013r', 'Wicemistrz świata 2018 w piłce nożnej'),
(8, 'Czarnogóra', 'Stolicą jest Podgorica', 'Państwo niepodległe od 2007r', 'Kraj wstąpił do NATO w 2017r'),
(9, 'Czechy', 'W tym państwie znajduję się kraina historyczna Morawy', 'Słynie z samochodów Skody', 'Słynie z piwa pilsner'),
(10, 'Dania', 'W skład tego kraju wchodzi formalnie Grenlandia', 'Najmniejsze państwo nordyckie', 'Królową jest Małgorzata II'),
(11, 'Estonia', 'Stolicą jest Tallin', 'Najbliżsi krewni Finów', 'Liczba klientów sieci komórkowych jest większa niż ilość obywateli'),
(12, 'Finlandia', 'W tym kraju znajduję się Laponia', 'Z tego kraju są muminki', 'Z tym krajem kojarzy się Nokia'),
(13, 'Francja', 'W tym kraju jest miasto Guingamp', 'W tym kraju znajduję się port lotniczy im. Charlesa de Gaulle', 'Najdłuższą granicę posiada z Brazylią'),
(14, 'Grecja', 'W tym kraju znajdują się Saloniki', 'Kolebka cywilizacji zachodniej', 'Do 2013 kraj rozwinięty, obecnie kraj rozwijający się'),
(15, 'Hiszpania', 'Posiada terytoria w północnej Afryce', 'Królem jest Filip VI', 'Światowy lider w zakresie dawstwa i transplantacji organów'),
(16, 'Holandia', 'Posiada terytoria na Karaibach', '1/4 powierzchni znajduję się na terenie depresji', 'Swoją siedzibę ma Międzynarodowy Trybunał Sprawiedliwości'),
(17, 'Irlandia', '90% szkół należy do Kościoła Katolickiego', 'W tym kraju znajduję się miejcowość o nazwie Muckanaghederdauhaulia', 'Flaga składa się z 3 pionowych pasów: zielonego, białego i pomarańczowego'),
(18, 'Islandia', 'Leży na granicy Oceanów Arktycznego i Atlantyckiego', 'Jedyny członek NATO nieposiadający armii', 'Z tym krajem kojarzą się elfy'),
(19, 'Kazachstan', 'Tylko 12% powierzchni znajduję się w Europie', 'Największy światowy producent uranu', 'Ostatnia z republik ZSRR, która proklamowała niepodległość'),
(20, 'Liechtenstein', 'Graniczy wyłącznie z Austrią i Szwajcarią', 'Największy na świecie producent sztucznych szczęk', 'Kraj nie posiada armi, bezpieczeństwo wojskowe zapewnia Szwajcaria'),
(21, 'Litwa', 'W tym kraju jest miasto Kłajpeda', 'Słynie z wody Vytautas', 'W XV w. największe państwo Europy, obecnie prawie 5 razy mniejsze od Polski'),
(22, 'Luksemburg', 'Ojczysta ludność stanowi tylko 52% mieszkańców', 'Najmniejszy kraj Beneluksu', 'Połowa mieszkańców pracuję za granicą'),
(23, 'Łotwa', 'W tym kraju jest miasto Lipawa', '30% mieszkańców stanowią Rosjanie', 'Najpopularniejszy trunek to Czarny Balsam'),
(24, 'Macedonia Północna', 'Państwo, które jako ostatnie zmieniło swoją nazwę', 'Najdłuższa rzeka to Wardar', 'Stolicą jest Skopje'),
(25, 'Malta', 'Wyspiarskie miasto-państwo', 'Znajdują się tam najstarsze budynki na świecie', 'Jedyny kraj praktycznie bez rzek i gór'),
(26, 'Mołdawia', 'Najbiedniejszy kraj Europy', 'Ich język jest dialektem języka rumuńskiego', 'Na terenie tego kraju znajduję się nieuznawane państwo Naddniestrze'),
(27, 'Monako', 'Powierzchnia kraju wynosi zaledwie 2,02 km2', 'Jedyny klub piłkarski gra w lidze francuskiej', 'Znajduję się tam kasyno Monte Carlo'),
(28, 'Niemcy', 'Najdłuższa rzeka to Ren', 'Kraj słynie z marek samochodowych, m.in. z BMW', 'Mieszka tam blisko 3 mln osób pochodzenia tureckiego'),
(29, 'Norwegia', 'Słynie z fiordów', '99% energii pochodzi z elektrowni wodnych', 'Zwycięzca klasyfikacji medalowej Zimowych Igrzysk Olimpijskich 2018'),
(30, 'Polska', 'W latach 1795-1918 nie istniał na mapach', 'W tym krają znajdują się najstarsze góry swiata', 'Do 1991r. znajdowała się tam najwyższa konstrukcja budowlana świata'),
(31, 'Portugalia', 'Najbardziej wysunięte na zachód państwo Europy', 'Do tego kraju należą Azory', 'Językiem tego kraju jako ojczystym posługuje się 210 milionów ludzi na świecie'),
(32, 'Rosja', 'Nielegalnie okupuje tereny na Ukrainie', 'Najwyższy szczyt to Elbrus', 'Wg swojej konstytucji składa się z 85 podmiotów federalnych'),
(33, 'Rumunia', 'Na terenie tego kraju znajduję się kraina historyczna Wołoszczyzna', 'W latach 1974-1989 prezydentem był Nicolae Ceausescu', 'W stolicy znajduję się Pałac Parlamentu - jedna z największych budowli świata'),
(34, 'San Marino', 'Jedyna pozostałość po włoskich miastach-państwach', 'Najwyższym szczytem jest Monte Tatino', 'Mieszka tam 33 tys. ludzi'),
(35, 'Serbia', 'Spadkobierca Jugosławii', 'Urodził się tam Nicola Tesla', 'Znajduję się tam Kosowo - kraj nieuznawany przez dużą część państw świata'),
(36, 'Słowacja', 'W tym kraju znajduję się miasto Koszyce', 'Współdzielą z nami Tatry', 'Stolica kraju jest oddalona od Wiednia tylko o 60km'),
(37, 'Słowenia', 'Stolicą jest Lublana', 'Mistrzowie Europy w koszykówce 2017', 'Znajduje się tam Planica'),
(38, 'Szwajcaria', 'Kraj podzielony na kantony, istnieją 4 języki urzędowe', 'Kojarzony z neutralnością i demokracją bezpośrednią', 'w 1990r. kobiety uzyskały pełne prawa wyborcze na terenie całego kraju'),
(39, 'Szwecja', 'Najludniejszy kraj skandynawski', 'Królem jest Karol XVI Gustaw', 'Zajmuję powierzchnie 450 tys. km2'),
(40, 'Turcja', 'Stolica znajduję się na dwóch kontynentach', 'Druga co do wielkości armia w NATO', 'Spadkobierca Imperium Osmańskiego'),
(41, 'Ukraina', 'W latach 2004/2005 odbyła się tam Pomarańczowa rewolucja', 'Z tego kraju pochodzą bracia Kliczko', 'Stanowią obecnie największą grupę obcokrajowców w Polsce'),
(42, 'Watykan', 'Najmniejsze państwo świata', 'Językami urzędowymi są włoski i łaciński', 'W tym kraju statystyczny mieszkaniec wypija najwięcej wina'),
(43, 'Węgry', 'Od 2010r. premierem jest Viktor Orban', 'W tym kraju urodził się George Soros', 'Znajduję się tam jezioro Balaton'),
(44, 'Wielka Brytania', 'Urodził się tam Isaac Newton', 'Jedyny kraj w Europie bez zatwierdzonej konstytucji', 'Słynie z zamiłowania do herbaty'),
(45, 'Włochy', 'Znajdują się tam 2 państwa enklawy', 'W tym kraju jest miasto Katania', 'Znajduje się tam najstarszy uniwersytet świata z 1088r.');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
