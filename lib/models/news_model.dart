class NewsData {
  String? title;
  String? author;
  String? content;
  String? urlToImage;
  String? date;

  NewsData(this.title, this.author, this.content, this.urlToImage, this.date);

  static List<NewsData> breakingNewsData = [
    NewsData(
        "Title 1 Title 1 Title 1",
        "author 1 author 1 author 1 author 1 author 1 author 1",
        "content 1 content content content content content content content content content ",
        "https://prod-env-resources.timdaythay.com/PRO-DAY-MALL/mall/temps/PS-1ee0a5e1-e17c-6426-8fce-8241e34ef04f",
        "2023-06-12"),
    NewsData(
        "Title 2",
        "author 2 author author author 2 author 2 author author author 2",
        "content 2 content content content content content content content content content",
        "https://prod-env-resources.timdaythay.com/PRO-DAY-MALL/mall/temps/PS-1ee0a5ac-cfd7-60c0-b009-8241e34ef04f",
        "2023-06-13"),
    NewsData(
        "Title 3",
        "author 3 author author author 3 author 3 author author author 3",
        "content 3 content content content content content content content content content",
        "https://prod-env-resources.timdaythay.com/PRO-DAY-MALL/mall/temps/PS-1ee0a5e1-e17c-6426-8fce-8241e34ef04f",
        "2023-06-14"),
  ];

  static List<NewsData> recentNewsData = [
    NewsData(
        "Title 1 Title 1 Title 1",
        "author 1 author 1 author 1",
        "content 1 content content content content content content content content content ",
        "https://prod-env-resources.timdaythay.com/PRO-DAY-MALL/mall/temps/PS-1ee0a5ac-cfd7-60c0-b009-8241e34ef04f",
        "2023-06-12"),
    NewsData(
        "Title 2",
        "author 2 author author author 2",
        "content 2 content content content content content content content content content",
        "https://prod-env-resources.timdaythay.com/PRO-DAY-MALL/mall/temps/PS-1ee0a5e1-e17c-6426-8fce-8241e34ef04f",
        "2023-06-13"),
    NewsData(
        "Title 3",
        "author 3 author author author 3",
        "content 3 content content content content content content content content content",
        "https://prod-env-resources.timdaythay.com/PRO-DAY-MALL/mall/temps/PS-1ee0a5ac-cfd7-60c0-b009-8241e34ef04f",
        "2023-06-14"),
  ];
}
