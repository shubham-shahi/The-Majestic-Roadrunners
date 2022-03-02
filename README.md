
# Invisible Institute’s Citizen Police Data Project

Partnered with the Invisible Institute to glean insights from Chicago Police Department data.
Implemented PostgreSQL for database management, Trifacta for data integration/cleaning, Tableau and D3.js for visualizations, Scikit-Learn for logistic regression, and NLTK for NLP sentiment analysis and Topic Modelling using LDA on the summaries of complaint reports and Tactical Response Report.


## Acknowledgements

 - [CPDP Schema Documentation](https://paper.dropbox.com/doc/CPDP-Schema-Documentation-jiOJTlxkx2L99s9ycJqj3)
 - [CPDP document types and entity relational model](https://paper.dropbox.com/doc/CPDP-document-types-and-entity-relational-model-EKtJPUEXbHaQoE8CTBelP)
 - [CPDP Databadse](http://users.eecs.northwestern.edu/~jennie/courses/cs339/lab1/cpdb-schema/relationships.html)
## CHECKPOINT 1

## Theme: Who shot first? - closer look at police officers who have fired their weapon on duty

How to Run the Queries:

**Method 1: Use PSQL**
From within the /src directory you can use PSQL in order to interface with the remote AWS database using the following command.
psql -f <QUESTION_FILENAME>.sql -h cpdb.cgod7egsd6vr.us-east-2.rds.amazonaws.com -U cpdb-student -d cpdb -p 5432
and replacing <QUESTION_FILENAME> with the approriate query file name. For example, running the query for Question 1 would be as follows:
psql -f Q1.sql -h cpdb.cgod7egsd6vr.us-east-2.rds.amazonaws.com -U cpdb-student -d cpdb -p 5432
When prompted for a password, simply enter the password found within the setup instructions for Checkpoint 1 on Canvas (this is omitted here for security reasons).

**Method 2: DataGrip**
In order to run these queries with DataGrip, you'll first need to make sure you have an active connection to the cpdb database. With that in place, simply open the .sql files in the /src directory and hit run. Alternatively, you can copy and paste the queries from the file into the DataGrip console and run them there.
Checkpoint1: Relational Analytics
Questions:
1. What were the top 10 types of force (Physical force, verbal command, etc) exhibited by the officer that ended up in use of the firearm?
2. What is the proportion of subjects injured to that of officers injured in the use of firearms?
3. Based on Demographics (Age, Gender and Race), which group of subjects are most likely to be involved in firearms?
a) Age group
b) Gender
c) Race

4. What proportion of the subjects carried weapons in the events that involved the use of firearms?
## CHECKPOINT 2

**Data Exploration**

This checkpoint is to identify if there is a particular demographic where these incidents are common. We are considering the top five units where most of the firearm incidents happened
1. Which police unit were involved in most of the firearms cases? For the most units involved, comparison of the number of officers and subjects injured in firearm cases.
2. Vertical bars to visualize the distribution of races across the firearms incidents
3. Treemap to compare the locations for each of the five Units where the firearm incidents have happened frequently.
## CECKPOINT 3

**Interactive Visualization**

To visualize if there has been any decrease or increase ,over the years on the number of TRRs coming from a district meanwhile comparing if it is affecting nearby districts as well.
1. What is the number of TRRs coming from different districts? Has the number of TRR received over the years from these districts have increased or decreased?
Link: https://observablehq.com/@3d648a34c9857641/q1
2. To observe if the districts from where the TRR percentage is higher is occupied predominantly by a particular race?
Link: https://observablehq.com/@3d648a34c9857641/q2
## CHECKPOINT 4

**GRAPH ANALYTICS**

QUESTION 1: To identify relationships between officers, co-accused in the firearm cases.
https://colab.research.google.com/drive/1eHAyfZ7vTfHwDSl082htv HIi6nCqpGHw?authuser=1

QUESTION 2 : To also try to find the relationship between officers who were involved in the same forcetype or action category.
https://colab.research.google.com/drive/1mQ6bvCXnxp95FlZHYUe6 pWoKVeyh0uNg?authuser=1
## CHECKPOINT 5

**Introduction**
Natural language processing
In this checkpoint, we extend our analysis further by trying to uncover hidden insights relevant to firearm cases in the text of the CPDB. By skilfully exploiting the enormous amount of free-form data, we try to uncover hidden characteristics of firearm cases and exhibit a more nuanced model of the text.

**Tasks**

In this checkpoint, we tackle these questions-

1. Are we able to find unseen patterns/trends related to firearm cases that we could not
extract quantitatively?

2. Do we see a clear differentiation between themes of firearm cases vs non-violent ones?

3. Do the sentiments of firearm cases vary substantially from the rest of the cases?

## Demo

https://github.com/shubham-shahi/The-Majestic-Roadrunners/blob/main/Presentation%20video.mp4 






