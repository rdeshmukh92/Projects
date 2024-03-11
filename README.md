# Projects

Welcome to my Projects. Please refer below links for my projects:

# Table of Contents

* [PowerBI](#PowerBI)
* [Tableau](#Tableau)
* [SQL](#SQL)
* [Data Lake](#Data_Lake)


# PowerBI
1. Created Covid-19 analysis dashboard. <br>
   Added its Screenshot. <br>
   Published link :
   https://app.powerbi.com/links/VYHQeVmZaz?ctid=759a48bb-e3f3-496c-a9b0-df256e635723&pbi_source=linkShare

2. Created basic reports for population data with creation of data model.<br>
   Added its screenshots. <br>
   Published link: https://app.powerbi.com/links/mVoCAz0TiM?ctid=759a48bb-e3f3-496c-a9b0-df256e635723&pbi_source=linkShare&bookmarkGuid=7e2a0259-aa1a-42f2-afd6-6cda83dec072

3. Created diversity and Inclusion reports to show comapany's manager, which will show performance based on gender, performnce in year 2021, 2022 and many more related visualization for getting a clear idea to HR managment.<br> 
   Added its screenshots.<br>
   Published link: https://app.powerbi.com/links/3T5uUq1_at?ctid=759a48bb-e3f3-496c-a9b0-df256e635723&pbi_source=linkShare   

4. Created customer retention report for HR and demographic report for customers. <br>
    Added its screenshots. <br>
    Published link: https://app.powerbi.com/links/JaJmc0PSL9?ctid=759a48bb-e3f3-496c-a9b0-df256e635723&pbi_source=linkShare&bookmarkGuid=329be149-4821-4a01-9cba-4fa139f70bd2 

5. Designed report for Call center agent's KPI. <br>
    Added its screenshot. <br>
    Published link: https://app.powerbi.com/links/MjQOjVB94U?ctid=759a48bb-e3f3-496c-a9b0-df256e635723&pbi_source=linkShare

# Tableau
1. Created Covid-19 analysis dashboard. <br>
   Added its Screenshot. <br>
   Published link :
   https://public.tableau.com/views/tableau_Covid-19_Dashboard/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link

2. Create SuperStore workbooks, dashboard and stories <br>
   Added its screenshot. <br>
   Published link: 
   https://public.tableau.com/shared/SJWSCKDBH?:display_count=n&:origin=viz_share_link
   
   https://public.tableau.com/views/Tableau_SuperStore_16879930543350/MyStory?:language=en-US&:display_count=n&:origin=viz_share_link
   
   https://public.tableau.com/views/tableau_superstore_dashboard2/Dashboard1?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

# SQL
1. Select, filter, sort and group functions (min, max, count) Queries for maven movies database. <br> 
2. Select queries with the help of join and union.

# Data_Lake
1. Created Data lake environment with Python programming designed to handle datasets in a multi-layered architecture. The primary goal is to ingest raw data, perform specific operations on it, and store the processed data in refined and curated layers. The script supports data in both CSV and JSON formats. 

2. Components:
   Ingest Data: The ingest_data function copies data from a source path to a destination path, creating a structured data lake.
   Read Data: The read_data function reads data from either CSV or JSON files. It throws a warning for unsupported file formats, allowing the script to gracefully handle such cases.
   Perform Data Operations: The perform_data_operations function applies layer-specific transformations to the dataset. In this example, it adds a 'Processed' column in the refined layer and reverses the 'FirstName' column in the curated layer.
   Main Pipeline: The main function orchestrates the entire pipeline. It sets up the project structure, including raw, refined, and curated layers. It then ingests sample datasets, processes them, and stores the results in their respective layers.

3. Project Structure:
   Raw Layer: Initial, unprocessed datasets reside in this layer.
   Refined Layer: Processed data with added features or modifications.
   Curated Layer: Further refined data with additional transformations.