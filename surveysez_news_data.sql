INSERT INTO `surveysez_news`.`categories` (`CategoryName`, `CategoryRss`) VALUES ('Health', 'https://rss.sciencedaily.com/top/health.xml');
INSERT INTO `surveysez_news`.`categories` (`CategoryName`, `CategoryRss`) VALUES ('Technology', ' https://rss.sciencedaily.com/top/technology.xml');
INSERT INTO `surveysez_news`.`categories` (`CategoryName`, `CategoryRss`) VALUES ('Environment', ' https://rss.sciencedaily.com/top/environment.xml');

/*
UPDATE `surveysez_news`.`categories` SET `CategoryID`='1' WHERE `CategoryID`='1';
UPDATE `surveysez_news`.`categories` SET `CategoryID`='2' WHERE `CategoryID`='2';
UPDATE `surveysez_news`.`categories` SET `CategoryID`='3' WHERE `CategoryID`='3';
*/


INSERT INTO `surveysez_news`.`subcategories` (`SubcategoryID`, `SubcategoryName`, `SubcategoryRss`, `CategoryID`) VALUES ('1', 'Alternative Medicine', 'https://rss.sciencedaily.com/health_medicine/alternative_medicine.xml', '1');
INSERT INTO `surveysez_news`.`subcategories` (`SubcategoryID`, `SubcategoryName`, `SubcategoryRss`, `CategoryID`) VALUES ('2', 'Nutrition', 'https://rss.sciencedaily.com/health_medicine/nutrition.xml', '1');
INSERT INTO `surveysez_news`.`subcategories` (`SubcategoryID`, `SubcategoryName`, `SubcategoryRss`, `CategoryID`) VALUES ('3', 'Fitness', 'https://rss.sciencedaily.com/health_medicine/fitness.xml', '1');
INSERT INTO `surveysez_news`.`subcategories` (`SubcategoryID`, `SubcategoryName`, `SubcategoryRss`, `CategoryID`) VALUES ('4', 'Video Games', 'https://rss.sciencedaily.com/computers_math/video_games.xml', '2');
INSERT INTO `surveysez_news`.`subcategories` (`SubcategoryID`, `SubcategoryName`, `SubcategoryRss`, `CategoryID`) VALUES ('5', 'Software', 'https://rss.sciencedaily.com/computers_math/software.xml', '2');
INSERT INTO `surveysez_news`.`subcategories` (`SubcategoryID`, `SubcategoryName`, `SubcategoryRss`, `CategoryID`) VALUES ('6', 'Hacking', 'https://rss.sciencedaily.com/computers_math/hacking.xml', '2');
INSERT INTO `surveysez_news`.`subcategories` (`SubcategoryID`, `SubcategoryName`, `SubcategoryRss`, `CategoryID`) VALUES ('7', 'Global Warming', 'https://www.sciencedaily.com/news/earth_climate/global_warming/', '3');
INSERT INTO `surveysez_news`.`subcategories` (`SubcategoryID`, `SubcategoryName`, `SubcategoryRss`, `CategoryID`) VALUES ('8', 'Biodiversity', 'https://rss.sciencedaily.com/earth_climate/biodiversity.xml', '3');
INSERT INTO `surveysez_news`.`subcategories` (`SubcategoryID`, `SubcategoryName`, `SubcategoryRss`, `CategoryID`) VALUES ('9', 'Renewable Energy', 'https://www.sciencedaily.com/news/earth_climate/renewable_energy/', '3');


