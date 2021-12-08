class Post {
  final String postingAccountId;
  final String postId;
  final List<String> photoUrls;
  final List<String> tagList;
  final String title;
  final String contents;
  final String updateTime;

  Post({
    this.postingAccountId,
    this.postId,
    this.photoUrls,
    this.tagList,
    this.title,
    this.contents,
    this.updateTime,
  });
}
