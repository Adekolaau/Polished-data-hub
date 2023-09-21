## FIFA 21 Data Cleaning Challenge

![Screenshot 2023-04-22 120302](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/50f315a9-c82e-4d25-8dfc-e04f3870038c)

## Introduction
Data cleaning is an important process that ensures the accuracy and reliability of data. It involves identifying and correcting errors, inconsistencies, and inaccuracies in data to ensure that it is accurate, reliable, and usable for analysis. Data cleaning can be a tedious and time-consuming process, especially when dealing with large and messy datasets like this one. 
The steps taken will be explored to clean a messy data set which is titled “Fifa21 raw data v2.csv.”

_Note: This dataset was pulled from the Kaggle, and was organized by (@PromiseNonso_) via Twitter 

Microsoft Excel was used for this challenge

## Skills Demonstrated
- Column splitting
- Duplicate removal
- Error elimination

## FIFA 21 Raw Dataset:
- 18,980 rows
- 77 columns

## Sample of Raw Dataset

![Screenshot 2023-03-10 152640](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/1962c6ae-9711-40d9-a4e6-cc9e05e443a8)

## Data Cleaning Process
I started by using Visual Basic for Application (VBA) to remove the special characters, which was successful.

![Screenshot 2023-03-13 190617](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/0742bf71-8fd2-4440-8109-f3694fe30995)

However, a colleague suggested using Power Query, which turned out to be the perfect tool for the job. The following steps were taken in Power Query to clean the data:

- **Load the data:** A new Excel workbook was opened, and on the menu page, I clicked on Data and located the New Query option. From the drop-down menu, I selected "From File" and chose the compacted file for the database, which was in CSV format. The file was loaded, and I changed the file origin to 65001: Unicode (UTF-8) and also selected "Data Type Detection Based on the entire dataset." Changing the file origin ensured that the players were correctly spelled, and it helped to relieve me of the pain of special characters.

![Screenshot 2023-03-13 152235](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/fa062693-be3c-4847-b886-464e81cbb876)

- **Load the data into Power Query:** After loading the data, I clicked on the Load drop-down menu and selected "Load To." From the drop-down menu, I chose "Table" and "Existing Worksheet" and clicked "Load." The data was loaded onto the Excel sheet, and I had to locate their Power Query on the right-hand side of the Excel and double-clicked on the Work Query file to load their file to Power Query.

![Screenshot 2023-03-16 094149](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/f75c7e6f-d57b-4eee-a252-354586109ae8)

- **Align the data:** I surveyed the data to find out why the cells were big and noticed that the Club column in the observation columns was down while others were written up. I selected the column, right-clicked from the attribute, selected "Transform" from the drop-down menu, and selected the "Length" option. This procedure adjusted it, and the whole data set was well-aligned.

![Screenshot 2023-03-16 094916](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/7b2e04c6-fafd-4c55-8231-18e8626d1543)

- **Use filter to check for any data to be cleaned:** I used the filter to check for any data set to be cleaned and noticed that Name, LongName, PhotoUrl, PlayerUrl, Nationality, Age, OVA, POT, Club were already cleaned and were in good shape.

- **Clean the Contract column:** I proceeded to remove a special character and replace it with a dash in the Contract column. This was achieved by selecting the column from the attribute, right-clicking on the Contract attribute, and selecting “Replaced Values,”.

![Screenshot 2023-03-16 100802](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/817d1a42-ca05-4b73-83f9-645c8113e183)

- **Separate positions of the players:** I decided to separate the positions of the players. This was achieved by selecting the Position menu from the attribute (header) and right-clicking, then selecting “Split Columns,” picking the delimiter, and selecting “OK.” The Position.2 and Position.3 had a lot of nulls, so I proceeded to replace them with empty spaces. I used the filter to check the position columns and noticed that they had been properly cleaned.

![Screenshot 2023-03-16 102347](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/0d28bebe-f8bd-4fae-b75b-3fb2b9a4e195)

- **Convert height to cm:** I noticed that some heights were in cm while others were in foot-inch. I decided to make everything in cm. To do this, I split the column by delimiter and chose the custom option, inputting the proper conversion figure. This created a new column called height2, with all values in inches, leaving the height1 column with cm and feet. I then proceeded to convert the height1 in feet to inches by creating a new column using the conditional column function.

![Screenshot 2023-03-16 111951](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/f6e18aa7-c0e7-4800-a686-db4700fb3ec7)

I removed the cm sign, changed the height1 and custom columns to decimal numbers, and multiplied the height in cm by 1 and the height in feet by 12 to convert them to inches. We then added the height2 column (in inches) to the multiplication column (in inches) and replaced null values with zero. This created a new column called the Addition column. We then converted the total height to cm by dividing the addition column by the custom1 column, using the divide function in the standard. This created a new column called the division column, with all values in cm.

![Screenshot 2023-03-16 120903](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/59da3ed1-f5c1-49c5-9cf5-605289389c1f)

I changed the division column to a whole number, replaced the initial height column with the division column, deleted the custom, custom1, multiplication, and addition columns, and then dragged the height in cm to replace the height1 and height2 columns.

- **Convert weight to kg:** In the weight column, I noticed that the weight was in kg and lbs. To standardize the weight measurement, I decided to convert everything to kg. Using the conditional column function, I created a new column called KG to convert lbs to kg.

![Screenshot 2023-03-16 130522](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/c228a5e0-0bc4-47c1-9c39-b8b5deb0827d)

I then changed the data type of the weight column to a decimal number and removed the kg and pounds. Next, I multiplied both the new KG column and the weight column to create a new column called the multiplication column, which I renamed to the weight column in kg (weight (kg)).


![Screenshot 2023-03-16 143318](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/18ca1d85-2d44-42f6-a55e-c67d757a5524)

The data cleaning process continued until the dataset was free of errors and 100% accurate.

## Preview of Cleaned Data

![Screenshot 2023-03-16 001936](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/d9f1c997-8f1b-4081-a229-b374a03a51bf)

## Conclusion
This procedure shows that data cleaning can be a complex process, but it is essential to ensure that the data is reliable and can be used for analysis. The steps I took to clean the data may not be the only way to do it, but they demonstrate the importance of attention to detail and the use of tools available to get the job done. 

_Thanks to Promise Chinonso and the rest of the hosts who organized this challenge. it’s really impacted added knowledge._
