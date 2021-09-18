class Quotes {
  String quote;
  String author;

  //create a constructor for our quote class
  Quotes(this.quote, this.author);

  //convert our data jsn to our data
  Quotes.fromJson(Map<String, dynamic> json) {
    quote = json['quote'];
    author = json['author'];
  }
}
