## FIFA 21 Data Cleaning Challenge

![Screenshot 2024-01-26 145204](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/edef3287-197b-4478-92ef-919dc8c92bf6)

**Introduction**
Data cleaning is an important process that ensures the accuracy and reliability of data. It involves identifying and correcting errors, inconsistencies, and inaccuracies in data to ensure that it is accurate, reliable, and usable for analysis. Data cleaning can be a tedious and time-consuming process, especially when dealing with large and messy datasets like this one.
The steps taken will be explored to clean a messy data set which is titled “Fifa21 raw data v2.csv.”

_Note: This dataset was pulled from the Kaggle, and was organized by (@PromiseNonso_) via Twitter

Microsoft Excel was used for this challenge

**Skills Demonstrated**

- Column splitting
- Duplicate removal
- Error elimination

**FIFA 21 Raw Dataset:**

- 18,980 rows
- 77 columns

**Sample of Raw Dataset**

![Screenshot 2024-01-26 145935](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/ffa3fddc-7b84-4996-8648-044da26f4072)

**Data Cleaning Process**
I started by using Visual Basic for Application (VBA) to remove the special characters, which was successful.

![Screenshot 2024-01-26 145813](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/4a737443-ef9c-459d-8188-e48f17a603bd)

However, a colleague suggested using Power Query, which turned out to be the perfect tool for the job. The following steps were taken in Power Query to clean the data:

- **Load the data:** A new Excel workbook was opened, and on the menu page, I clicked on Data and located the New Query option. From the drop-down menu, I selected "From File" and chose the compacted file for the database, which was in CSV format. The file was loaded, and I changed the file origin to 65001: Unicode (UTF-8) and also selected "Data Type Detection Based on the entire dataset." Changing the file origin ensured that the players were correctly spelled, and it helped to relieve me of the pain of special characters.

![Screenshot 2024-01-26 145935](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/0aa91ae0-cbe6-4fd2-bfec-fbb854587c2c)

- **Load the data into Power Query:** After loading the data, I clicked on the Load drop-down menu and selected "Load To." From the drop-down menu, I chose "Table" and "Existing Worksheet" and clicked "Load." The data was loaded onto the Excel sheet, and I had to locate their Power Query on the right-hand side of the Excel and double-clicked on the Work Query file to load their file to Power Query.

![Screenshot 2024-01-26 150017](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/75984597-7bd5-46c8-9209-ac9c2df3d5ae)

- **Align the data:** I surveyed the data to find out why the cells were big and noticed that the Club column in the observation columns was down while others were written up. I selected the column, right-clicked from the attribute, selected "Transform" from the drop-down menu, and selected the "Length" option. This procedure adjusted it, and the whole data set was well-aligned.

![Screenshot 2024-01-26 150047](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/4e0541ca-6dd9-4478-b82c-2986d5918199)

- **Use filter to check for any data to be cleaned:** I used the filter to check for any data set to be cleaned and noticed that Name, LongName, PhotoUrl, PlayerUrl, Nationality, Age, OVA, POT, Club were already cleaned and were in good shape.

- **Clean the Contract column:** I proceeded to remove a special character and replace it with a dash in the Contract column. This was achieved by selecting the column from the attribute, right-clicking on the Contract attribute, and selecting “Replaced Values,”.

![Screenshot 2024-01-26 150131](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/7eace69c-7850-4592-b196-9a568da8b8f4)

- **Separate positions of the players:** I decided to separate the positions of the players. This was achieved by selecting the Position menu from the attribute (header) and right-clicking, then selecting “Split Columns,” picking the delimiter, and selecting “OK.” The Position.2 and Position.3 had a lot of nulls, so I proceeded to replace them with empty spaces. I used the filter to check the position columns and noticed that they had been properly cleaned.

![Screenshot 2024-01-26 150202](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/3c58d2bf-ee9e-4c4e-8d40-2b088c2f235a)

- **Convert height to cm:** I noticed that some heights were in cm while others were in foot-inch. I decided to make everything in cm. To do this, I split the column by delimiter and chose the custom option, inputting the proper conversion figure. This created a new column called height2, with all values in inches, leaving the height1 column with cm and feet. I then proceeded to convert the height1 in feet to inches by creating a new column using the conditional column function.

![Screenshot 2024-01-26 150900](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/74baee9a-37cb-4ff6-8471-b3e3ed678090)

I removed the cm sign, changed the height1 and custom columns to decimal numbers, and multiplied the height in cm by 1 and the height in feet by 12 to convert them to inches. We then added the height2 column (in inches) to the multiplication column (in inches) and replaced null values with zero. This created a new column called the Addition column. We then converted the total height to cm by dividing the addition column by the custom1 column, using the divide function in the standard. This created a new column called the division column, with all values in cm.

![Screenshot 2024-01-26 150312](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/31b256f1-ea06-488f-9cee-b0dc0c9a28b8)

I changed the division column to a whole number, replaced the initial height column with the division column, deleted the custom, custom1, multiplication, and addition columns, and then dragged the height in cm to replace the height1 and height2 columns.

- **Convert weight to kg:** In the weight column, I noticed that the weight was in kg and lbs. To standardize the weight measurement, I decided to convert everything to kg. Using the conditional column function, I created a new column called KG to convert lbs to kg.

![Screenshot 2024-01-26 150347](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/0bb071b9-7dc8-4671-bc6e-17e8a55017b7)

I then changed the data type of the weight column to a decimal number and removed the kg and pounds. Next, I multiplied both the new KG column and the weight column to create a new column called the multiplication column, which I renamed to the weight column in kg (weight (kg)).

![Screenshot 2024-01-26 150429](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/1ba04ae6-d22b-4f5a-9ade-f6de53f66c48)

The data cleaning process continued until the dataset was free of errors and 100% accurate.

## Preview of Cleaned Data

![Screenshot 2024-01-26 150508](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/40a9b6cb-f108-4aa1-880b-f060ab4e1d65)

## Conclusion

This procedure shows that data cleaning can be a complex process, but it is essential to ensure that the data is reliable and can be used for analysis. The steps I took to clean the data may not be the only way to do it, but they demonstrate the importance of attention to detail and the use of tools available to get the job done.

_Thanks to Promise Chinonso and the rest of the hosts who organized this challenge. it’s really impacted added knowledge._
