-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Lut 2022, 15:47
-- Wersja serwera: 10.4.19-MariaDB
-- Wersja PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `simple_english`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `conditional_sentences`
--

CREATE TABLE `conditional_sentences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `degree` int(10) UNSIGNED NOT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `conditional_sentences`
--

INSERT INTO `conditional_sentences` (`id`, `degree`, `condition`, `result`) VALUES
(1, 1, 'If + Present Simple', 'Present Simple'),
(2, 1, 'If you watch too much TV', 'You waste your time'),
(3, 2, 'If + Present Simple', 'will + bezokolicznik'),
(4, 2, 'If she gets the Job', 'she will earn a good salary'),
(5, 3, 'If + Present Simple', 'would + bezokolicznik'),
(6, 3, 'If I had a car', 'I would give you a lift');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `context_verbs`
--

CREATE TABLE `context_verbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `context_verbs`
--

INSERT INTO `context_verbs` (`id`, `text`) VALUES
(1, 'THINK'),
(2, 'HAVE'),
(3, 'BE'),
(4, 'TASTE'),
(5, 'SMELL'),
(6, 'FEEL'),
(7, 'SEE');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `context_verbs_examples`
--

CREATE TABLE `context_verbs_examples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verb_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `context_verbs_examples`
--

INSERT INTO `context_verbs_examples` (`id`, `text`, `verb_id`) VALUES
(1, 'myśleć, sądzić, mieć jakąś opinię - statyczny. I think this car is too expensive', 1),
(2, 'zastanawiać się, rozważać - nie statyczny. I’m thinking of buying a new car', 1),
(3, 'mieć, posiadać - statyczny. We have two dogs and a cat', 2),
(4, 'doświadczać oraz w wyrażeniach typu “have drink”, “have a shower”, “have a rest” itd. - nie statyczny. Matt is having a nap at the moment', 2),
(5, 'być - statyczny. Bill is very polite', 3),
(6, 'zachowywać się w danym momencie - nie statyczny. Stop that! You’re being very rude!', 3),
(7, 'smakować, mieć jakiś smak - statyczny. This cake tastes delicious!', 4),
(8, 'próbować, jaki coś ma smak - nie statyczny. He’s tasting different cakes to decide which one he likes best', 4),
(9, 'pachnieć, śmierdzieć, wydzielać zapach - statyczny. This food smells awful!', 5),
(10, 'wąchać - nie statyczny. Why are you smelling my t-shirt?!', 5),
(11, 'być jakimś w dotyku - statyczny. I love this fabric! It feels so soft', 6),
(12, 'czuć (się), wyczuwać dotykiem - nie statyczny. I’m feeling my way through the darkness. There’s no light in this room', 6),
(13, 'widzieć - statyczny. I see some people in our driveway. Who are they?', 7),
(14, 'mieć umówione spotkanie z kimś - nie statyczny. I’m seeing my boss this Friday', 7);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `demonstrative_pronouns`
--

CREATE TABLE `demonstrative_pronouns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plural` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `demonstrative_pronouns`
--

INSERT INTO `demonstrative_pronouns` (`id`, `text`, `plural`) VALUES
(1, 'This(ten)', 0),
(2, 'That(to)', 0),
(3, 'These(te)', 1),
(4, 'Those(tych)', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `interrogative_pronouns`
--

CREATE TABLE `interrogative_pronouns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `interrogative_pronouns`
--

INSERT INTO `interrogative_pronouns` (`id`, `text`) VALUES
(1, 'What? (co?)'),
(2, 'Who? (kto?)'),
(3, 'Whose? (którego?)'),
(4, 'Which? (który?)'),
(5, 'Where? (gdzie?)'),
(6, 'When? (kiedy?)'),
(7, 'Why? (dlaczego?)'),
(8, 'How? (jak?)'),
(9, 'How long? (jak długo?)'),
(10, 'How often? (jak często?)'),
(11, 'How far? (jak daleko?)'),
(12, 'How much? (Ile?(policzalne))'),
(13, 'How many?(ile?(niepoliczalne))');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `irregular_verbs`
--

CREATE TABLE `irregular_verbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `polish` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_past_simple` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_past_participle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `irregular_verbs`
--

INSERT INTO `irregular_verbs` (`id`, `polish`, `english`, `english_past_simple`, `english_past_participle`) VALUES
(1, 'być', 'be', 'was/were', 'been'),
(2, 'stać się', 'become', 'became', 'became'),
(3, 'zacząć', 'begin', 'began', 'begun'),
(4, 'złamać', 'break', 'broke', 'broken'),
(5, 'przynieść', 'bring', 'brought', 'brought'),
(6, 'budować', 'build', 'built', 'built'),
(7, 'spalić', 'burn', 'burned/burnt', 'burned/burnt'),
(8, 'kupować', 'buy', 'bought', 'bought'),
(9, 'złapać', 'catch', 'caught', 'caught'),
(10, 'wybrać', 'choose', 'chose', 'chosen'),
(11, 'przyjść', 'come', 'came', 'come'),
(12, 'kosztować', 'cost', 'cost', 'cost'),
(13, 'ciąć', 'cut', 'cut', 'cut'),
(14, 'kopać', 'dig', 'dug', 'dug'),
(15, 'zrobić', 'do', 'did', 'done'),
(16, 'rysować', 'draw', 'drew', 'drawn'),
(17, 'śnić/marzyć', 'dream', 'dreamed/dreamt', 'dreamed/dreamt'),
(18, 'pić', 'drink', 'drank', 'drunk'),
(19, 'prowadzić(samochód)', 'drive', 'drove', 'driven'),
(20, 'jeść', 'eat', 'ate', 'eaten'),
(21, 'upaść', 'fall', 'fell', 'fallen'),
(22, 'karmić', 'feed', 'fed', 'fed'),
(23, 'czuć', 'feel', 'felt', 'felt'),
(24, 'walczyć', 'fight', 'fought', 'fought'),
(25, 'znaleźć', 'find', 'found', 'found'),
(26, 'lecieć', 'fly', 'flew', 'flown'),
(27, 'zapomnieć', 'forget', 'forgot', 'forgotten'),
(28, 'wybaczyć', 'forgive', 'forgave', 'forgiven'),
(29, 'dostać', 'get', 'got', 'got'),
(30, 'dać', 'give', 'gave', 'given'),
(31, 'iść', 'go', 'went', 'gone'),
(32, 'rosnąć', 'grow', 'grew', 'grown'),
(33, 'mieć', 'have', 'had', 'had'),
(34, 'słyszeć', 'hear', 'heard', 'heard'),
(35, 'chować', 'hide', 'hid', 'hidden'),
(36, 'uderzać', 'hit', 'hit', 'hit'),
(37, 'trzymać', 'hold', 'held', 'held'),
(38, 'zranić', 'hurt', 'hurt', 'hurt'),
(39, 'trzymać', 'keep', 'kept', 'kept'),
(40, 'wiedzieć', 'know', 'knew', 'known'),
(41, 'prowdzić', 'lead', 'led', 'led'),
(42, 'uczyć się', 'learn', 'learned/learnt', 'learned/learnt'),
(43, 'opuścić', 'leave', 'left', 'left'),
(44, 'pożyczyć(komuś)', 'lend', 'lent', 'lent'),
(45, 'pozwolić', 'let', 'let', 'let'),
(46, 'leżeć', 'lie', 'lay', 'lain'),
(47, 'zapalać', 'light', 'lit', 'lit'),
(48, 'zgubić', 'lose', 'lost', 'lost'),
(49, 'zrobić', 'make', 'made', 'made'),
(50, 'znaczyć', 'mean', 'meant', 'meant'),
(51, 'spotkać', 'meet', 'met', 'met'),
(52, 'płacić', 'pay', 'paid', 'paid'),
(53, 'położyć', 'put', 'put', 'put'),
(54, 'czytać', 'read', 'read', 'read'),
(55, 'jeździć na', 'ride', 'rode', 'ridden'),
(56, 'dzwonić', 'ring', 'rang', 'rung'),
(57, 'biegać', 'run', 'ran', 'run'),
(58, 'powiedzieć', 'say', 'said', 'said'),
(59, 'zobaczyć', 'see', 'saw', 'seen'),
(60, 'sprzedać', 'sell', 'sold', 'sold'),
(61, 'wysłać', 'send', 'sent', 'sent'),
(62, 'ustawić', 'set', 'set', 'set'),
(63, 'świecić', 'shine', 'shone', 'shone'),
(64, 'pokazać', 'show', 'showed', 'shown'),
(65, 'zamknąć', 'shut', 'shut', 'shut'),
(66, 'śpiewać', 'sing', 'sang', 'sung'),
(67, 'siedzieć', 'sit', 'sat', 'sat'),
(68, 'spać', 'sleep', 'slept', 'slept'),
(69, 'pachanieć/wąchać', 'smell', 'smelled/smelt', 'smelled/smelt'),
(70, '', '', '', ''),
(71, 'mówić', 'speak', 'spoke', 'spoken'),
(72, 'spędzać', 'spend', 'spent', 'spent'),
(73, 'rozlać', 'spill', 'spilled/split', 'spilled/split'),
(74, 'stać', 'stand', 'stood', 'stood'),
(75, 'ukraść', 'steal', 'stole', 'stolen'),
(76, 'płynąć', 'swim', 'swam', 'swum'),
(77, 'uczyć', 'teach', 'taught', 'taught'),
(78, 'podrzeć', 'tear', 'tore', 'torn'),
(79, 'powiedzieć', 'tell', 'told', 'told'),
(80, 'myśleć', 'think', 'thought', 'thought'),
(81, 'rzucać', 'throw', 'threw', 'thrown'),
(82, 'rozumieć', 'understand', 'understood', 'understood'),
(83, 'obudzić się', 'wake', 'woke', 'woken'),
(84, 'nosić', 'wear', 'wore', 'worn'),
(85, 'wygrać', 'win', 'won', 'won'),
(86, 'pisać', 'write', 'wrote', 'written');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_22_215724_create_times_images_table', 1),
(6, '2022_01_22_232200_create_phrases_categories_table', 1),
(7, '2022_01_22_232410_create_phrases_table', 1),
(8, '2022_01_23_220508_create_quiz_questions_table', 1),
(9, '2022_01_23_220631_create_quiz_answers_table', 1),
(10, '2022_01_24_145909_create_static_verbs_table', 1),
(11, '2022_01_24_151108_create_context_verbs_table', 1),
(12, '2022_01_24_151157_create_context_verbs_examples_table', 1),
(13, '2022_01_24_152310_create_personal_pronouns_table', 1),
(14, '2022_01_24_154026_create_interrogative_pronouns_table', 1),
(15, '2022_01_24_154741_create_relative_pronouns_table', 1),
(16, '2022_01_24_155257_create_mutual_pronouns_table', 1),
(17, '2022_01_24_155634_create_demonstrative_pronouns_table', 1),
(18, '2022_01_24_160053_create_numerals_table', 1),
(19, '2022_01_24_163210_create_numerals_examples_table', 1),
(20, '2022_01_24_163533_create_conditional_sentences_table', 1),
(21, '2022_01_24_165749_create_irregular_verbs_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mutual_pronouns`
--

CREATE TABLE `mutual_pronouns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `mutual_pronouns`
--

INSERT INTO `mutual_pronouns` (`id`, `text`) VALUES
(1, 'Each other(wzajemnie)'),
(2, 'One another(nawzajem)');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `numerals`
--

CREATE TABLE `numerals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cardinal_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordinal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `numerals`
--

INSERT INTO `numerals` (`id`, `cardinal_number`, `ordinal`) VALUES
(1, '1-one', 'First'),
(2, '2-two', 'Second'),
(3, '3-three', 'Third'),
(4, '4-four', 'Fourth'),
(5, '5-five', 'Fifth'),
(6, '6-six', 'Sixth'),
(7, '7-seven', 'Seventh'),
(8, '8-eight', 'Eighth'),
(9, '9-nine', 'Ninth'),
(10, '10-ten', 'Tenth'),
(11, '11-eleven', 'Eleventh'),
(12, '12-twelve', 'Twelfth'),
(13, '13-thirteen', 'Thirteenth'),
(14, '14-fourteen', 'Fourteenth'),
(15, '15-fifteen', 'Fifteenth'),
(16, '16-sixteen', 'Sixteenth'),
(17, '17-seventeen', 'Seventeenth'),
(18, '18-eighteen', 'Eighteenth'),
(19, '19-nineteen', 'Nineteenth'),
(20, '20-twenty', 'Twentieth'),
(21, '21-twenty-one', 'Twenty-first'),
(22, '22-twenty-two', 'Twenty-second'),
(23, '23-twenty-three', 'Twenty-third'),
(24, '24-twenty-four', 'Twenty-fourth'),
(25, '25-twenty-five', 'Twenty-fifth'),
(26, '26-twenty-six', 'Twenty-sixth'),
(27, '27-twenty-seven', 'Twenty-seventh'),
(28, '28-twenty-eight', 'Twenty-eighth'),
(29, '29-twenty-nine', 'Twenty-ninth'),
(30, '30-thirty', 'Thirtieth'),
(31, '40-fourty', 'Fortieth'),
(32, '50-fifty', 'Fiftieth'),
(33, '60-sixty', 'Sixtieth'),
(34, '70-seventy', 'Seventieth'),
(35, '80-eighty', 'Eightieth'),
(36, '80-eighty', 'Eightieth'),
(37, '90-ninety', 'Ninetieth'),
(38, '100-one/a hundred', 'Hundredth'),
(39, '101-one/a hundred and one', 'Hundred and first');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `numerals_examples`
--

CREATE TABLE `numerals_examples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `numerals_examples`
--

INSERT INTO `numerals_examples` (`id`, `text`) VALUES
(1, '1000 – one/a thousand'),
(2, '4666 – four thousand, six hundred and sixty-six'),
(3, '56223 – fifty-six thousand, two hundred and twenty-three'),
(4, '725000 – seven hundred and twenty-five thousand'),
(5, '1000000 – one/a million');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personal_pronouns`
--

CREATE TABLE `personal_pronouns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `personal_pronoun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_object_pronoun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `possessive_adjective` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `possessive_adjective_without_adjective` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reflexive_pronoun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `personal_pronouns`
--

INSERT INTO `personal_pronouns` (`id`, `personal_pronoun`, `personal_object_pronoun`, `possessive_adjective`, `possessive_adjective_without_adjective`, `reflexive_pronoun`) VALUES
(1, 'I(ja)', 'Me(mnie)', 'My(Moje)', 'Mine', 'Myself(Ja sam)'),
(2, 'You(Ty)', 'You(Tobie)', 'Your(Twoje)', 'Yours', 'Yourself(Ty sam)'),
(3, 'He(On)', 'Him(Jemu)', 'His(Jego)', 'His', 'Himself(On sam)'),
(4, 'She(Ona)', 'Her(Jej)', 'Her(Jej)', 'Hers', 'Herself(Ona sama)'),
(5, 'It(To)', 'It(Temu)', 'Its(Tego)', 'Its', 'Itself(samo w sobie)'),
(6, 'We(My)', 'Us(Nam)', 'Our(Nasze)', 'Ours', 'Ourselves(My sami)'),
(7, 'You(Wy)', 'You(Wam)', 'Your(Wasze)', 'Tours', 'Yourselves(Wy sami)'),
(8, 'They(Oni)', 'Them(Im)', 'Their(Ich)', 'Thiers', 'Themselves(Oni sami/One same)');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phrases`
--

CREATE TABLE `phrases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `polish` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `phrases`
--

INSERT INTO `phrases` (`id`, `category_id`, `image`, `polish`, `english`) VALUES
(1, 1, 'Images/Phrases/Travel/adventure-1850912_1920.jpg', 'Poproszę pański/pani paszport/ bilet', 'Can I see your passport/ticket?'),
(2, 1, 'Images/Phrases/Travel/aircraft-1499171_1920.jpg', 'Dokąd Pan/Pani leci?', 'Where are you flying/going to?'),
(3, 1, 'Images/Phrases/Travel/airplane-5216583_1920.jpg', 'Czy ma pan/pani coś do oclenia?', 'Do you wish to declare any goods to customs?'),
(4, 1, 'Images/Phrases/Travel/airport-1822133_1920.jpg', 'Czy ma pan bagaż?', 'Do you have any luggage?'),
(5, 1, 'Images/Phrases/Travel/airport-4120835_1920.jpg', 'Proszę otworzyć torbę', 'Please open your bag'),
(6, 1, 'Images/Phrases/Travel/arches-national-park-1846759_1920.jpg', 'Jaki ma pan/pani numer miejsca?', 'What is your seat number?'),
(7, 1, 'Images/Phrases/Travel/automobile-3091234_1920.jpg', 'Mam jedną walizkę', 'I have one suitcase'),
(8, 1, 'Images/Phrases/Travel/car-6603726_1920.jpg', 'O ile jest opóźniony lot?', 'How long is the flight delayed?'),
(9, 1, 'Images/Phrases/Travel/cliff-1846233_1920.jpg', 'Mój bagaż został zgubiony/ skradziony', 'My luggage is lost / has been stolen'),
(10, 1, 'Images/Phrases/Travel/cruise-1578528_1920.jpg', 'Gdzie jest przystanek  taksówek?', 'Where is the taxi rank?'),
(11, 1, 'Images/Phrases/Travel/dog-1850465_1920.jpg', 'Proszę zawieźć mnie pod ten adres', 'Please take me to this address'),
(12, 1, 'Images/Phrases/Travel/fantasy-3502188_1920.jpg', 'Gdzie jest kasa biletowa / automat z biletami?', 'Where is the ticket office / ticket machine?'),
(13, 1, 'Images/Phrases/Travel/globe-trotter-1828079_1920.jpg', 'Gdzie można kupić bilety?', 'Where can I buy tickets?'),
(14, 1, 'Images/Phrases/Travel/havana-2151324_1920.jpg', 'O której odjeżdża … do Londynu?', 'What time does the ... to London leave?'),
(15, 1, 'Images/Phrases/Travel/landscape-2990060_1920.jpg', 'Poproszę jeden/dwa bilet(y)', 'Can I have one/two tickets?'),
(16, 1, 'Images/Phrases/Travel/luggage-1149289_1920.jpg', 'Ile kosztuje bilet do … ?', 'How much is a ticket to … ?'),
(17, 1, 'Images/Phrases/Travel/notepad-1130743_1920.jpg', 'Skąd odjeżdża/odpływa pociąg/ autobus/prom?', 'Where does the train/coach/bus leave from?'),
(18, 1, 'Images/Phrases/Travel/people-4817872_1920.jpg', 'Dokąd chce pan/pani jechać?', 'Where would you like to go?'),
(19, 1, 'Images/Phrases/Travel/photographer-407068_1920.jpg', 'Czy dojadę tędy do… ?', 'Is this the way to … ?'),
(20, 1, 'Images/Phrases/Travel/saint-peters-basilica-2040718_1920.jpg', 'Jak dostanę się do?', 'How can i Get to the….?'),
(21, 1, 'Images/Phrases/Travel/summer-2880261_1920.jpg', 'Gdzie jest najbliższa stacja benzynowa?', 'Where is the petrol station?'),
(22, 1, 'Images/Phrases/Travel/travel-5219496_1920.jpg', 'Czy są wolne miejsca?', 'Are there any places available?'),
(23, 1, 'Images/Phrases/Travel/woman-2711279_1920.jpg', 'Ile kosztuje godzina postoju?', 'How much will it cost to park for an hour?'),
(24, 1, 'Images/Phrases/Travel/adventure-1850912_1920.jpg', 'Czy mogę tu zaparkować?', 'Can I park here?'),
(25, 2, 'Images/Phrases/Shopping/athens-2476281_1920.jpg', 'Czy mogę w czymś pomóc?', 'Can I help you?'),
(26, 2, 'Images/Phrases/Shopping/bags-4543999_1920.jpg', 'Chcę kupić…', 'I want to buy…'),
(27, 2, 'Images/Phrases/Shopping/beautiful-people-3954533_1920.jpg', 'Czy może mi pan pokazać… ?', 'Can you show me… ?'),
(28, 2, 'Images/Phrases/Shopping/business-1850085_1920.jpg', 'Czy sprzedajecie… ?', 'Do you sell… ?'),
(29, 2, 'Images/Phrases/Shopping/christmas-234105_1920.jpg', 'Przykro mi, nie mamy ich w sprzedaży', 'Sorry, we don’t sell them'),
(30, 2, 'Images/Phrases/Shopping/credit-card-1730085_1920.jpg', 'Gdzie znajdę… ?', 'Where can I find… ?'),
(31, 2, 'Images/Phrases/Shopping/credit-card-5547852_1920.jpg', 'Co mogę podać?', 'What can I get for you?'),
(32, 2, 'Images/Phrases/Shopping/market-4749215_1920.jpg', 'Szukam niebieskiej koszuli', 'I’m looking for a blue shirt'),
(33, 2, 'Images/Phrases/Shopping/money-256319_1920.jpg', 'Dziękuję, tylko się rozglądam', 'I’m just looking, thanks'),
(34, 2, 'Images/Phrases/Shopping/myeongdong-326137_1920.jpg', 'Ile to kosztuje?', 'How much is it?'),
(35, 2, 'Images/Phrases/Shopping/people-2594681_1920.jpg', 'Do której jesteście czynni?', 'What time do you close?'),
(36, 2, 'Images/Phrases/Shopping/shop-791582_1920.jpg', 'Gdzie jest przymierzalnia?', 'Where is the changing room?'),
(37, 2, 'Images/Phrases/Shopping/shopping-879498_1920.jpg', 'To jest za małe/za duże', 'It is too small/too big'),
(38, 2, 'Images/Phrases/Shopping/shopping-1165437_1920.jpg', 'Czy mógłbyś mi podać więcej szczegółów?', '   Could you give me some more details?'),
(39, 2, 'Images/Phrases/Shopping/shopping-1761233_1920.jpg', 'Wezmę to', 'I will take it'),
(40, 2, 'Images/Phrases/Shopping/shopping-2735735_1920.jpg', 'Ile płacę?', 'How much is that?'),
(41, 2, 'Images/Phrases/Shopping/shopping-mall-906721_1920.jpg', 'Jak chcesz zapłacić?', 'How would you like to pay?'),
(42, 2, 'Images/Phrases/Shopping/supermarket-5202138_1920.jpg', 'Czy mogę zapłacić kartą?', 'Can I pay by credit card?'),
(43, 2, 'Images/Phrases/Shopping/supermarket-6594694_1920.jpg', 'Zapłacę gotówką', 'I will pay in cash'),
(44, 2, 'Images/Phrases/Shopping/tomatoes-4050245_1920.jpg', 'Czy stoi pani w kolejce?', 'Are you in queue?'),
(45, 2, 'Images/Phrases/Shopping/woman-3040029_1920.jpg', 'Czy chce pan torebkę?', 'Would you like a bag?'),
(46, 3, 'Images/Phrases/Accommodation/apartment-3612030_1920.jpg', 'Gdzie znajdę pokój do wynajęcia?', 'Where can I find a room to rent?'),
(47, 3, 'Images/Phrases/Accommodation/croatia-505519_1920.jpg', 'Jakie są tam ceny?', 'What are the prices like there?'),
(48, 3, 'Images/Phrases/Accommodation/furniture-3804536_1920.jpg', 'Czy mają Państwo wolne pokoje?', 'Do you have any rooms available?'),
(49, 3, 'Images/Phrases/Accommodation/holiday-4507678_1920.jpg', 'Ile kosztuje pokój ___-osobowy?', 'How much is a room for ___ people?'),
(50, 3, 'Images/Phrases/Accommodation/hotel-939502_1920.jpg', 'Chciałbym/Chciałabym zarezerwować pokój dwuosobowy', 'I would like to book a double room'),
(51, 3, 'Images/Phrases/Accommodation/hotel-951594_1920.jpg', 'Chciałbym/Chciałabym zarezerwować pokój z podwójnym łóżkiem', 'I would like to book a room with a double Bed'),
(52, 3, 'Images/Phrases/Accommodation/hotel-1330850_1920.jpg', 'Chciałbym/Chciałabym zarezerwować pokój na ___ dzień/dni / tydzień/tygodni', 'I would like to book a room for ___ night(s)/week(s)'),
(53, 3, 'Images/Phrases/Accommodation/hotel-majestic-1157570_1920.jpg', 'Czy śniadanie jest wliczone w cenę?', 'Is breakfast included?'),
(54, 3, 'Images/Phrases/Accommodation/hotel-room-1261900_1920.jpg', 'Czy ręczniki/pościel są wliczone w cenę?', 'Are towels/bed linen included?'),
(55, 3, 'Images/Phrases/Accommodation/indoors-4234071_1920.jpg', 'Czy jest do dyspozycji garaż/parking?', 'Do you have a parking garage/lot?'),
(56, 3, 'Images/Phrases/Accommodation/interior-3475656_1920.jpg', 'Przepraszam, gdzie jest pokój numer ___?', 'Where can I find room number ___?'),
(57, 3, 'Images/Phrases/Accommodation/landscape-2016308_1920.jpg', 'Czy mogę skorzystać tu z internetu?', 'Can I use the internet here?'),
(58, 3, 'Images/Phrases/Accommodation/los-angeles-1629161_1920.jpg', 'Proszę o posprzątanie mojego pokoju', 'Would you please clean my room?'),
(59, 3, 'Images/Phrases/Accommodation/nagold-3793678_1920.jpg', 'Chciał(a)bym się wymeldować', 'I would like to check out, please'),
(60, 3, 'Images/Phrases/Accommodation/people-2593251_1920.jpg', 'Bardzo nam się tutaj podobało', 'We really enjoyed our stay here'),
(61, 3, 'Images/Phrases/Accommodation/prague-398776_1920.jpg', 'Klimatyzacja nie działa', 'The air conditioning does not work'),
(62, 3, 'Images/Phrases/Accommodation/receptionist-5975961_1920.jpg', 'Okno się nie otwiera', 'The window does not open'),
(63, 4, 'Images/Phrases/Restaurant/adult-2178440_1920.jpg', 'Czy jest tu jakaś regionalna/niedroga restauracja?', 'Do you know any local/inexpensive restaurant nearby?'),
(64, 4, 'Images/Phrases/Restaurant/aperitif-4113117_1920.jpg', 'Poprosimy stolik dla … osób', 'A table for …, please'),
(65, 4, 'Images/Phrases/Restaurant/brick-wall-g545c4ee85_1920.jpg', 'Przepraszam!', 'Excuse me!'),
(66, 4, 'Images/Phrases/Restaurant/chef-1417239_1280.png', 'Chcielibyśmy zamówić', 'We are ready to order'),
(67, 4, 'Images/Phrases/Restaurant/city-4298285_1920.jpg', 'Czy mogę zobaczyć menu?', 'Can I see the menu?'),
(68, 4, 'Images/Phrases/Restaurant/chef-5993951_1920.jpg', 'Chciałbym/Chciałabym zarezerwować stolik dla … osób na dziś wieczór/jutro na godzinę ...', 'I\'d like to reserve a table for … for tonight/tomorrow at …'),
(69, 4, 'Images/Phrases/Restaurant/coffee-5589038_1920.jpg', 'Czy możemy usiąść tutaj?', 'Can we sit here?'),
(70, 4, 'Images/Phrases/Restaurant/couple-1236137_1920.jpg', 'Gdzie jest łazienka?', 'Where are the toilets?'),
(71, 4, 'Images/Phrases/Restaurant/couple-1807617_1920.jpg', 'Czy chcą państwo złożyć zamówienie?', 'Are you ready to order?'),
(72, 4, 'Images/Phrases/Restaurant/drinks-g6031b4a53_1920.jpg', 'Czy chcieliby państwo zamówić najpierw coś do picia?', 'Would you like to order your drinks first?'),
(73, 4, 'Images/Phrases/Restaurant/eating-601581_1920.jpg', 'Chcielibyśmy zamówić', 'We are ready to order'),
(74, 4, 'Images/Phrases/Restaurant/lisbon-2660748_1920.jpg', 'Dla mnie …', 'I\'d like … . / For me'),
(75, 4, 'Images/Phrases/Restaurant/people-146963_1280.png', 'Jak duża jest porcja?', 'How big is a portion?'),
(76, 4, 'Images/Phrases/Restaurant/people-2557408_1920.jpg', 'Czy mogę prosić o serwetkę?', 'Can I have a napkin?'),
(77, 4, 'Images/Phrases/Restaurant/platter-2009590_1920.jpg', 'Poproszę o rachunek', 'The bill, please'),
(78, 4, 'Images/Phrases/Restaurant/restaurant-826738_1920.jpg', 'Poprosimy o oddzielne rachunki', 'Separate bills, please'),
(79, 4, 'Images/Phrases/Restaurant/steak-1807532_1920.jpg', 'Było bardzo dobre!', 'That was delicious!'),
(80, 4, 'Images/Phrases/Restaurant/people-2557408_1920.jpg', 'Czy mają państwo … ?', 'Do you have … ?'),
(81, 4, 'Images/Phrases/Restaurant/drinks-g6031b4a53_1920.jpg', 'Nie piję alkoholu', 'I don\'t drink alcohol');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phrases_categories`
--

CREATE TABLE `phrases_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `phrases_categories`
--

INSERT INTO `phrases_categories` (`id`, `name`) VALUES
(1, 'podróż'),
(2, 'zakupy'),
(3, 'zakwaterowanie'),
(4, 'restauracja');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `quiz_answers`
--

CREATE TABLE `quiz_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_right` tinyint(1) NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `quiz_answers`
--

INSERT INTO `quiz_answers` (`id`, `text`, `is_right`, `question_id`) VALUES
(1, 'luggage', 1, 1),
(2, 'luggages', 0, 1),
(3, 'baggages', 0, 1),
(4, 'was cancelled', 1, 2),
(5, 'have been cancelled', 0, 2),
(6, 'were cancelled', 0, 2),
(7, 'What time do I', 1, 3),
(8, 'What time I do', 0, 3),
(9, 'What time I', 0, 3),
(10, 'including', 0, 4),
(11, 'included', 1, 4),
(12, 'includes', 0, 4),
(13, 'the worst', 1, 5),
(14, 'worst', 0, 5),
(15, 'worse', 0, 5),
(16, 'a', 0, 6),
(17, '-', 0, 6),
(18, 'an', 1, 6),
(19, 'much', 1, 7),
(20, 'many', 0, 7),
(21, 'more', 0, 7),
(22, 'am look for', 0, 8),
(23, 'am looking for', 1, 8),
(24, 'am looking after', 0, 8),
(25, 'biggest', 1, 9),
(26, 'biggie', 0, 9),
(27, 'bigger', 0, 9),
(28, 'away', 0, 10),
(29, 'up', 0, 10),
(30, 'on', 1, 10),
(31, 'return', 1, 11),
(32, 'double', 0, 11),
(33, 'taken', 0, 11),
(34, 'skip', 0, 12),
(35, 'miss', 1, 12),
(36, 'omit', 0, 12),
(37, 'would put', 0, 13),
(38, 'will have put', 0, 13),
(39, 'will put', 1, 13),
(40, 'departure', 0, 14),
(41, 'arrival', 0, 14),
(42, 'delay', 1, 14),
(43, 'light', 1, 15),
(44, 'dark', 0, 15),
(45, 'heavy', 0, 15),
(46, 'are going', 0, 16),
(47, 'are going to go', 0, 16),
(48, 'will go', 1, 16),
(49, 'ranch', 0, 17),
(50, 'range', 0, 17),
(51, 'rank', 1, 17),
(52, 'watching', 0, 18),
(53, 'seeing', 0, 18),
(54, 'looking', 1, 18),
(55, 'in', 1, 19),
(56, 'on', 0, 19),
(57, 'by', 0, 19),
(58, 'is the nearest ATM', 0, 20),
(59, 'the nearest ATM is', 1, 20),
(60, 'the ATM is nearest', 0, 20),
(61, 'in', 0, 21),
(62, 'no', 1, 21),
(63, 'on', 0, 21),
(64, 'journey', 1, 22),
(65, 'excursion', 0, 22),
(66, 'travel', 0, 22),
(67, 'check', 0, 23),
(68, 'check-in', 1, 23),
(69, 'checking', 0, 23),
(70, 'depart', 0, 24),
(71, 'departure', 1, 24),
(72, 'departed', 0, 24),
(73, 'take', 1, 25),
(74, 'takes', 0, 25),
(75, 'taking', 0, 25),
(76, 'at', 0, 26),
(77, 'on', 0, 26),
(78, 'by', 1, 26),
(79, 'by', 0, 27),
(80, 'on', 1, 27),
(81, 'at', 0, 27),
(82, 'wanted', 0, 28),
(83, 'want', 1, 28),
(84, 'will want', 0, 28),
(85, 'is the train station', 0, 29),
(86, 'train station is', 0, 29),
(87, 'the train station is', 1, 29),
(88, 'receive', 0, 30),
(89, 'obtain', 0, 30),
(90, 'get', 1, 30);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `text`) VALUES
(1, 'I can’t find my_____'),
(2, 'The flight____due to a blizzard'),
(3, '_____have to be at the apart?'),
(4, 'Is dinner____in the ticket price?'),
(5, 'What is ____ meal you have eaten at a restaurants?'),
(6, 'Would you like to place___order?'),
(7, 'I would like to pay for this shirt. How___is it?'),
(8, 'I_____ some black shoes'),
(9, 'Have you got a ____size? This one is too small'),
(10, 'Go straight___and then turn left. The Police station is on the right'),
(11, 'Do you want a single ticket or ____?'),
(12, 'The next flight is at 7. Hurry up, I don’t want to___it'),
(13, 'If you Take anything from the mini bar, we____it on your bill'),
(14, 'The train had a 20-minute____because of the avalanche'),
(15, 'I always travel____.I never Take too many things with me'),
(16, 'We_____to Spain next month. I already booked the tickets'),
(17, 'Just my luck! There aren’t any taxis at the taxi____'),
(18, 'I’m just_____around, thank you'),
(19, 'I’ll pay____cash'),
(20, 'Could you tell me where____?'),
(21, 'Money is _____ object. I’ll pay any price!'),
(22, 'It’s a three-hour_____from here to the seaside'),
(23, 'Where is the___for the flight to Warsaw?'),
(24, 'What’s the ____time?'),
(25, 'How long does the flight to Athens____?'),
(26, 'I travelled_____train'),
(27, 'The museum is about 15 minutes from here____foot'),
(28, 'We’ll have to leave bright and early, if we _____to catch the plane at 8'),
(29, 'Could you tell me where_____?'),
(30, 'I’ll _______ you a souvenir from my trip');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `relative_pronouns`
--

CREATE TABLE `relative_pronouns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `relative_pronouns`
--

INSERT INTO `relative_pronouns` (`id`, `text`) VALUES
(1, 'Who (kto)'),
(2, 'which (który)'),
(3, 'that (że)'),
(4, 'whose(którego)'),
(5, 'when(kiedy)'),
(6, 'where(gdzie?)');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `static_verbs`
--

CREATE TABLE `static_verbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `polish` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `static_verbs`
--

INSERT INTO `static_verbs` (`id`, `polish`, `english`) VALUES
(1, 'wierzyć', 'believe'),
(2, 'należeć', 'belong'),
(3, 'czuć', 'feel'),
(4, 'nienawidzić', 'hate'),
(5, 'mieć', 'have'),
(6, 'słyszeć', 'hear'),
(7, 'wiedzieć', 'know'),
(8, 'lubić', 'like'),
(9, 'kochać', 'love'),
(10, 'znaczyć', 'mean'),
(11, 'potrzebować', 'need'),
(12, 'posiadać', 'own'),
(13, 'woleć', 'prefer'),
(14, 'zdawać sobie sprawę', 'realise'),
(15, 'rozpoznawać', 'recognise'),
(16, 'pamiętać', 'remember'),
(17, 'przypuszczać', 'suppose'),
(18, 'myśleć, sądzić', 'think'),
(19, 'rozumieć', 'understand'),
(20, 'chcieć', 'want'),
(21, 'pragnąć, życzyć sobie', 'wish');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `times`
--

CREATE TABLE `times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `times`
--

INSERT INTO `times` (`id`, `name`) VALUES
(1, 'czasy przeszłe'),
(2, 'czasy teraźniejsze'),
(3, 'czasy przyszłe');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `times_images`
--

CREATE TABLE `times_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `times_images`
--

INSERT INTO `times_images` (`id`, `image`, `time_id`) VALUES
(1, 'Images/Times/Future/Future_Continuous.jpg', 3),
(2, 'Images/Times/Future/Future_Perfect_Continuous.jpg', 3),
(3, 'Images/Times/Future/Future_Simple.jpg', 3),
(4, 'Images/Times/Future/To_be_going_to.jpg', 3),
(5, 'Images/Times/Past/Past_Continuous.jpg', 1),
(6, 'Images/Times/Past/Past_Perfect.jpg', 1),
(7, 'Images/Times/Past/Past_Perfect_Continuous.jpg', 1),
(8, 'Images/Times/Past/Past_Simple.jpg', 1),
(9, 'Images/Times/Past/Used_to_i_would.jpg', 1),
(10, 'Images/Times/Present/Present_Continuous.jpg', 2),
(11, 'Images/Times/Present/Present_Perfect (1).jpg', 2),
(12, 'Images/Times/Present/Present_Perfect_Continuous.jpg', 2),
(13, 'Images/Times/Present/Present_Simple.jpg', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `conditional_sentences`
--
ALTER TABLE `conditional_sentences`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `context_verbs`
--
ALTER TABLE `context_verbs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `context_verbs_examples`
--
ALTER TABLE `context_verbs_examples`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `demonstrative_pronouns`
--
ALTER TABLE `demonstrative_pronouns`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `interrogative_pronouns`
--
ALTER TABLE `interrogative_pronouns`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `irregular_verbs`
--
ALTER TABLE `irregular_verbs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `mutual_pronouns`
--
ALTER TABLE `mutual_pronouns`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `numerals`
--
ALTER TABLE `numerals`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `numerals_examples`
--
ALTER TABLE `numerals_examples`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeksy dla tabeli `personal_pronouns`
--
ALTER TABLE `personal_pronouns`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `phrases`
--
ALTER TABLE `phrases`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `phrases_categories`
--
ALTER TABLE `phrases_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `quiz_answers`
--
ALTER TABLE `quiz_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `relative_pronouns`
--
ALTER TABLE `relative_pronouns`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `static_verbs`
--
ALTER TABLE `static_verbs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `times_images`
--
ALTER TABLE `times_images`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `conditional_sentences`
--
ALTER TABLE `conditional_sentences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `context_verbs`
--
ALTER TABLE `context_verbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `context_verbs_examples`
--
ALTER TABLE `context_verbs_examples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `demonstrative_pronouns`
--
ALTER TABLE `demonstrative_pronouns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `interrogative_pronouns`
--
ALTER TABLE `interrogative_pronouns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `irregular_verbs`
--
ALTER TABLE `irregular_verbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `mutual_pronouns`
--
ALTER TABLE `mutual_pronouns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `numerals`
--
ALTER TABLE `numerals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT dla tabeli `numerals_examples`
--
ALTER TABLE `numerals_examples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `personal_pronouns`
--
ALTER TABLE `personal_pronouns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `phrases`
--
ALTER TABLE `phrases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT dla tabeli `phrases_categories`
--
ALTER TABLE `phrases_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `quiz_answers`
--
ALTER TABLE `quiz_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT dla tabeli `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `relative_pronouns`
--
ALTER TABLE `relative_pronouns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `static_verbs`
--
ALTER TABLE `static_verbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `times`
--
ALTER TABLE `times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `times_images`
--
ALTER TABLE `times_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
