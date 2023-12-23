class CollectionResponse {
  String? id;
  String? title;
  String? description;
  String? publishedAt;
  String? lastCollectedAt;
  String? updatedAt;
  bool? featured;
  int? totalPhotos;
  bool? private;
  String? shareKey;
  List<Tags>? tags;
  Links? links;
  User? user;
  CoverPhoto? coverPhoto;
  List<PreviewPhotos>? previewPhotos;

  CollectionResponse({this.id, this.title, this.description, this.publishedAt, this.lastCollectedAt, this.updatedAt, this.featured, this.totalPhotos, this.private, this.shareKey, this.tags, this.links, this.user, this.coverPhoto, this.previewPhotos});

  CollectionResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    publishedAt = json['published_at'];
    lastCollectedAt = json['last_collected_at'];
    updatedAt = json['updated_at'];
    featured = json['featured'];
    totalPhotos = json['total_photos'];
    private = json['private'];
    shareKey = json['share_key'];
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) { tags!.add(new Tags.fromJson(v)); });
    }
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    coverPhoto = json['cover_photo'] != null ? new CoverPhoto.fromJson(json['cover_photo']) : null;
    if (json['preview_photos'] != null) {
      previewPhotos = <PreviewPhotos>[];
      json['preview_photos'].forEach((v) { previewPhotos!.add(new PreviewPhotos.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['published_at'] = this.publishedAt;
    data['last_collected_at'] = this.lastCollectedAt;
    data['updated_at'] = this.updatedAt;
    data['featured'] = this.featured;
    data['total_photos'] = this.totalPhotos;
    data['private'] = this.private;
    data['share_key'] = this.shareKey;
    if (this.tags != null) {
      data['tags'] = this.tags!.map((v) => v.toJson()).toList();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    if (this.coverPhoto != null) {
      data['cover_photo'] = this.coverPhoto!.toJson();
    }
    if (this.previewPhotos != null) {
      data['preview_photos'] = this.previewPhotos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tags {
  String? type;
  String? title;
  Source? source;

  Tags({this.type, this.title, this.source});

  Tags.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    title = json['title'];
    source = json['source'] != null ? new Source.fromJson(json['source']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['title'] = this.title;
    if (this.source != null) {
      data['source'] = this.source!.toJson();
    }
    return data;
  }
}

class Source {
  Ancestry? ancestry;
  String? title;
  String? subtitle;
  String? description;
  String? metaTitle;
  String? metaDescription;
  CoverPhoto? coverPhoto;

  Source({this.ancestry, this.title, this.subtitle, this.description, this.metaTitle, this.metaDescription, this.coverPhoto});

  Source.fromJson(Map<String, dynamic> json) {
    ancestry = json['ancestry'] != null ? new Ancestry.fromJson(json['ancestry']) : null;
    title = json['title'];
    subtitle = json['subtitle'];
    description = json['description'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    coverPhoto = json['cover_photo'] != null ? new CoverPhoto.fromJson(json['cover_photo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ancestry != null) {
      data['ancestry'] = this.ancestry!.toJson();
    }
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['description'] = this.description;
    data['meta_title'] = this.metaTitle;
    data['meta_description'] = this.metaDescription;
    if (this.coverPhoto != null) {
      data['cover_photo'] = this.coverPhoto!.toJson();
    }
    return data;
  }
}

class Ancestry {
  Type? type;
  Type? category;
  Type? subcategory;

  Ancestry({this.type, this.category, this.subcategory});

  Ancestry.fromJson(Map<String, dynamic> json) {
    type = json['type'] != null ? new Type.fromJson(json['type']) : null;
    category = json['category'] != null ? new Type.fromJson(json['category']) : null;
    subcategory = json['subcategory'] != null ? new Type.fromJson(json['subcategory']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.type != null) {
      data['type'] = this.type!.toJson();
    }
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    if (this.subcategory != null) {
      data['subcategory'] = this.subcategory!.toJson();
    }
    return data;
  }
}

class Type {
  String? slug;
  String? prettySlug;

  Type({this.slug, this.prettySlug});

  Type.fromJson(Map<String, dynamic> json) {
    slug = json['slug'];
    prettySlug = json['pretty_slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slug'] = this.slug;
    data['pretty_slug'] = this.prettySlug;
    return data;
  }
}

class CoverPhoto {
  String? id;
  String? slug;
  String? createdAt;
  String? updatedAt;
  String? promotedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  String? description;
  String? altDescription;
  List<Breadcrumbs>? breadcrumbs;
  Urls? urls;
  Links? links;
  int? likes;
  bool? likedByUser;
  TopicSubmissions? topicSubmissions;
  bool? premium;
  bool? plus;
  User? user;

  CoverPhoto({this.id, this.slug, this.createdAt, this.updatedAt, this.promotedAt, this.width, this.height, this.color, this.blurHash, this.description, this.altDescription, this.breadcrumbs, this.urls, this.links, this.likes, this.likedByUser, this.topicSubmissions, this.premium, this.plus, this.user});

  CoverPhoto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    promotedAt = json['promoted_at'];
    width = json['width'];
    height = json['height'];
    color = json['color'];
    blurHash = json['blur_hash'];
    description = json['description'];
    altDescription = json['alt_description'];
    if (json['breadcrumbs'] != null) {
      breadcrumbs = <Breadcrumbs>[];
      json['breadcrumbs'].forEach((v) { breadcrumbs!.add(new Breadcrumbs.fromJson(v)); });
    }
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    likes = json['likes'];
    likedByUser = json['liked_by_user'];
    topicSubmissions = json['topic_submissions'] != null ? new TopicSubmissions.fromJson(json['topic_submissions']) : null;
    premium = json['premium'];
    plus = json['plus'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['promoted_at'] = this.promotedAt;
    data['width'] = this.width;
    data['height'] = this.height;
    data['color'] = this.color;
    data['blur_hash'] = this.blurHash;
    data['description'] = this.description;
    data['alt_description'] = this.altDescription;
    if (this.breadcrumbs != null) {
      data['breadcrumbs'] = this.breadcrumbs!.map((v) => v.toJson()).toList();
    }
    if (this.urls != null) {
      data['urls'] = this.urls!.toJson();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    data['likes'] = this.likes;
    data['liked_by_user'] = this.likedByUser;
    data['premium'] = this.premium;
    data['plus'] = this.plus;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class Breadcrumbs {
  String? slug;
  String? title;
  int? index;
  String? type;

  Breadcrumbs({this.slug, this.title, this.index, this.type});

  Breadcrumbs.fromJson(Map<String, dynamic> json) {
    slug = json['slug'];
    title = json['title'];
    index = json['index'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slug'] = this.slug;
    data['title'] = this.title;
    data['index'] = this.index;
    data['type'] = this.type;
    return data;
  }
}

class Urls {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  Urls({this.raw, this.full, this.regular, this.small, this.thumb, this.smallS3});

  Urls.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    full = json['full'];
    regular = json['regular'];
    small = json['small'];
    thumb = json['thumb'];
    smallS3 = json['small_s3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['raw'] = this.raw;
    data['full'] = this.full;
    data['regular'] = this.regular;
    data['small'] = this.small;
    data['thumb'] = this.thumb;
    data['small_s3'] = this.smallS3;
    return data;
  }
}

class Links {
  String? self;
  String? html;
  String? download;
  String? downloadLocation;

  Links({this.self, this.html, this.download, this.downloadLocation});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    html = json['html'];
    download = json['download'];
    downloadLocation = json['download_location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    data['html'] = this.html;
    data['download'] = this.download;
    data['download_location'] = this.downloadLocation;
    return data;
  }
}

class TopicSubmissions {
  Health? health;
  Health? texturesPatterns;

  TopicSubmissions({this.health, this.texturesPatterns});

  TopicSubmissions.fromJson(Map<String, dynamic> json) {
    health = json['health'] != null ? new Health.fromJson(json['health']) : null;
    texturesPatterns = json['textures-patterns'] != null ? new Health.fromJson(json['textures-patterns']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.health != null) {
      data['health'] = this.health!.toJson();
    }
    if (this.texturesPatterns != null) {
      data['textures-patterns'] = this.texturesPatterns!.toJson();
    }
    return data;
  }
}

class Health {
  String? status;
  String? approvedOn;

  Health({this.status, this.approvedOn});

  Health.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    approvedOn = json['approved_on'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['approved_on'] = this.approvedOn;
    return data;
  }
}

class User {
  String? id;
  String? updatedAt;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? twitterUsername;
  String? portfolioUrl;
  String? bio;
  String? location;
  Links? links;
  ProfileImage? profileImage;
  String? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;
  int? totalPromotedPhotos;
  bool? acceptedTos;
  bool? forHire;
  Social? social;

  User({this.id, this.updatedAt, this.username, this.name, this.firstName, this.lastName, this.twitterUsername, this.portfolioUrl, this.bio, this.location, this.links, this.profileImage, this.instagramUsername, this.totalCollections, this.totalLikes, this.totalPhotos, this.totalPromotedPhotos, this.acceptedTos, this.forHire, this.social});

  User.fromJson(Map<String, dynamic> json) {
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
    profileImage = json['profile_image'] != null ? new ProfileImage.fromJson(json['profile_image']) : null;
    instagramUsername = json['instagram_username'];
    totalCollections = json['total_collections'];
    totalLikes = json['total_likes'];
    totalPhotos = json['total_photos'];
    totalPromotedPhotos = json['total_promoted_photos'];
    acceptedTos = json['accepted_tos'];
    forHire = json['for_hire'];
    social = json['social'] != null ? new Social.fromJson(json['social']) : null;
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
  String? instagramUsername;
  String? portfolioUrl;
  String? twitterUsername;
  Null? paypalEmail;

  Social({this.instagramUsername, this.portfolioUrl, this.twitterUsername, this.paypalEmail});

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

class PreviewPhotos {
  String? id;
  String? slug;
  String? createdAt;
  String? updatedAt;
  String? blurHash;
  Urls? urls;

  PreviewPhotos({this.id, this.slug, this.createdAt, this.updatedAt, this.blurHash, this.urls});

  PreviewPhotos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    blurHash = json['blur_hash'];
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['blur_hash'] = this.blurHash;
    if (this.urls != null) {
      data['urls'] = this.urls!.toJson();
    }
    return data;
  }
}
