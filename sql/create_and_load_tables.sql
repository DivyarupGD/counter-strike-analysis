/****************************************** Creating Tables *********************************************/

CREATE TABLE players(name VARCHAR(30), country VARCHAR(30), id INT PRIMARY KEY);
CREATE TABLE teams(name VARCHAR(30), country VARCHAR(30), id INT PRIMARY KEY);
CREATE TABLE player_stats(map VARCHAR(30), player_id INT, kills INT, deaths INT, adr FLOAT, kast FLOAT, rating FLOAT, match_id VARCHAR(150));
CREATE TABLE match_lineups(team1p1 INT,team1p2 INT,team1p3 INT,team1p4 INT,team1p5 INT,team2p1 INT,team2p2 INT,team2p3 INT,team2p4 INT,team2p5 INT, matchId VARCHAR(150) PRIMARY KEY);
CREATE TABLE event_ids(type VARCHAR(30),name VARCHAR(150),match_date VARCHAR(15), id INT);
CREATE TABLE match_ids(id INT PRIMARY KEY, title VARCHAR(150));
CREATE TABLE match_events(match_title VARCHAR(150), event_id INT);
CREATE TABLE match_results(match_date VARCHAR(15), map VARCHAR(10), team1_id INT, team1_start_side VARCHAR(3), team1_score INT, team1_h1 INT, team1_h2 INT, team1_o INT, team2_id INT, team2_start_side VARCHAR(3), team2_score INT, team2_h1 INT, team2_h2 INT, team2_o INT, match_id VARCHAR(150));
/* Tables with no PK:
player_stats
event_ids
match_events
match_results
*/


/****************************************** Loading Data *********************************************/

LOAD DATA INFILE "/home/cloudera/Desktop/shared/data/players.csv" INTO TABLE players COLUMNS TERMINATED BY ',' LINES TERMINATED BY '\n';
LOAD DATA INFILE "/home/cloudera/Desktop/shared/data/teams.csv" INTO TABLE teams COLUMNS TERMINATED BY ',' LINES TERMINATED BY '\n';
LOAD DATA INFILE "/home/cloudera/Desktop/shared/data/playerStats.csv" INTO TABLE player_stats COLUMNS TERMINATED BY ',' LINES TERMINATED BY '\n';
LOAD DATA INFILE "/home/cloudera/Desktop/shared/data/matchLineups.csv" INTO TABLE match_lineups COLUMNS TERMINATED BY ',' LINES TERMINATED BY '\n';
LOAD DATA INFILE "/home/cloudera/Desktop/shared/data/eventIDs.csv" INTO TABLE event_ids COLUMNS TERMINATED BY ',' LINES TERMINATED BY '\n';
LOAD DATA INFILE "/home/cloudera/Desktop/shared/data/matchIDs.csv" INTO TABLE match_ids COLUMNS TERMINATED BY ',' LINES TERMINATED BY '\n';
LOAD DATA INFILE "/home/cloudera/Desktop/shared/data/joinMatchEvent.csv" INTO TABLE match_events COLUMNS TERMINATED BY ',' LINES TERMINATED BY '\n';
LOAD DATA INFILE "/home/cloudera/Desktop/shared/data/matchResults.csv" INTO TABLE match_results COLUMNS TERMINATED BY ',' LINES TERMINATED BY '\n';

/****************************************** Verifying load is successful *********************************************/
SELECT * FROM players LIMIT 10;
SELECT * FROM teams LIMIT 10;
SELECT * FROM player_stats LIMIT 10;
SELECT * FROM match_lineups LIMIT 10;
SELECT * FROM event_ids LIMIT 10;
SELECT * FROM match_ids LIMIT 10;
SELECT * FROM match_events LIMIT 10;
SELECT * FROM match_results LIMIT 10;