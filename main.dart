void main() {
  // Create a list of posts
  List<Post> posts = [
    Post(
      username: 'John Doe',
      content: 'Had a great time at the beach today!',
      dateTime: DateTime.now().subtract(Duration(hours: 2)),
    ),
    Post(
      username: 'Jane Smith',
      content: 'Just finished a 5k run!',
      dateTime: DateTime.now().subtract(Duration(days: 1, hours: 3)),
    ),
    Post(
      username: 'Alice Johnson',
      content: 'Loving this new Dart update!',
      dateTime: DateTime.now().subtract(Duration(minutes: 45)),
    ),
  ];

  // Print each post with formatted date and time
  for (var post in posts) {
    print('User: ${post.username}');
    print('Post: ${post.content}');
    print('Posted: ${_formatDateTime(post.dateTime)}');
    print('----------------------------');
  }
}

class Post {
  String username;
  String content;
  DateTime dateTime;

  Post({required this.username, required this.content, required this.dateTime});
}

String _formatDateTime(DateTime dateTime) {
  final now = DateTime.now();
  final difference = now.difference(dateTime);

  if (difference.inMinutes < 60) {
    return '${difference.inMinutes} minutes ago';
  } else if (difference.inHours < 24) {
    return '${difference.inHours} hours ago';
  } else if (difference.inDays < 7) {
    return '${difference.inDays} days ago';
  } else {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }
}
