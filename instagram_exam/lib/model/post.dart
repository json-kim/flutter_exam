class Post {
  final String postingAccountId;
  final String postId;
  final List<String> photoUrls;
  final List<String> tagList;
  final String title;
  final String contents;
  final String updateTime;

  Post({
    required this.postingAccountId,
    required this.postId,
    required this.photoUrls,
    required this.tagList,
    required this.title,
    required this.contents,
    required this.updateTime,
  });
}
