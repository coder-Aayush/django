class Blog {
  final int id;
  final String title;
  final String overview;
  final bool featured;
  Blog({this.id, this.featured, this.overview, this.title});
  factory Blog.fromJson(final json) {
    return Blog(
      id: json['id'],
      title: json['title'],
      overview: json['overview'],
      featured: json['features'],
    );
  }
}
