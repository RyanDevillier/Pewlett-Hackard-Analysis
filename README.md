# Pewlett Hackard Analysis


## Overview of Analysis
The purpose of this analysis was to use SQL to help answer questions that Pewlett-Hackard had about their soon-to-be retiring employees.  We were given six .csv files that contained information about Pewlett Hackard’s employees, and we imported these files into a SQL database to more easily comb through the data to select only the relevant information about the retiring employees.  After presenting our results, we conclude this analysis by presenting two additional tables that contain information about how many positions Pewlett Hackard will have to fulfill as people begin retiring and how many of these retirement-ready employees are qualified to mentor the next generation of Pewlett Hackard employees.  To conclude our analysis, we give a summary of our results, as well as suggestions to Pewlett Hackard on whether their mentorship program will be successful based on their number of qualified, retirement-ready employees.


## Results
The first goal of our analysis was to create a table that held the job titles of all employees born between January 1, 1952 and December 31, 1955 that are still currently employed at Pewlett Hackard.  We want the data from this table so that we can get a feel for how many people are soon to be retiring from Pewlett Hackard.  This goal was completed in three major steps:

* First, as shown below, we created a table entitled “retirement_titles” that contained the employee identification numbers, first names, last names, job titles, hiring dates, and date of termination (the date that the employee ceased working for Pewlett Hackard):    ![retirement_titles](https://user-images.githubusercontent.com/115128743/206359573-d8a84e99-9fc8-4dd0-9615-303f39615a64.png)


* However, the retirement_titles table gives us duplicate entries since some employees shifted positions during their career at Pewlett Hackard.  Thus, we created a second table entitled “unique_titles” that displays the same information as the retirement_titles table, but excludes any redundant values:    
![unique_titles](https://user-images.githubusercontent.com/115128743/206359671-9c13880e-aca9-42d1-bcb2-2c35821caa01.png)


* The above table is useful for looking at the individual employees and their specific descriptions, but we wanted a concise table that displayed how many retiring employees there are based on their most recent job title.  So, after grouping the unique_titles table on the “titles” column, we generated the “retiring_titles” table that gave us the number of retiring employees per job title, as shown below: ![retiring_titles](https://user-images.githubusercontent.com/115128743/206359705-3ba130f5-441a-4a8d-b6b7-9056fdb2b16c.png)


The second goal of this analysis was to use the provided .csv files to create a table that holds the number of current employees that are soon to retire and that are qualified enough to mentor the next generation of employees coming to work for Pewlett Hackard.  This table and how we constructed it is shown below:

* As stated above, our goal for the second part of our analysis was to generate a table holding all the data about employees that are eligible to mentor new Pewlett Hackard employees.  We have defined an “eligible employee” as someone who was born between January 1, 1965 and December 31, 1965 that is still currently employed at Pewlett Hackard.  This birth date range was chosen because people born in this range will be retiring within the next 5-10 years, and Pewlett Hackard would like to offer them a part-time position as a company mentor for the new generation of employees so that this older generation can more easily transition into retirement.  The table shown below holds the following data about Pewlett Hackard employees: employee identification number, first and last names, birth dates, hire dates (from_date), and date of termination (which, in this case, is labeled to_date and is only kept in the table to show that all employees in this table are still currently working for Pewlett Hackard): ![mentorship_eligibility](https://user-images.githubusercontent.com/115128743/206359715-78b0e6d4-b888-4f0a-90cd-b1e5f7f14803.png)



## Summary
The above tables show valuable insights into the various collections of employee data we wanted to view.  However, we cannot suggest to Pewlett Hackard that they implement their mentorship program without first finding out the total number of people that will be retiring, and the total number of eligible mentors for the incoming new generation of Pewlett Hackard employees.  The following two screenshots show two small tables we created to generate the sum of the retiring employees, as well as the sum of the eligible mentors, respectively.    
![sum_of_retiring_emp](https://user-images.githubusercontent.com/115128743/206359764-abc1106f-3dc9-4521-bf43-801a3071a5f7.png)      
![sum_of_mentors](https://user-images.githubusercontent.com/115128743/206359756-4f1d9c50-0ff7-4c1f-aab6-0437cd6d192b.png)   


 As we can see, the number of retiring employees is extremely large in comparison to the number of eligible employees for the mentorship program, so, unfortunately, it would not be advisable for Pewlett Hackard to implement this new program without further adjustments to the mentorship program’s criteria.  Perhaps it would be beneficial for Pewlett Hackard to alter their criteria upon which soon-to-be retiring employees can join the mentorship program, thus increasing the total number of mentors that can help the incoming new employees.
