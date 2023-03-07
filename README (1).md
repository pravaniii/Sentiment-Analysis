
SENTIMENT ANALYSIS: CONSUMER COMPLAINTS - FINANCIAL PRODUCTS 💵
------------------
✨ ABOUT THE DATASET ✨ 
The data set contains consumer complaints on 11 financial products - Debt collection, Consumer Loan, Mortgage, Credit card, Credit reporting, Student loan, Bank account or service, Payday loan, Money transfers, Other financial service, Prepaid card.





## Done By 🌻
Pravani Pradhan
## Data Dictionary 📖
Following are the columns I used: 
1. Data.received: The date the complaint was received
2. Product: Product about which complaint was registered
3. Issue: Primary issue of which complaint was registered  
4. Company: The Company against which complaint was registered
5. State: State of the complaint

## Data Cleaning 🧼
1. Issues Column 
- Broke down each word of the issue complaint to be in separate rows using 'unnest_tokens'
 
      sentiment_issue <- unnest_tokens(tbl = data_filter, input = Issue, output = word)

2. Remove Stop Words 
- Scanned every single word of the issues complaint and recorded all the stop words (i.e a, about, the, all, etc) using 'get_stopwords'
- removed all the stop words from the issues complaint using 'anti_join'. 

      connecting_words <- get_stopwords(source = 'smart')
      sentiment_issue <- anti_join(sentiment_issue, connecting_words, by= 'word')
## Data Analysis 🔍

1. Number of complaints per financial product 💸 

![Add Screenshot](https://raw.githubusercontent.com/pravaniii/Text-Analysis/main/Total%20number%20of%20Complaints.png?token=GHSAT0AAAAAAB7T2G2BJRWWUKDJBYBVR44YZAGWPFQ)
- The highest number of complaints was related to Mortgage with 210324 issues filed, followed by debt collection with 124236,  and credit reporting with 119195. 
- Virtual currency has the least number of complaints with only 14 complaints filed.
- The chart above shows that the most number of complaints filed during the time span was related to mortage. 


2. Number of complaints in the Mid-Western States📍 
![Add Screenshot](https://raw.githubusercontent.com/pravaniii/Text-Analysis/main/No.%20of%20Complaints%20in%20Mid-west.png?token=GHSAT0AAAAAAB7T2G2AJ72MLVAMQDE4I7BWZAGWLCQ)
Since this data set was huge, I wanted to focus only the Mid-Western states instead of looking at all the states.
- Here we see that there is a DIRECT CORRELATION between the population of the state and the number of complaints filed.
- Illinios, the most populous state, has the most number of complaints filed with a total of 24190 complaints. 
- Ohio, the second most populous state, is the second state with the most number of complaints filed with 20705. 
 

3. Frequency of Negative and Positive words   
![Add Screenshot](https://raw.githubusercontent.com/pravaniii/Text-Analysis/main/Frequency%20of%20positive%20and%20negative%20words.png?token=GHSAT0AAAAAAB7T2G2AKKEUYYS4WFIZVNZCZAGY7TQ)
- There are clearly a lot more words with negative sentiment as compared to the words with positive sentiment. This is fitting for the data since I analysed complaints. 
- 'Incorrect' is the most used negative word 
- 'Debt' is the second most used negative word
- We can assume that the most reoccuring complaint is related to Debt as it can fall into various financial product categories 


4. Total number of Negative 🚫 and positive words 🌈
![Add Screenshot](https://raw.githubusercontent.com/pravaniii/Text-Analysis/main/Total%20Negative%20words%20used.png?token=GHSAT0AAAAAAB7T2G2BEN45U5TGWLF33AAOZAGVV5Q)
- There were 16 negative words detected using the 'bing' functiono
- The most used negative word is 'Incorrect' 

![Add Screenshot](https://raw.githubusercontent.com/pravaniii/Text-Analysis/main/Total%20number%20of%20positive%20words.png?token=GHSAT0AAAAAAB7T2G2BVJQIGRUJHX3UY27SZAGV7JA)
- Here we see that there were only 4 positive words detected.
- Although, they are positive words we can assume that they were used in a negative conatation since the data set is about complaints 

5. Sentiment Analysis of Mid-Western States
![Add Screenshot](https://raw.githubusercontent.com/pravaniii/Text-Analysis/main/Midwest%20sentiments%20chart.png?token=GHSAT0AAAAAAB7T2G2BDT7M3M2LYZOCYUS6ZAGWFHA)
- Illinios has the most number of negative sentiment word with credit reporting and Debt collection being the major two issues. 
- We see that debt collection and credit reporting are the two major financial products that have the most number issues in every state. 

6. Word Cloud ☁️
![Add Screenshot](https://raw.githubusercontent.com/pravaniii/Text-Analysis/main/Word%20cloud.png?token=GHSAT0AAAAAAB7T2G2ACWKY2NXMEU63BE3MZAGV5PA)


## Conclusion 👾
1. There is a direct relationship between the population size of the Midwestern states and the number of complaints filed. 
2. There is a pattern of the same financial products having propootional number of issues in each state (i.e. Debt collection and credit reporting being the top complaints in all states)
3. 'Debt' and 'Incorrect' are the most repeated negative words
## Learnings📚
The following are new things I learned after doing this project: 
1. New library and functions needed to do sentiment analysis
2. Calculating the overall sentiment 
3. How to make a word cloud 
4. How to a dynamic shiny app with a graph 




