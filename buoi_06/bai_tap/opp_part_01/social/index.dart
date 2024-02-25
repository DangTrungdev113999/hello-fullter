import 'comment.dart';
import 'member.dart';
import 'social_post.dart';

void main(List<String> args) {
  Member member = Member(
    name: 'Nguyen Van A',
    avatar: 'avatar.jpg',
    dob: '01/01/1990',
    phone: '0123456789',
    email: 'Nguyenvana@gmail.com',
    sex: Sex.Male,
  );

  Post post1 = Post(
    postId: '1',
    content: 'Hello world 1',
    imageUrl: ['image1.jpg', 'image2.jpg'],
  );

  Comment comment1 = Comment(
    postId: post1.postId,
    content: 'Comment 1',
  );

  post1.addComment(comment1);

  Post post2 = Post(
    postId: '2',
    content: 'Hello world 2',
    imageUrl: ['image1.jpg', 'image2.jpg'],
  );

  member.postStatus(post1);
  member.postStatus(post2);
}
