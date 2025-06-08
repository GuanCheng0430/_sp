from bs4 import BeautifulSoup

def parse_articles(html):
    soup = BeautifulSoup(html, "html.parser")
    articles = []

    for item in soup.select(".article"):
        title = item.select_one("h2").text.strip()
        link = item.select_one("a")["href"]
        articles.append({"title": title, "link": link})

    return articles
