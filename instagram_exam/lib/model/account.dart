class Account {
  final String accountId;
  final String fullName;
  final String nickName;
  final String profileImgUrl;
  final bool isLive;

  Account({
    this.accountId,
    this.fullName,
    this.nickName,
    this.profileImgUrl,
    this.isLive,
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
