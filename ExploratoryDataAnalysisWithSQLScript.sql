SELECT * FROM SPACEXTBL;

/* Display the names of the unique launch sites in the space mission */

SELECT DISTINCT LAUNCH_SITE FROM SPACEXTBL;

/* Display 5 records where launch sites begin with the string 'KSC' */

SELECT * 
FROM SPACEXTBL 
WHERE LAUNCH_SITE LIKE 'KSC%'
LIMIT 5;

/* Display the total payload mass carried by boosters launched by NASA (CRS) */

SELECT BOOSTER_VERSION, PAYLOAD_MASS__KG_, CUSTOMER
FROM SPACEXTBL
WHERE CUSTOMER = 'NASA (CRS)';

/* Display average payload mass carried by booster version F9 v1.1 */

SELECT AVG(PAYLOAD_MASS__KG_) 
FROM SPACEXTBL
WHERE BOOSTER_VERSION = 'F9 v1.1';

/* List the date where the first successful landing outcome in drone ship was achieved. */

SELECT DATE 
FROM SPACEXTBL
WHERE LANDING__OUTCOME = 'Success (drone ship)'
ORDER BY DATE
LIMIT 1;

/* List the names of the boosters which have success in ground pad and have payload mass greater than 4000 but less than 6000 */

SELECT BOOSTER_VERSION, LANDING__OUTCOME, PAYLOAD_MASS__KG_
FROM SPACEXTBL 
WHERE (LANDING__OUTCOME = 'Success (ground pad)' AND (PAYLOAD_MASS__KG_ BETWEEN 4000 AND 6000));

/* List the total number of successful and failure mission outcomes */

SELECT MISSION_OUTCOME, COUNT(MISSION_OUTCOME)
FROM SPACEXTBL
GROUP BY MISSION_OUTCOME;

/* List the names of the booster_versions which have carried the maximum payload mass. Use a subquery */

SELECT BOOSTER_VERSION
FROM SPACEXTBL
WHERE PAYLOAD_MASS__KG_ IN 
(SELECT MAX(PAYLOAD_MASS__KG_)
FROM SPACEXTBL);

/* List the records which will display the month names, successful landing_outcomes in ground pad ,booster versions, launch_site for the months in year 2017 */

 
SELECT EXTRACT(MONTH FROM DATE), LANDING__OUTCOME, BOOSTER_VERSION, LAUNCH_SITE
FROM SPACEXTBL
WHERE (LANDING__OUTCOME = 'Success (ground pad)' AND EXTRACT(YEAR FROM DATE)=2017);



/* Rank the count of successful landing_outcomes between the date 2010-06-04 and 2017-03-20 in descending order */

SELECT COUNT(LANDING__OUTCOME)
FROM SPACEXTBL
WHERE LANDING__OUTCOME LIKE 'Succ%' AND DATE BETWEEN '04-06-2010' AND '20-03-2017'

 