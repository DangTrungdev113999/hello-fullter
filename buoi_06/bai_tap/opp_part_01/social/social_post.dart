import 'comment.dart';

class Post {
  late final String postId;
  late final String content;
  late final List<String>? imageUrl;
  late final List<Comment> comments = [];

  Post({
    required this.postId,
    required this.content,
    this.imageUrl,
  });

  void addComment(Comment comment) {
    if (postId != comment.postId) {
      throw Exception('Invalid comment');
    }
    comments.add(comment);
  }
}
