Create table Categories
(
 CategoryID int identity(1,1) primary key,
 CategoryName nvarchar(255) not null,
 CategoryDescription text null,
)

Insert into Categories
(CategoryName,CategoryDescription) 
Values ('Health', 'Health is the level of functional and metabolic efficiency of a living organism. 
In humans it is the ability of individuals or communities to adapt and self-manage 
when facing physical, mental or social changes.');

Insert into Categories
(CategoryName,CategoryDescription) 
Values('Technology', 'Technology is the collection of techniques, skills, methods and 
processes used in the production of goods or services or in the accomplishment of objectives, 
such as scientific investigation. Technology can be the knowledge of techniques, processes, 
and the like, or it can be embedded in machines which can be operated without detailed knowledge of their workings.');

Insert into Categories
(CategoryName,CategoryDescription) 
Values('Environment', 'The biophysical environment is the biotic and abiotic surrounding of an 
organism or population, and consequently includes the factors that have an influence 
in their survival, development and evolution.');

Create table Subcategories
(
 SubcategoryID int identity(1,1) primary key,
 SubcategoryName nvarchar(255) not null,
 SubcategoryDescription text null,
 SubcategoryRSS  text null,
 CategoryID int not null foreign key references Categories(CategoryID)
)

Insert into Subcategories
(SubcategoryName, SubcategoryDescription, SubcategoryRSS, CategoryID)
Values('Alternative Medicine','Alternative medicine or fringe medicine are practices claimed to have the healing 
effects of medicine but are disproven, unproven, impossible to prove, or only harmful; 
and where scientific consensus is that the practice does not or can not work.', 
'https://rss.sciencedaily.com/health_medicine/alternative_medicine.xml', '1');

Insert into Subcategories
(SubcategoryName, SubcategoryDescription, SubcategoryRSS, CategoryID)
Values('Nutrition','Nutrition is the science that interprets the interaction of nutrients and other substances 
in food in relation to maintenance, growth, reproduction, health and disease of an organism. 
It includes food intake, absorption, assimilation, biosynthesis, 
catabolism and excretion.', 'https://rss.sciencedaily.com/health_medicine/nutrition.xml', '1');

Insert into Subcategories
(SubcategoryName, SubcategoryDescription, SubcategoryRSS, CategoryID)
Values('Fitness','Physical fitness is a general state of health and well-being and, more specifically, 
the ability to perform aspects of sports, occupations and daily activities. 
Physical fitness is generally achieved through proper nutrition moderate-vigorous 
physical exercise and sufficient rest.', 'https://rss.sciencedaily.com/health_medicine/fitness.xml', '1');

Insert into Subcategories
(SubcategoryName, SubcategoryDescription, SubcategoryRSS, CategoryID)
Values('Video Games','A video game is an electronic game that involves interaction with a user interface to 
generate visual feedback on a video device such as a TV screen or computer monitor.', 
'https://rss.sciencedaily.com/computers_math/video_games.xml', '2');

Insert into Subcategories
(SubcategoryName, SubcategoryDescription, SubcategoryRSS, CategoryID)
Values('Software','Computer software, or simply software, is that part of a computer system that consists of encoded 
information or computer instructions, in contrast to the physical hardware from which the system is built.', 
'https://rss.sciencedaily.com/computers_math/software.xml', '2');

Insert into Subcategories
(SubcategoryName, SubcategoryDescription, SubcategoryRSS, CategoryID)
Values('Hacking','A security hacker is someone who seeks to breach defenses and exploit weaknesses in a computer system 
or network. Hackers may be motivated by a multitude of reasons, such as profit, protest, challenge, 
recreation or to evaluate system weaknesses to assist in formulating defenses against potential hackers.', 
'https://rss.sciencedaily.com/computers_math/hacking.xml', '2');

Insert into Subcategories
(SubcategoryName, SubcategoryDescription, SubcategoryRSS, CategoryID)
Values('Global Warming','Global warming and climate change are terms for the observed century-scale rise in the average 
temperature of the Earth and effects.', 'https://www.sciencedaily.com/news/earth_climate/global_warming/', '3');

Insert into Subcategories
(SubcategoryName, SubcategoryDescription, SubcategoryRSS, CategoryID)
Values('Biodiversity','generally refers to the variety and variability of life on Earth. One of the most widely used 
definitions defines it in terms of the variability within species, between species and between ecosystems.', 
'https://rss.sciencedaily.com/earth_climate/biodiversity.xml', '3');

Insert into Subcategories
(SubcategoryName, SubcategoryDescription, SubcategoryRSS, CategoryID)
Values('Renewable Energy','Renewable energy is energy that is collected from renewable resources, 
which are naturally replenished on a human timescale, such as sunlight, wind, rain, tides, waves, and geothermal heat.', 
'https://www.sciencedaily.com/news/earth_climate/renewable_energy/', '3');


