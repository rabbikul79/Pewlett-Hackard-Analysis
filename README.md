# Pewlett-Hackard-Analysis

## Overview of the analysis:
 Pewlett Hackard – a large company with thousands of employees is approaching towards an employee crisis what is named as “silver tsunami” as lot of their baby boomers employee reaching towards retirement age. This will create large vacancy throughout the company. The company needs to be prepared for generating retirement package for the employees who’ll leave the company as well as figuring out the positions that’ll need to be filled. The purpose of the analysis is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. 

## Results:
## Deliverable 1
-	Identified all the employee’s information who were born between 1952 and 1955 with all the job titles and stored those data in retirement_titles.csv file.

![retirement_titles_table](https://user-images.githubusercontent.com/85530486/127753152-3dc4cd7e-9f7e-4c20-a293-ee2a85507eb9.png)

-	Used the DISTINCT ON statement and retrieved the current employee with current title and stored those data in unique_titles.csv file. 

![unique_titles_table](https://user-images.githubusercontent.com/85530486/127753158-58991ca6-0bee-4d84-b3a9-862362b8a64d.png)

-	Created query using count and groupby function to calculate total employee by title who’ll be retiring and stored those data in retiring_titles.csv file.

![retiring_titles_table](https://user-images.githubusercontent.com/85530486/127754000-80ea9612-c992-4632-926d-a6b0e78f7bbe.png)

## Deliverable 2
-	Created query using count and groupby function to calculate total employee who are born between January 1, 1965 and December 31, 1965 to figure out the number of employees who are eligible for mentorship and stored those data in mentorship_eligibilty.csv file.

![mentorship_eligibilty_table](https://user-images.githubusercontent.com/85530486/127753170-77cbcbe9-b6e3-4cda-8e8f-94f8800a16ac.png)

## Summary:
-	After the analysis we’ve found all the employee detail with the birth date between 1952 and 1955 who’ll be retiring soon
1.	With the below query we can display the total number of those retiring employee is 90398. 

![Total retiring emp](https://user-images.githubusercontent.com/85530486/127753454-6d7b640b-2bcd-42c9-8929-9f5e92ee698d.png)

2.	The total number of employee eligible to mentor the new employee before retiring is 1549 which was calculated by the below query:

![mentorship_eligibilty_query](https://user-images.githubusercontent.com/85530486/127753563-3394ccce-bc9d-4cab-9833-5feb9002f009.png)
