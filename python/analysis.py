# European Happiness Analysis
# Data analysis using Python, Pandas and Matplotlib

import pandas as pd
import matplotlib.pyplot as plt

# Load the dataset
df = pd.read_csv("../data/european_happiness.csv")

# Display the first five rows
print(df.head())

# Check the dataset structure
print(df.info())

# Check for missing values
print("\nMissing values:")
print(df.isnull().sum())

# Summary statistics
print("\nSummary statistics:")
print(df.describe())

# Happiness ranking
happiness_ranking = df.sort_values(
    by="Happiness Score",
    ascending=False
)

print("\nTop 10 happiest countries:")
print(happiness_ranking[["Country", "Happiness Score"]].head(10))

# Visualize the top 10 happiest countries
top_10 = happiness_ranking.head(10)

plt.figure(figsize=(10, 6))
plt.barh(top_10["Country"], top_10["Happiness Score"])
plt.xlabel("Happiness Score")
plt.ylabel("Country")
plt.title("Top 10 Happiest Countries in Europe")
plt.gca().invert_yaxis()
plt.tight_layout()
plt.show()
