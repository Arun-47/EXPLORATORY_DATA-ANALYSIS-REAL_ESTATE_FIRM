
## REAL ESTATE FIRM TARGET AUDIENCE


### OVERVIEW
This is an minor Data analysis project. That analyse
 the existing
customer data of an Real estate firm to find insights, that can
be used to make data driven 
decision to help the firm's upcoming marketing campaign
is USA.


### DATA SOURCE
The data was taken from kaggle dataset :[Real Estate Data for Flat prices](https://www.kaggle.com/poonamvermaa/real-estate-data-for-flat-prices)




### PROCESS
  Data cleaning and manupulation was done for fixing or removing corrupted data within the dataset.
Data attributes that may create bias where also removed.
The code SQL for data cleansing can be found [Here](https://github.com/Arun-47/TARGET-AUDIENCE-REALESTATE-MARKETING-CAMPAIGN-USA/blob/main/RE_DATACLEANING.sql)

The clensed dataset was furthur analysed statistically on relevant attributes to find insights that may help the objective. [Analysis code](https://github.com/Arun-47/TARGET-AUDIENCE-REALESTATE-MARKETING-CAMPAIGN-USA/blob/main/RE_ANALYSIS.sql)

Finally #tableau was used to visualization the insights found during the Analysis. [Dashboard](https://public.tableau.com/app/profile/arun.kumar7328/viz/REAL_ES/Dashboard1) 

### SOFTWARE

- SQL (Data cleansing and Analysis)
- Microsoft excel (Calculations)
- Tableau (data visualization)
### VISUALIZATIONS

#### [SALES PER STATE IN USA](https://github.com/Arun-47/TARGET-AUDIENCE-REALESTATE-MARKETING-CAMPAIGN-USA/blob/main/VISUALIZATIONS/Screenshot%20(222).png)
![App Screenshot](https://github.com/Arun-47/TARGET-AUDIENCE-REALESTATE-MARKETING-CAMPAIGN-USA/blob/main/VISUALIZATIONS/Screenshot%20(222).png?raw=true)
 
 - A pareto diagram showing number of clients in each states
 - Majority of the sales are from California
 - About 80% of the sales are from California, Nevada and Colorado 
 - These 3 states have responded well to our previous marketing campaigns


 #### [AGE OF CLIENTS](https://github.com/Arun-47/TARGET-AUDIENCE-REALESTATE-MARKETING-CAMPAIGN-USA/blob/main/VISUALIZATIONS/Screenshot%20(223).png)
![App Screenshot](https://github.com/Arun-47/TARGET-AUDIENCE-REALESTATE-MARKETING-CAMPAIGN-USA/blob/main/VISUALIZATIONS/Screenshot%20(223).png?raw=true)
 
 - Histogram showing the number of clients per age interval 
 - The age of the clients have the central tendency values:
    - MEAN = 45.39
    - MEDIAN = 44
    - MODE = 48
 - Has a variance (std.dev) of 12.9
 - As the Mean and Median are close we don't have any large outliers.


  #### [CLIENT ENTITY](https://github.com/Arun-47/TARGET-AUDIENCE-REALESTATE-MARKETING-CAMPAIGN-USA/blob/main/VISUALIZATIONS/Screenshot%20(225).png)
![App Screenshot](https://github.com/Arun-47/TARGET-AUDIENCE-REALESTATE-MARKETING-CAMPAIGN-USA/blob/main/VISUALIZATIONS/Screenshot%20(225).png?raw=true)
 
 - Percentage of sales from each entity of clients
 - Almost 90% of our clients are individuals and around 10% are other firms


#### [ADVERTISEMENT WITH SUCESSFUL SALES](https://github.com/Arun-47/TARGET-AUDIENCE-REALESTATE-MARKETING-CAMPAIGN-USA/blob/main/VISUALIZATIONS/Screenshot%20(227).png)
![App Screenshot](https://github.com/Arun-47/TARGET-AUDIENCE-REALESTATE-MARKETING-CAMPAIGN-USA/blob/main/VISUALIZATIONS/Screenshot%20(227).png?raw=true)
 
 - Mode of advertisement that clients found us from
 - 62% found our firm in website advertisements, 28% through agency and rest of them from existing clients.

#### [AGE OF THE CLIENT VS PRICE OF PROPERTY BOUGHT](https://github.com/Arun-47/TARGET-AUDIENCE-REALESTATE-MARKETING-CAMPAIGN-USA/blob/main/VISUALIZATIONS/Screenshot%20(226).png)
![App Screenshot](https://github.com/Arun-47/TARGET-AUDIENCE-REALESTATE-MARKETING-CAMPAIGN-USA/blob/main/VISUALIZATIONS/Screenshot%20(226).png?raw=true)
 
 - A scatter plot between age and price of property bought. To find does age of the client has an impact of price of property they buy.
 - We cannot see any obvious trend. So lets calculate correlation coefficient:
      - corr.coeff = -0.19
 - As the corr.coeff below 0.2. We can say that age does the affect the price of the property the client buys.

 






## INSIGHTS
- 66% of our sales comes from California, with Navada, Colorado, Oregon forming almost 90% of the sales in US.
- Around 70% of the clients are from age of 30 to 70. With a mean of 45 and st.dev of 13 years.
- As the histogram is right skewed younger are most likely to buy property than older people
- Advertisements done on websites has a better respons from clients
- 90% of are customers are individuals
- There is no relationship between age of a customer and price they are willing to pay


## 🔗 Links
 - [COMPLETE VISUALIZATION DASHBOARD](https://public.tableau.com/app/profile/arun.kumar7328/viz/REAL_ES/Dashboard1#1)
 - [DATASET](https://www.kaggle.com/poonamvermaa/real-estate-data-for-flat-prices)
