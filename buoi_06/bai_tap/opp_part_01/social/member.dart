import 'social_post.dart';

enum Sex {
  Male('nam'),
  FeMale('nu');

  const Sex(this.vietnamese);

  final String vietnamese;
}

class Member {
  late final String name;
  late final String avatar;
  late final String dob;
  late final String phone;
  late final String email;
  late final Sex sex;
  final List<Post> posts = [];

  Member({
    required this.name,
    required this.avatar,
    required this.dob,
    required this.phone,
    required this.email,
    required this.sex,
  });

  void postStatus(post) {
    posts.add(post);
  }
}
