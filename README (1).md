
CONSUMER COMPLAINTS - FINANCIAL PRODUCTS 💵
------------------
✨ ABOUT THE DATASET ✨ 
The data set contains consumer complaints on 11 financial products - Debt collection, Consumer Loan, Mortgage, Credit card, Credit reporting, Student loan, Bank account or service, Payday loan, Money transfers, Other financial service, Prepaid card.





## Data Dictionary 📖
Following are the columns I used: 
1. Data.received: The date the complaint was received
2. Product: Product about which complaint was registered
3. Sub.Product: Sub-Product about which complaint was registered
4. Issue: Primary issue of which complaint was registered 
5. Sub.Issue: Granular level issue of which complaint was registered
6. Company: The Company against which complaint was registered
7. State: State of the complaint

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
2. Number of complaints in each state 📍
3. Word Cloud ☁️
4. Total number of Negative words 🚫
5. Total number of positive words 🌈
## Learnings📚
1. 
## Conclusion 👾