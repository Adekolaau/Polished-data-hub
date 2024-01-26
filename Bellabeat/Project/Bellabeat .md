Google Capstone Project - Bellabeat
================

# Bellabeat Data Analysis

## Introduction

In this analysis, I will explore and visualize the Bellabeat datasets to
gain insights into smart device usage and its relationship with
Bellabeat’s products. The datasets include daily activity, hourly
calories, hourly intensities, hourly steps, sleep day, and weight log
information. I will focus on data cleaning, exploration, and
visualization to address specific business questions and provide
valuable insights for Bellabeat.

## Installing and Loading Packages

I will start by installing and loading necessary packages for data
manipulation and visualization.

``` r
install.packages("tidyverse")
```

    ## Installing package into '/cloud/lib/x86_64-pc-linux-gnu-library/4.3'
    ## (as 'lib' is unspecified)

``` r
install.packages("janitor")
```

    ## Installing package into '/cloud/lib/x86_64-pc-linux-gnu-library/4.3'
    ## (as 'lib' is unspecified)

``` r
install.packages("here")
```

    ## Installing package into '/cloud/lib/x86_64-pc-linux-gnu-library/4.3'
    ## (as 'lib' is unspecified)

``` r
library(tidyverse)
```

    ## ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
    ## ✔ dplyr     1.1.2     ✔ readr     2.1.4
    ## ✔ forcats   1.0.0     ✔ stringr   1.5.0
    ## ✔ ggplot2   3.4.2     ✔ tibble    3.2.1
    ## ✔ lubridate 1.9.2     ✔ tidyr     1.3.0
    ## ✔ purrr     1.0.1     
    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()
    ## ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors

``` r
library(janitor)
```

    ## 
    ## Attaching package: 'janitor'
    ## 
    ## The following objects are masked from 'package:stats':
    ## 
    ##     chisq.test, fisher.test

``` r
library(here)
```

    ## here() starts at /cloud/project

## Loading datasets

Next, I will load the datasets required for analysis:

``` r
daily_activity <- read.csv("/cloud/project/bellabeat/dailyActivity_merged.csv")
hourly_calories <- read.csv("/cloud/project/bellabeat/hourlyCalories_merged.csv")
hourly_intensities <- read.csv("/cloud/project/bellabeat/hourlyIntensities_merged.csv")
hourly_steps <- read.csv("/cloud/project/bellabeat/hourlySteps_merged.csv")
sleep_day <- read.csv("/cloud/project/bellabeat/sleepDay_merged.csv")
weight_loginfo <- read.csv("/cloud/project/bellabeat/weightLogInfo_merged.csv")
```

## Data Cleaning and Exploration

I will clean and explore each dataset to prepare them for analysis.

### dailyActivity_merged Dataset

I used the clean_names function to ensure consistency in the dataset,
then i converted the ‘activity_date’ column to date datatype instead of
character datatype.

``` r
daily_activity <- daily_activity %>%
  clean_names()

daily_activity$activity_date <- as.Date(daily_activity$activity_date, format = "%m/%d/%Y")

glimpse(daily_activity)
```

    ## Rows: 940
    ## Columns: 15
    ## $ id                         <dbl> 1503960366, 1503960366, 1503960366, 1503960…
    ## $ activity_date              <date> 2016-04-12, 2016-04-13, 2016-04-14, 2016-0…
    ## $ total_steps                <int> 13162, 10735, 10460, 9762, 12669, 9705, 130…
    ## $ total_distance             <dbl> 8.50, 6.97, 6.74, 6.28, 8.16, 6.48, 8.59, 9…
    ## $ tracker_distance           <dbl> 8.50, 6.97, 6.74, 6.28, 8.16, 6.48, 8.59, 9…
    ## $ logged_activities_distance <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
    ## $ very_active_distance       <dbl> 1.88, 1.57, 2.44, 2.14, 2.71, 3.19, 3.25, 3…
    ## $ moderately_active_distance <dbl> 0.55, 0.69, 0.40, 1.26, 0.41, 0.78, 0.64, 1…
    ## $ light_active_distance      <dbl> 6.06, 4.71, 3.91, 2.83, 5.04, 2.51, 4.71, 5…
    ## $ sedentary_active_distance  <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
    ## $ very_active_minutes        <int> 25, 21, 30, 29, 36, 38, 42, 50, 28, 19, 66,…
    ## $ fairly_active_minutes      <int> 13, 19, 11, 34, 10, 20, 16, 31, 12, 8, 27, …
    ## $ lightly_active_minutes     <int> 328, 217, 181, 209, 221, 164, 233, 264, 205…
    ## $ sedentary_minutes          <int> 728, 776, 1218, 726, 773, 539, 1149, 775, 8…
    ## $ calories                   <int> 1985, 1797, 1776, 1745, 1863, 1728, 1921, 2…

I checked for duplicate in the dataset

``` r
sum(duplicated(daily_activity))
```

    ## [1] 0

I checked the number of unique users from the ‘id’ column

``` r
daily_activity %>% 
  distinct(id) %>%     
  n_distinct()
```

    ## [1] 33

### hourlyCalories_merged Dataset

I used the clean_names function to ensure consistency in the dataset,
then i converted the ‘activity_hour’ column to POSIXct datatype instead
of character datatype.

``` r
hourly_calories <- hourly_calories %>%
  clean_names()

hourly_calories$activity_hour <- as.POSIXct(hourly_calories$activity_hour, format = "%m/%d/%Y %I:%M:%S %p")

glimpse(hourly_calories)
```

    ## Rows: 22,099
    ## Columns: 3
    ## $ id            <dbl> 1503960366, 1503960366, 1503960366, 1503960366, 15039603…
    ## $ activity_hour <dttm> 2016-04-12 00:00:00, 2016-04-12 01:00:00, 2016-04-12 02…
    ## $ calories      <int> 81, 61, 59, 47, 48, 48, 48, 47, 68, 141, 99, 76, 73, 66,…

I checked for duplicate in the dataset

``` r
sum(duplicated(hourly_calories))
```

    ## [1] 0

I checked the number of unique users from the ‘id’ column

``` r
hourly_calories %>% 
  distinct(id) %>%     
  n_distinct()
```

    ## [1] 33

### hourlyIntensities_merged Dataset

I used the clean_names function to ensure consistency in the dataset,
then i converted the ‘activity_hour’ column to POSIXct datatype instead
of character datatype.

``` r
hourly_intensities <- hourly_intensities %>%
  clean_names()

hourly_intensities$activity_hour <- as.POSIXct(hourly_intensities$activity_hour, format = "%m/%d/%Y %I:%M:%S %p")

glimpse(hourly_intensities)
```

    ## Rows: 22,099
    ## Columns: 4
    ## $ id                <dbl> 1503960366, 1503960366, 1503960366, 1503960366, 1503…
    ## $ activity_hour     <dttm> 2016-04-12 00:00:00, 2016-04-12 01:00:00, 2016-04-1…
    ## $ total_intensity   <int> 20, 8, 7, 0, 0, 0, 0, 0, 13, 30, 29, 12, 11, 6, 36, …
    ## $ average_intensity <dbl> 0.333333, 0.133333, 0.116667, 0.000000, 0.000000, 0.…

I checked for duplicate in the dataset

``` r
sum(duplicated(hourly_intensities))
```

    ## [1] 0

I checked the number of unique users from the ‘id’ column

``` r
hourly_intensities %>% 
  distinct(id) %>%     
  n_distinct()
```

    ## [1] 33

### Merging hourly_intensities and hourly_calories datasets

The number of unique users (id) in dataset ‘hourly_intensities’
corresponds with that of ‘hourly_calories’, therefore, I will perform a
full join in other to merge both datasets into 1 and store in it a new
data frame.

``` r
intensities_calories <- merge(hourly_intensities, hourly_calories,
                              by.x = c("id", "activity_hour"),
                              by.y = c("id", "activity_hour"))

glimpse(intensities_calories)
```

    ## Rows: 22,099
    ## Columns: 5
    ## $ id                <dbl> 1503960366, 1503960366, 1503960366, 1503960366, 1503…
    ## $ activity_hour     <dttm> 2016-04-12 00:00:00, 2016-04-12 01:00:00, 2016-04-1…
    ## $ total_intensity   <int> 20, 8, 7, 0, 0, 0, 0, 0, 13, 30, 29, 12, 11, 6, 36, …
    ## $ average_intensity <dbl> 0.333333, 0.133333, 0.116667, 0.000000, 0.000000, 0.…
    ## $ calories          <int> 81, 61, 59, 47, 48, 48, 48, 47, 68, 141, 99, 76, 73,…

### hourlySteps_merged Dataset

I used the clean_names function to ensure consistency in the dataset,
then i converted the ‘activity_hour’ column to POSIXct datatype instead
of character datatype.

``` r
hourly_steps <- hourly_steps %>%
  clean_names()

hourly_steps$activity_hour <- as.POSIXct(hourly_steps$activity_hour, format = "%m/%d/%Y %I:%M:%S %p")

glimpse(hourly_steps)
```

    ## Rows: 22,099
    ## Columns: 3
    ## $ id            <dbl> 1503960366, 1503960366, 1503960366, 1503960366, 15039603…
    ## $ activity_hour <dttm> 2016-04-12 00:00:00, 2016-04-12 01:00:00, 2016-04-12 02…
    ## $ step_total    <int> 373, 160, 151, 0, 0, 0, 0, 0, 250, 1864, 676, 360, 253, …

I checked for duplicate in the dataset

``` r
sum(duplicated(hourly_steps))
```

    ## [1] 0

I checked the number of unique users from the ‘id’ column

``` r
hourly_steps %>% 
  distinct(id) %>%     
  n_distinct()
```

    ## [1] 33

### Merging intensities_calories and hourly_steps datasets

The number of unique users (id) in dataset ‘hourly_steps’ corresponds to
that of dataset ‘intensities_calories’, therefore I will perform a full
join in other to merge both datasets into 1 and store in it a new data
frame.

``` r
intensities_calories_steps <- merge(intensities_calories, hourly_steps,
                                    by.x = c("id", "activity_hour"),
                                    by.y = c("id", "activity_hour"))

glimpse(intensities_calories_steps)
```

    ## Rows: 22,099
    ## Columns: 6
    ## $ id                <dbl> 1503960366, 1503960366, 1503960366, 1503960366, 1503…
    ## $ activity_hour     <dttm> 2016-04-12 00:00:00, 2016-04-12 01:00:00, 2016-04-1…
    ## $ total_intensity   <int> 20, 8, 7, 0, 0, 0, 0, 0, 13, 30, 29, 12, 11, 6, 36, …
    ## $ average_intensity <dbl> 0.333333, 0.133333, 0.116667, 0.000000, 0.000000, 0.…
    ## $ calories          <int> 81, 61, 59, 47, 48, 48, 48, 47, 68, 141, 99, 76, 73,…
    ## $ step_total        <int> 373, 160, 151, 0, 0, 0, 0, 0, 250, 1864, 676, 360, 2…

I will change the “activity_hour” column to 24hrs time frame

``` r
intensities_calories_steps$activity_hour <- format(intensities_calories_steps$activity_hour, format = "%Y-%m-%d %H:%M:%S")

glimpse(intensities_calories_steps)
```

    ## Rows: 22,099
    ## Columns: 6
    ## $ id                <dbl> 1503960366, 1503960366, 1503960366, 1503960366, 1503…
    ## $ activity_hour     <chr> "2016-04-12 00:00:00", "2016-04-12 01:00:00", "2016-…
    ## $ total_intensity   <int> 20, 8, 7, 0, 0, 0, 0, 0, 13, 30, 29, 12, 11, 6, 36, …
    ## $ average_intensity <dbl> 0.333333, 0.133333, 0.116667, 0.000000, 0.000000, 0.…
    ## $ calories          <int> 81, 61, 59, 47, 48, 48, 48, 47, 68, 141, 99, 76, 73,…
    ## $ step_total        <int> 373, 160, 151, 0, 0, 0, 0, 0, 250, 1864, 676, 360, 2…

it appears to be in character type after conversion, so i will Convert
“activity_hour” to a proper datetime object and extract the time
component into a new column “activity_time”

``` r
intensities_calories_steps$activity_hour <- parse_date_time(intensities_calories_steps$activity_hour, orders = "ymd H:M:S")

intensities_calories_steps$activity_time <- format(intensities_calories_steps$activity_hour, format = "%H:%M:%S")

glimpse(intensities_calories_steps)
```

    ## Rows: 22,099
    ## Columns: 7
    ## $ id                <dbl> 1503960366, 1503960366, 1503960366, 1503960366, 1503…
    ## $ activity_hour     <dttm> 2016-04-12 00:00:00, 2016-04-12 01:00:00, 2016-04-1…
    ## $ total_intensity   <int> 20, 8, 7, 0, 0, 0, 0, 0, 13, 30, 29, 12, 11, 6, 36, …
    ## $ average_intensity <dbl> 0.333333, 0.133333, 0.116667, 0.000000, 0.000000, 0.…
    ## $ calories          <int> 81, 61, 59, 47, 48, 48, 48, 47, 68, 141, 99, 76, 73,…
    ## $ step_total        <int> 373, 160, 151, 0, 0, 0, 0, 0, 250, 1864, 676, 360, 2…
    ## $ activity_time     <chr> "00:00:00", "01:00:00", "02:00:00", "03:00:00", "04:…

I want to reconfirm if any duplicate exist in the dataset

``` r
sum(duplicated(intensities_calories_steps))
```

    ## [1] 0

### sleepDay_merged Dataset

I used the clean_names function to ensure consistency in the dataset,
then i converted the ‘sleep_day’ column to POSIXct datatype instead of
character datatype.

The “sleep_day” column only contains the date part without any specific
time information, so it has been interpreted as (00:00:00 AM (midnight))
by default. Since the “sleep_day” column only contains date information
without any specific time, it will be appropriate to convert it to date
datatype.

``` r
sleep_day <- sleep_day %>%
  clean_names()

sleep_day$sleep_day <- as.POSIXct(sleep_day$sleep_day, format = "%m/%d/%Y %I:%M:%S %p")
sleep_day$sleep_day <- as.Date(sleep_day$sleep_day, format = "%m/%d/%Y")

glimpse(sleep_day)
```

    ## Rows: 413
    ## Columns: 5
    ## $ id                   <dbl> 1503960366, 1503960366, 1503960366, 1503960366, 1…
    ## $ sleep_day            <date> 2016-04-12, 2016-04-13, 2016-04-15, 2016-04-16, …
    ## $ total_sleep_records  <int> 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1…
    ## $ total_minutes_asleep <int> 327, 384, 412, 340, 700, 304, 360, 325, 361, 430,…
    ## $ total_time_in_bed    <int> 346, 407, 442, 367, 712, 320, 377, 364, 384, 449,…

I checked for duplicate in the dataset

``` r
sum(duplicated(sleep_day))
```

    ## [1] 3

Removing duplicates (3) in sleep_day dataset to avoid
over-representation

``` r
sleep_day <- sleep_day %>%
  distinct(id, .keep_all = TRUE)

glimpse(sleep_day)
```

    ## Rows: 24
    ## Columns: 5
    ## $ id                   <dbl> 1503960366, 1644430081, 1844505072, 1927972279, 2…
    ## $ sleep_day            <date> 2016-04-12, 2016-04-29, 2016-04-15, 2016-04-12, …
    ## $ total_sleep_records  <int> 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1…
    ## $ total_minutes_asleep <int> 327, 119, 644, 750, 503, 61, 467, 274, 501, 535, …
    ## $ total_time_in_bed    <int> 346, 127, 961, 775, 546, 69, 531, 469, 541, 557, …

confirming if duplicates as been removed

``` r
sum(duplicated(sleep_day))
```

    ## [1] 0

I checked the number of unique user from the ‘id’ column

``` r
sleep_day %>% 
  distinct(id) %>%     
  n_distinct()
```

    ## [1] 24

### Merging daily_activity and sleep_day datasets

The number of unique users (id) in datasets ‘daily_activity’ and
‘sleep_day’ is 33 and 22 respectively, so a full join will be performed
in other to merge both datasets into 1 and store in it a new data frame.

With the “sleep_day” column now in the Date datatype, performing the
merge with the “daily_activity_v1” data accurately will be best based on
the matching dates.

``` r
activity_sleep <- merge(daily_activity, sleep_day,
                        by.x = c("id", "activity_date"),
                        by.y = c("id", "sleep_day"))

glimpse(activity_sleep)
```

    ## Rows: 24
    ## Columns: 18
    ## $ id                         <dbl> 1503960366, 1644430081, 1844505072, 1927972…
    ## $ activity_date              <date> 2016-04-12, 2016-04-29, 2016-04-15, 2016-0…
    ## $ total_steps                <int> 13162, 3176, 3844, 678, 4414, 5079, 10352, …
    ## $ total_distance             <dbl> 8.50, 2.31, 2.54, 0.47, 2.74, 3.42, 7.01, 5…
    ## $ tracker_distance           <dbl> 8.50, 2.31, 2.54, 0.47, 2.74, 3.42, 7.01, 5…
    ## $ logged_activities_distance <dbl> 0.000000, 0.000000, 0.000000, 0.000000, 0.0…
    ## $ very_active_distance       <dbl> 1.88, 0.00, 0.00, 0.00, 0.19, 0.00, 1.66, 3…
    ## $ moderately_active_distance <dbl> 0.55, 0.00, 0.00, 0.00, 0.35, 0.00, 1.94, 0…
    ## $ light_active_distance      <dbl> 6.06, 2.31, 2.54, 0.47, 2.20, 3.42, 3.41, 2…
    ## $ sedentary_active_distance  <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
    ## $ very_active_minutes        <int> 25, 0, 0, 0, 3, 0, 19, 44, 4, 1, 0, 0, 6, 0…
    ## $ fairly_active_minutes      <int> 13, 0, 0, 0, 8, 0, 32, 19, 15, 9, 0, 0, 21,…
    ## $ lightly_active_minutes     <int> 328, 120, 176, 55, 181, 242, 195, 131, 331,…
    ## $ sedentary_minutes          <int> 728, 1193, 527, 734, 706, 1129, 676, 777, 7…
    ## $ calories                   <int> 1985, 2498, 1725, 2220, 1459, 1804, 2038, 1…
    ## $ total_sleep_records        <int> 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1…
    ## $ total_minutes_asleep       <int> 327, 119, 644, 750, 503, 61, 467, 274, 501,…
    ## $ total_time_in_bed          <int> 346, 127, 961, 775, 546, 69, 531, 469, 541,…

confirming how many unique users we now have, a distinct function will
be performed.

``` r
activity_sleep %>% 
  distinct(id) %>%     
  n_distinct()
```

    ## [1] 24

### weightLogInfo_merged Dataset

I used the clean_names function to ensure consistency in the dataset,
then i converted the ‘date’ column to POSIXct datatype instead of
character datatype.

``` r
weight_loginfo <- weight_loginfo %>%
  clean_names()

weight_loginfo$date <- as.POSIXct(weight_loginfo$date, format = "%m/%d/%Y %I:%M:%S %p")

glimpse(weight_loginfo)
```

    ## Rows: 67
    ## Columns: 8
    ## $ id               <dbl> 1503960366, 1503960366, 1927972279, 2873212765, 28732…
    ## $ date             <dttm> 2016-05-02 23:59:59, 2016-05-03 23:59:59, 2016-04-13…
    ## $ weight_kg        <dbl> 52.6, 52.6, 133.5, 56.7, 57.3, 72.4, 72.3, 69.7, 70.3…
    ## $ weight_pounds    <dbl> 115.9631, 115.9631, 294.3171, 125.0021, 126.3249, 159…
    ## $ fat              <int> 22, NA, NA, NA, NA, 25, NA, NA, NA, NA, NA, NA, NA, N…
    ## $ bmi              <dbl> 22.65, 22.65, 47.54, 21.45, 21.69, 27.45, 27.38, 27.2…
    ## $ is_manual_report <chr> "True", "True", "False", "True", "True", "True", "Tru…
    ## $ log_id           <dbl> 1.462234e+12, 1.462320e+12, 1.460510e+12, 1.461283e+1…

I check for duplicate in the dataset

``` r
sum(duplicated(weight_loginfo))
```

    ## [1] 0

I checked the number of unique user from the ‘id’ column

``` r
weight_loginfo %>% 
  distinct(id) %>%     
  n_distinct()
```

    ## [1] 8

## Summary Statistics

Let’s summarize the datasets before visualization.

``` r
summary(intensities_calories_steps)
```

    ##        id            activity_hour                    total_intensity 
    ##  Min.   :1.504e+09   Min.   :2016-04-12 00:00:00.00   Min.   :  0.00  
    ##  1st Qu.:2.320e+09   1st Qu.:2016-04-19 01:00:00.00   1st Qu.:  0.00  
    ##  Median :4.445e+09   Median :2016-04-26 06:00:00.00   Median :  3.00  
    ##  Mean   :4.848e+09   Mean   :2016-04-26 11:46:42.58   Mean   : 12.04  
    ##  3rd Qu.:6.962e+09   3rd Qu.:2016-05-03 19:00:00.00   3rd Qu.: 16.00  
    ##  Max.   :8.878e+09   Max.   :2016-05-12 15:00:00.00   Max.   :180.00  
    ##  average_intensity    calories        step_total      activity_time     
    ##  Min.   :0.0000    Min.   : 42.00   Min.   :    0.0   Length:22099      
    ##  1st Qu.:0.0000    1st Qu.: 63.00   1st Qu.:    0.0   Class :character  
    ##  Median :0.0500    Median : 83.00   Median :   40.0   Mode  :character  
    ##  Mean   :0.2006    Mean   : 97.39   Mean   :  320.2                     
    ##  3rd Qu.:0.2667    3rd Qu.:108.00   3rd Qu.:  357.0                     
    ##  Max.   :3.0000    Max.   :948.00   Max.   :10554.0

``` r
summary(activity_sleep)
```

    ##        id            activity_date         total_steps    total_distance  
    ##  Min.   :1.504e+09   Min.   :2016-04-12   Min.   :  678   Min.   : 0.470  
    ##  1st Qu.:2.340e+09   1st Qu.:2016-04-12   1st Qu.: 4324   1st Qu.: 2.868  
    ##  Median :4.502e+09   Median :2016-04-12   Median : 8337   Median : 6.065  
    ##  Mean   :4.764e+09   Mean   :2016-04-14   Mean   : 7957   Mean   : 5.644  
    ##  3rd Qu.:6.822e+09   3rd Qu.:2016-04-15   3rd Qu.:10593   3rd Qu.: 7.150  
    ##  Max.   :8.792e+09   Max.   :2016-04-29   Max.   :15108   Max.   :12.190  
    ##  tracker_distance logged_activities_distance very_active_distance
    ##  Min.   : 0.470   Min.   :0.00000            Min.   :0.000       
    ##  1st Qu.: 2.868   1st Qu.:0.00000            1st Qu.:0.000       
    ##  Median : 6.065   Median :0.00000            Median :0.305       
    ##  Mean   : 5.644   Mean   :0.09388            Mean   :1.384       
    ##  3rd Qu.: 7.150   3rd Qu.:0.00000            3rd Qu.:1.715       
    ##  Max.   :12.190   Max.   :2.25308            Max.   :9.580       
    ##  moderately_active_distance light_active_distance sedentary_active_distance
    ##  Min.   :0.0000             Min.   :0.470         Min.   :0                
    ##  1st Qu.:0.0000             1st Qu.:2.200         1st Qu.:0                
    ##  Median :0.2850             Median :3.035         Median :0                
    ##  Mean   :0.4088             Mean   :3.847         Mean   :0                
    ##  3rd Qu.:0.7300             3rd Qu.:5.723         3rd Qu.:0                
    ##  Max.   :1.9400             Max.   :9.480         Max.   :0                
    ##  very_active_minutes fairly_active_minutes lightly_active_minutes
    ##  Min.   : 0.00       Min.   : 0.000        Min.   : 55.0         
    ##  1st Qu.: 0.00       1st Qu.: 0.000        1st Qu.:149.8         
    ##  Median : 5.00       Median : 8.500        Median :192.0         
    ##  Mean   :20.58       Mean   : 9.125        Mean   :220.1         
    ##  3rd Qu.:29.75       3rd Qu.:15.000        3rd Qu.:282.5         
    ##  Max.   :89.00       Max.   :32.000        Max.   :518.0         
    ##  sedentary_minutes    calories    total_sleep_records total_minutes_asleep
    ##  Min.   : 502.0    Min.   :1450   Min.   :1.000       Min.   : 61.0       
    ##  1st Qu.: 710.5    1st Qu.:2018   1st Qu.:1.000       1st Qu.:313.8       
    ##  Median : 739.5    Median :2261   Median :1.000       Median :427.0       
    ##  Mean   : 789.7    Mean   :2415   Mean   :1.125       Mean   :390.7       
    ##  3rd Qu.: 832.5    3rd Qu.:2858   3rd Qu.:1.000       3rd Qu.:499.5       
    ##  Max.   :1193.0    Max.   :3654   Max.   :3.000       Max.   :750.0       
    ##  total_time_in_bed
    ##  Min.   : 69.0    
    ##  1st Qu.:353.5    
    ##  Median :460.5    
    ##  Mean   :432.4    
    ##  3rd Qu.:527.2    
    ##  Max.   :961.0

``` r
summary(weight_loginfo)
```

    ##        id                 date                          weight_kg     
    ##  Min.   :1.504e+09   Min.   :2016-04-12 06:47:11.00   Min.   : 52.60  
    ##  1st Qu.:6.962e+09   1st Qu.:2016-04-19 15:19:45.00   1st Qu.: 61.40  
    ##  Median :6.962e+09   Median :2016-04-27 23:59:59.00   Median : 62.50  
    ##  Mean   :7.009e+09   Mean   :2016-04-27 15:39:54.27   Mean   : 72.04  
    ##  3rd Qu.:8.878e+09   3rd Qu.:2016-05-04 15:24:10.50   3rd Qu.: 85.05  
    ##  Max.   :8.878e+09   Max.   :2016-05-12 23:59:59.00   Max.   :133.50  
    ##                                                                       
    ##  weight_pounds        fat             bmi        is_manual_report  
    ##  Min.   :116.0   Min.   :22.00   Min.   :21.45   Length:67         
    ##  1st Qu.:135.4   1st Qu.:22.75   1st Qu.:23.96   Class :character  
    ##  Median :137.8   Median :23.50   Median :24.39   Mode  :character  
    ##  Mean   :158.8   Mean   :23.50   Mean   :25.19                     
    ##  3rd Qu.:187.5   3rd Qu.:24.25   3rd Qu.:25.56                     
    ##  Max.   :294.3   Max.   :25.00   Max.   :47.54                     
    ##                  NA's   :65                                        
    ##      log_id         
    ##  Min.   :1.460e+12  
    ##  1st Qu.:1.461e+12  
    ##  Median :1.462e+12  
    ##  Mean   :1.462e+12  
    ##  3rd Qu.:1.462e+12  
    ##  Max.   :1.463e+12  
    ## 

## Visualization

Now, I will visualize the data to gain insights and answer specific
business questions.

### Intensities_calories_steps Dataset

###### Relationship between “step_total” and “calories”

``` r
ggplot(data = intensities_calories_steps, aes(x = step_total, y = calories)) +
  geom_point(color = "blue", size = 3, alpha = 0.5) +
  geom_smooth(method = "loess", se = FALSE, color = "red", linetype = "dashed") +
  labs(x = "Total Steps", y = "Calories Burned", title = "Calories Burned vs. Total Steps",
       subtitle = "Relationship between Total Steps and Calories Burned",
       caption = "Data source: intensities_calories_steps") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.4),
        plot.subtitle = element_text(hjust = 0.4))
```

    ## `geom_smooth()` using formula = 'y ~ x'

![](Google-Capstone-Project_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

- Based on the visualization of the data, it is evident that there is a
  positive correlation between the number of steps taken and the
  calories burned. This means that as the number of steps increases, the
  calories burned also increase. This positive correlation is a
  significant and encouraging finding for Bellabeat and its users, as it
  highlights the effectiveness of using step count as an indicator of
  physical activity and energy expenditure.

###### Relationship between “average_intensity” and “activity_hour”

``` r
int_cal_stp_new <- intensities_calories_steps %>%
  group_by(activity_time) %>%
  drop_na() %>%
  summarise(mean_total_int = mean(total_intensity))

ggplot(int_cal_stp_new, aes(x = activity_time, y = mean_total_int)) +
  geom_histogram( stat = "identity", fill = "blue") +
  labs(x = "Activity Time", y = "Average Total Intensity", title = "Average Total Intensity Over Time",
       subtitle = "Relationship between average intensity and activity hour",
       caption = "Data source: int_cal_stp_new") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        plot.title = element_text(hjust = 0.4),
        plot.subtitle = element_text(hjust = 0.4))
```

    ## Warning in geom_histogram(stat = "identity", fill = "blue"): Ignoring unknown
    ## parameters: `binwidth`, `bins`, and `pad`

![](Google-Capstone-Project_files/figure-gfm/unnamed-chunk-25-1.png)<!-- -->

Based on the visualization of the data, several key observations can be
made regarding people’s activity patterns:

- Peak Activity Hours: The data indicates that people are more active
  between 5 am and 10 pm. This suggests that the majority of users
  engage in various activities throughout the day, and there is no
  significant decline in activity during the evening hours.

- Evening Activity Surge: Specifically, the data shows that the most
  intense activity happens between 5 pm and 7 pm. During this time
  frame, it is likely that many individuals have finished their work or
  daily responsibilities and are now pursuing physical activities such
  as going to the gym or taking a walk or run. This time period presents
  a prime opportunity for the Bellabeat app to remind and motivate its
  users to engage in physical activities.

### Activity_sleep Dataset

###### Relationship between “total_minute_asleep” and “total_minute_in_bed”

``` r
ggplot(activity_sleep, aes(x = total_minutes_asleep, y = total_time_in_bed)) +
  geom_jitter(alpha = 0.7, color = "blue") +
  labs(x = "Total Minutes Asleep",
       y = "Total time in Bed",
       title = "Sleep Duration vs. Total Time in Bed",
       subtitle = "Relationship between total minutes asleep and total time in bed", caption = "Data source: activity_sleep") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.4),   
        plot.subtitle = element_text(hjust = 0.4))
```

![](Google-Capstone-Project_files/figure-gfm/plot_1-1.png)<!-- -->

- From the scatter plot visualization, it is evident that there is a
  positive linear correlation between the time spent in bed and sleep
  duration. This indicates that as the total time spent in bed
  increases, the total sleep duration also tends to increase. In other
  words, individuals who spend more time in bed are likely to get more
  sleep compared to those who spend less time in bed.

###### Relationship between “total minute asleep” and “sedentary minutes”

``` r
ggplot(data = activity_sleep, aes(x = total_minutes_asleep, y = sedentary_minutes)) +
  geom_point(color = "blue", size = 2, alpha = 0.5) +   
  geom_smooth(method = "loess", se = FALSE, color = "red", linetype = "dashed") +   
  labs(x = "Total Minutes Asleep", y = "Sedentary Minutes", title = "Minutes Asleep vs. Sedentary Minutes", 
       subtitle = "Relationship between Total Minutes Asleep and Sedentary Minutes",
       caption = "Data source: activity_sleep") +   
  theme_minimal() +   
  theme(plot.title = element_text(hjust = 0.4),   
        plot.subtitle = element_text(hjust = 0.4)) 
```

    ## `geom_smooth()` using formula = 'y ~ x'

![](Google-Capstone-Project_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

- From this visualization, it can be observed that there is a negative
  correlation between sedentary minutes and total minutes asleep. A
  negative correlation implies that as the sedentary minutes increase,
  the total minutes asleep decrease, and vice versa.

This suggests that spending more time in an inactive or sedentary state
during a specific period is associated with a reduction in the total
duration of sleep. In other words, individuals who have longer periods
of sedentary behavior may experience a decrease in their total sleep
duration.

## Summary of Recommendations from Visualizations:

### Relationship between “average_intensity” versus “activity_hour”

Based on the observations, Bellabeat can strategically utilize the 5 pm
to 7 pm time window to encourage and inspire its users to be more
active. Here are some suggestions:

- Push Notifications: Send push notifications around 5 pm to remind
  users to stay active and suggest activities like walking or jogging.
- Activity Challenges: Organize challenges during this time slot,
  offering rewards and badges to active participants.
- Personalized Activity Plans: Provide customized activity plans for
  users available between 5 pm and 7 pm.
- Community and Social Features: Create a social platform for users to
  share their achievements and motivate each other.
- Integration with Gyms: Partner with fitness centers to offer exclusive
  deals during these hours.

### Relationship between “steps_total” versus “calories”

Understanding the positive correlation between steps and calories
burned, Bellabeat can:

- Set Step Goals: Encourage users to achieve specific step counts daily
  or weekly.
- Calorie Tracking: Implement a feature to track calories burned based
  on steps and user profiles.
- Activity Intensity Insights: Provide insights into activity intensity
  based on step count and calories burned.
- In-App Rewards: Offer rewards and badges for reaching step and
  calorie-burning milestones.
- Personalized Recommendations: Offer personalized activity and dietary
  recommendations.

### Relationship between “total_minute_asleep” versus “total_minute_in_bed”

Encourage users to prioritize healthy sleep habits by allocating
sufficient time for sleep and creating bedtime routines. Bellabeat can
set reminders to ensure users spend enough time in bed for better sleep
quality and overall well-being.

### Relationship between “total minute asleep” versus “sedentary minutes”

While a negative correlation between sedentary minutes and total minutes
asleep is observed, further research is needed to establish causation.
To promote better sleep, Bellabeat can encourage reduced sedentary
behavior, especially near bedtime. Promoting physical activity and
avoiding prolonged inactivity may positively impact sleep quality, but
additional studies are required for a comprehensive understanding.

By incorporating these insights and recommendations into the Bellabeat
app, the company can provide its users with valuable guidance and
motivation to adopt healthier lifestyles and improve overall well-being.
