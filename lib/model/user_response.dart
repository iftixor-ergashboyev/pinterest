
class UserResponse {
  String? id;
  String? updatedAt;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  dynamic? twitterUsername;
  dynamic? portfolioUrl;
  dynamic bio;
  dynamic location;
  Links? links;
  ProfileImage? profileImage;
  dynamic? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;
  int? totalPromotedPhotos;
  bool? acceptedTos;
  bool? forHire;
  Social? social;
  bool? followedByUser;
  List<dynamic>? photos;
  dynamic badge;
  int? followersCount;
  int? followingCount;
  bool? allowMessages;
  int? numericId;
  int? downloads;
  Meta? meta;

  UserResponse(
      {this.id,
        this.updatedAt,
        this.username,
        this.name,
        this.firstName,
        this.lastName,
        this.twitterUsername,
        this.portfolioUrl,
        this.bio,
        this.location,
        this.links,
        this.profileImage,
        this.instagramUsername,
        this.totalCollections,
        this.totalLikes,
        this.totalPhotos,
        this.totalPromotedPhotos,
        this.acceptedTos,
        this.forHire,
        this.social,
        this.followedByUser,
        this.photos,
        this.badge,
        this.followersCount,
        this.followingCount,
        this.allowMessages,
        this.numericId,
        this.downloads,
        this.meta});

  UserResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    updatedAt = json['updated_at'];
    username = json['username'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    twitterUsername = json['twitter_username'];
    portfolioUrl = json['portfolio_url'];
    bio = json['bio'];
    location = json['location'];
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    profileImage = json['profile_image'] != null
        ? new ProfileImage.fromJson(json['profile_image'])
        : null;
    instagramUsername = json['instagram_username'];
    totalCollections = json['total_collections'];
    totalLikes = json['total_likes'];
    totalPhotos = json['total_photos'];
    totalPromotedPhotos = json['total_promoted_photos'];
    acceptedTos = json['accepted_tos'];
    forHire = json['for_hire'];
    social =
    json['social'] != null ? new Social.fromJson(json['social']) : null;
    followedByUser = json['followed_by_user'];
    if (json['photos'] != null) {
      photos = <Null>[];
      json['photos'].forEach((v) {
        photos!.add(v);
      });
    }
    badge = json['badge'];
    followersCount = json['followers_count'];
    followingCount = json['following_count'];
    allowMessages = json['allow_messages'];
    numericId = json['numeric_id'];
    downloads = json['downloads'];
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['updated_at'] = this.updatedAt;
    data['username'] = this.username;
    data['name'] = this.name;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['twitter_username'] = this.twitterUsername;
    data['portfolio_url'] = this.portfolioUrl;
    data['bio'] = this.bio;
    data['location'] = this.location;
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    if (this.profileImage != null) {
      data['profile_image'] = this.profileImage!.toJson();
    }
    data['instagram_username'] = this.instagramUsername;
    data['total_collections'] = this.totalCollections;
    data['total_likes'] = this.totalLikes;
    data['total_photos'] = this.totalPhotos;
    data['total_promoted_photos'] = this.totalPromotedPhotos;
    data['accepted_tos'] = this.acceptedTos;
    data['for_hire'] = this.forHire;
    if (this.social != null) {
      data['social'] = this.social!.toJson();
    }
    data['followed_by_user'] = this.followedByUser;
    if (this.photos != null) {
      data['photos'] = this.photos!.map((v) => v.toJson()).toList();
    }
    data['badge'] = this.badge;
    data['followers_count'] = this.followersCount;
    data['following_count'] = this.followingCount;
    data['allow_messages'] = this.allowMessages;
    data['numeric_id'] = this.numericId;
    data['downloads'] = this.downloads;
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}

class Links {
  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;
  String? following;
  String? followers;

  Links(
      {this.self,
        this.html,
        this.photos,
        this.likes,
        this.portfolio,
        this.following,
        this.followers});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    html = json['html'];
    photos = json['photos'];
    likes = json['likes'];
    portfolio = json['portfolio'];
    following = json['following'];
    followers = json['followers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    data['html'] = this.html;
    data['photos'] = this.photos;
    data['likes'] = this.likes;
    data['portfolio'] = this.portfolio;
    data['following'] = this.following;
    data['followers'] = this.followers;
    return data;
  }
}

class ProfileImage {
  String? small;
  String? medium;
  String? large;

  ProfileImage({this.small, this.medium, this.large});

  ProfileImage.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    medium = json['medium'];
    large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this.small;
    data['medium'] = this.medium;
    data['large'] = this.large;
    return data;
  }
}

class Social {
  Null? instagramUsername;
  Null? portfolioUrl;
  Null? twitterUsername;
  Null? paypalEmail;

  Social(
      {this.instagramUsername,
        this.portfolioUrl,
        this.twitterUsername,
        this.paypalEmail});

  Social.fromJson(Map<String, dynamic> json) {
    instagramUsername = json['instagram_username'];
    portfolioUrl = json['portfolio_url'];
    twitterUsername = json['twitter_username'];
    paypalEmail = json['paypal_email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['instagram_username'] = this.instagramUsername;
    data['portfolio_url'] = this.portfolioUrl;
    data['twitter_username'] = this.twitterUsername;
    data['paypal_email'] = this.paypalEmail;
    return data;
  }
}

class Meta {
  bool? index;

  Meta({this.index});

  Meta.fromJson(Map<String, dynamic> json) {
    index = json['index'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['index'] = this.index;
    return data;
  }
}