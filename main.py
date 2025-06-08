from fetcher import fetch_html
from parser import parse_articles
from saver import save_to_csv

if __name__ == "__main__":
    url = "https://example.com/news"
    html = fetch_html(url)
    articles = parse_articles(html)
    save_to_csv(articles, "output.csv")
