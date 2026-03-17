# Movie-Industry-Analysis
An SQL, Python and Power BI analysis of 5000 movies exploring what drives commercial success.


## Business Question
What makes a movie commercially successful? Does spending more always pay off?

## Tools Used
- **SQL (MySQL)** : exploratory data analysis and querying
- **Python (pandas, matplotlib, seaborn)** : data cleaning, transformation and visualization
- **Power BI** : interactive dashboard

## Dataset
TMDB 5000 Movies Dataset — 4,804 movies with budget, revenue, ratings, genres and release dates.  
Source: [Kaggle] https://www.kaggle.com/datasets/ademylz/tmdb-5000-movies

## Key Findings
1. **Comedy and Drama generate the highest ROI** : despite not being the most critically acclaimed genres, they consistently return the most per dollar invested
2. **Higher budgets do not guarantee better reviews** : low budget films rate slightly higher on average than blockbusters, and ROI has declined as industry budgets grew over the decades
3. **Quality and commercial success point to different genres** : Documentary, History and War are the highest rated genres, yet among the lowest earning. Horror sits in the middle of both. Studios face a clear tradeoff.

## Project Structure
- "movie_analysis.sql" : 6 exploratory queries covering revenue rankings, ROI by decade, language analysis and budget tiers
- "movie_analysis.ipynb" : data cleaning, genre parsing and 4 visualizations
- "Dashboard Screenshot.png" : Power BI dashboard screenshot

## Dashboard Preview
<img width="870" height="486" alt="image" src="https://github.com/user-attachments/assets/f05e0da5-9627-4400-bad1-8a859bd4af9d" />
