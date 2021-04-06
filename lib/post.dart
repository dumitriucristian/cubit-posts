
class Post {

  final String title;
  final String body;

  Post({ this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    title : json['title'] as String,
    body : json['body'] as String,

  );
  Map<String, dynamic> toJson() => {'title': this.title, 'body': this.body};
}