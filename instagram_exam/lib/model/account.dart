class Account {
  final String accountId;
  final String fullName;
  final String nickName;
  final String profileImgUrl;
  final bool isLive;

  Account({
    required this.accountId,
    required this.fullName,
    required this.nickName,
    required this.profileImgUrl,
    required this.isLive,
  });
}

class MyAccount extends Account {
  MyAccount({
    accountId,
    fullName,
    nickName,
    profileImgUrl,
    isLive = false,
  }) : super(
          accountId: accountId,
          fullName: fullName,
          nickName: nickName,
          profileImgUrl: profileImgUrl,
          isLive: isLive,
        );
}

class OtherAccount extends Account {
  OtherAccount({
    accountId,
    fullName,
    nickName,
    profileImgUrl,
    isLive = false,
  }) : super(
          accountId: accountId,
          fullName: fullName,
          nickName: nickName,
          profileImgUrl: profileImgUrl,
          isLive: isLive,
        );
}
