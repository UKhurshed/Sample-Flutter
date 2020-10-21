class Campaign {
  Campaign({
    this.result,
    this.pagination,
  });

  List<Result> result;
  Pagination pagination;

   factory Campaign.fromJson(Map<String, dynamic> json) => Campaign(
    result: List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
    pagination: Pagination.fromJson(json["pagination"]),
  );

  Map<String, dynamic> toJson() => {
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
    "pagination": pagination.toJson(),
  };
}

class Pagination {
  Pagination({
    this.since,
    this.next,
  });

  int since;
  int next;

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
    since: json["since"],
    next: json["next"],
  );

  Map<String, dynamic> toJson() => {
    "since": since,
    "next": next,
  };
}

class Result {
  Result({
    this.id,
    this.title,
    this.description,
    this.inviteLink,
    this.owner,
    this.recepient,
    this.deliveryAddress,
    this.startDate,
    this.endDate,
    this.raisedAmount,
    this.totalAmount,
    this.ocasion,
    this.event,
    this.topContributor,
    this.topInterestAdvisor,
    this.topWishlistAdvisor,
    this.participants,
    this.wishMessages,
    this.stats,
    this.createdAt,
  });

  int id;
  String title;
  String description;
  String inviteLink;
  Owner owner;
  Owner recepient;
  DeliveryAddress deliveryAddress;
  int startDate;
  int endDate;
  int raisedAmount;
  int totalAmount;
  String ocasion;
  Event event;
  TopContributor topContributor;
  TopContributor topInterestAdvisor;
  TopContributor topWishlistAdvisor;
  List<TopContributor> participants;
  dynamic wishMessages;
  Stats stats;
  int createdAt;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    inviteLink: json["invite_link"],
    owner: Owner.fromJson(json["owner"]),
    recepient: Owner.fromJson(json["recepient"]),
    deliveryAddress: DeliveryAddress.fromJson(json["delivery_address"]),
    startDate: json["start_date"],
    endDate: json["end_date"],
    raisedAmount: json["raised_amount"],
    totalAmount: json["total_amount"],
    ocasion: json["ocasion"],
    event: Event.fromJson(json["event"]),
    topContributor: TopContributor.fromJson(json["top_contributor"]),
    topInterestAdvisor: TopContributor.fromJson(json["top_interest_advisor"]),
    topWishlistAdvisor: TopContributor.fromJson(json["top_wishlist_advisor"]),
    participants: List<TopContributor>.from(json["participants"].map((x) => TopContributor.fromJson(x))),
    wishMessages: json["wish_messages"],
    stats: Stats.fromJson(json["stats"]),
    createdAt: json["created_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "invite_link": inviteLink,
    "owner": owner.toJson(),
    "recepient": recepient.toJson(),
    "delivery_address": deliveryAddress.toJson(),
    "start_date": startDate,
    "end_date": endDate,
    "raised_amount": raisedAmount,
    "total_amount": totalAmount,
    "ocasion": ocasion,
    "event": event.toJson(),
    "top_contributor": topContributor.toJson(),
    "top_interest_advisor": topInterestAdvisor.toJson(),
    "top_wishlist_advisor": topWishlistAdvisor.toJson(),
    "participants": List<dynamic>.from(participants.map((x) => x.toJson())),
    "wish_messages": wishMessages,
    "stats": stats.toJson(),
    "created_at": createdAt,
  };
}

class DeliveryAddress {
  DeliveryAddress({
    this.id,
    this.country,
    this.addressLine,
    this.addressApartment,
    this.city,
    this.state,
    this.zip,
  });

  int id;
  Country country;
  AddressLine addressLine;
  String addressApartment;
  City city;
  City state;
  String zip;

  factory DeliveryAddress.fromJson(Map<String, dynamic> json) => DeliveryAddress(
    id: json["id"],
    country: countryValues.map[json["country"]],
    addressLine: addressLineValues.map[json["address_line"]],
    addressApartment: json["address_apartment"],
    city: cityValues.map[json["city"]],
    state: cityValues.map[json["state"]],
    zip: json["zip"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "country": countryValues.reverse[country],
    "address_line": addressLineValues.reverse[addressLine],
    "address_apartment": addressApartment,
    "city": cityValues.reverse[city],
    "state": cityValues.reverse[state],
    "zip": zip,
  };
}

enum AddressLine { EMPTY, ADDRESS }

final addressLineValues = EnumValues({
  "address": AddressLine.ADDRESS,
  "": AddressLine.EMPTY
});

enum City { EMPTY, WASHINGTON }

final cityValues = EnumValues({
  "": City.EMPTY,
  "Washington": City.WASHINGTON
});

enum Country { EMPTY, USA }

final countryValues = EnumValues({
  "": Country.EMPTY,
  "USA": Country.USA
});

class Event {
  Event({
    this.id,
    this.title,
    this.creator,
    this.recepient,
    this.ocasion,
    this.image,
    this.recursivity,
    this.date,
  });

  int id;
  String title;
  Owner creator;
  Owner recepient;
  String ocasion;
  String image;
  int recursivity;
  int date;

  factory Event.fromJson(Map<String, dynamic> json) => Event(
    id: json["id"],
    title: json["title"],
    creator: Owner.fromJson(json["creator"]),
    recepient: Owner.fromJson(json["recepient"]),
    ocasion: json["ocasion"],
    image: json["image"],
    recursivity: json["recursivity"],
    date: json["date"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "creator": creator.toJson(),
    "recepient": recepient.toJson(),
    "ocasion": ocasion,
    "image": image,
    "recursivity": recursivity,
    "date": date,
  };
}

class Owner {
  Owner({
    this.id,
    this.phone,
    this.username,
    this.firstName,
    this.middleName,
    this.lastName,
    this.addresses,
    this.avatar,
    this.email,
    this.code,
    this.relations,
    this.wishes,
    this.hobbies,
    this.age,
    this.gender,
  });

  int id;
  Phone phone;
  Username username;
  FirstName firstName;
  Name middleName;
  Name lastName;
  dynamic addresses;
  Avatar avatar;
  Email email;
  String code;
  dynamic relations;
  dynamic wishes;
  dynamic hobbies;
  int age;
  int gender;

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
    id: json["ID"],
    phone: phoneValues.map[json["phone"]],
    username: usernameValues.map[json["username"]],
    firstName: firstNameValues.map[json["first_name"]],
    middleName: nameValues.map[json["middle_name"]],
    lastName: nameValues.map[json["last_name"]],
    addresses: json["addresses"],
    avatar: avatarValues.map[json["avatar"]],
    email: emailValues.map[json["email"]],
    code: json["code"],
    relations: json["relations"],
    wishes: json["wishes"],
    hobbies: json["hobbies"],
    age: json["age"],
    gender: json["gender"],
  );

  Map<String, dynamic> toJson() => {
    "ID": id,
    "phone": phoneValues.reverse[phone],
    "username": usernameValues.reverse[username],
    "first_name": firstNameValues.reverse[firstName],
    "middle_name": nameValues.reverse[middleName],
    "last_name": nameValues.reverse[lastName],
    "addresses": addresses,
    "avatar": avatarValues.reverse[avatar],
    "email": emailValues.reverse[email],
    "code": code,
    "relations": relations,
    "wishes": wishes,
    "hobbies": hobbies,
    "age": age,
    "gender": gender,
  };
}

enum Avatar { EMPTY, AVATAR }

final avatarValues = EnumValues({
  "avatar": Avatar.AVATAR,
  "": Avatar.EMPTY
});

enum Email { EMPTY, THE_12_RU }

final emailValues = EnumValues({
  "": Email.EMPTY,
  "1@2.ru": Email.THE_12_RU
});

enum FirstName { EMPTY, FIRST, FIRST_NAME_60, FIRST_NAME_59, FIRST_NAME_58, FIRST_NAME_57, FIRST_NAME_56, TEST, FIRST_NAME_53, FIRST_NAME_52, FIRST_NAME_51 }

final firstNameValues = EnumValues({
  "": FirstName.EMPTY,
  "first": FirstName.FIRST,
  "first_name_51": FirstName.FIRST_NAME_51,
  "first_name_52": FirstName.FIRST_NAME_52,
  "first_name_53": FirstName.FIRST_NAME_53,
  "first_name_56": FirstName.FIRST_NAME_56,
  "first_name_57": FirstName.FIRST_NAME_57,
  "first_name_58": FirstName.FIRST_NAME_58,
  "first_name_59": FirstName.FIRST_NAME_59,
  "first_name_60": FirstName.FIRST_NAME_60,
  "Test": FirstName.TEST
});

enum Name { EMPTY, LAST, LAST_NAME_60, LAST_NAME_59, LAST_NAME_58, LAST_NAME_57, LAST_NAME_56, LAST_NAME_53, LAST_NAME_52, LAST_NAME_51 }

final nameValues = EnumValues({
  "": Name.EMPTY,
  "last": Name.LAST,
  "last_name_51": Name.LAST_NAME_51,
  "last_name_52": Name.LAST_NAME_52,
  "last_name_53": Name.LAST_NAME_53,
  "last_name_56": Name.LAST_NAME_56,
  "last_name_57": Name.LAST_NAME_57,
  "last_name_58": Name.LAST_NAME_58,
  "last_name_59": Name.LAST_NAME_59,
  "last_name_60": Name.LAST_NAME_60
});

enum Phone { EMPTY, THE_71234567890 }

final phoneValues = EnumValues({
  "": Phone.EMPTY,
  "+71234567890": Phone.THE_71234567890
});

enum Username { EMPTY, LAST_NAME_FIRST_NAME, HJ, HH, HJK, TEST, LAST_NAME_53_FIRST_NAME_53, LAST_NAME_52_FIRST_NAME_52, LAST_NAME_51_FIRST_NAME_51 }

final usernameValues = EnumValues({
  "": Username.EMPTY,
  "hh": Username.HH,
  "hj": Username.HJ,
  "hjk": Username.HJK,
  "last_name_51 first_name_51": Username.LAST_NAME_51_FIRST_NAME_51,
  "last_name_52 first_name_52": Username.LAST_NAME_52_FIRST_NAME_52,
  "last_name_53 first_name_53": Username.LAST_NAME_53_FIRST_NAME_53,
  "last_name first_name": Username.LAST_NAME_FIRST_NAME,
  " Test": Username.TEST
});

class TopContributor {
  TopContributor({
    this.id,
    this.user,
    this.payedAmount,
  });

  int id;
  Owner user;
  int payedAmount;

  factory TopContributor.fromJson(Map<String, dynamic> json) => TopContributor(
    id: json["id"],
    user: Owner.fromJson(json["user"]),
    payedAmount: json["payed_amount"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user": user.toJson(),
    "payed_amount": payedAmount,
  };
}

class Stats {
  Stats({
    this.progress,
    this.common,
    this.extra,
  });

  int progress;
  Common common;
  Extra extra;

  factory Stats.fromJson(Map<String, dynamic> json) => Stats(
    progress: json["progress"],
    common: Common.fromJson(json["common"]),
    extra: Extra.fromJson(json["extra"]),
  );

  Map<String, dynamic> toJson() => {
    "progress": progress,
    "common": common.toJson(),
    "extra": extra.toJson(),
  };
}

class Common {
  Common({
    this.addGiftRecipient,
    this.addYourRelationship,
    this.addDeliveryAddress,
    this.addOcasion,
    this.raiseMinimalAmount,
  });

  bool addGiftRecipient;
  bool addYourRelationship;
  bool addDeliveryAddress;
  bool addOcasion;
  bool raiseMinimalAmount;

  factory Common.fromJson(Map<String, dynamic> json) => Common(
    addGiftRecipient: json["Add Gift Recipient"],
    addYourRelationship: json["Add Your Relationship"],
    addDeliveryAddress: json["Add Delivery Address"],
    addOcasion: json["Add Ocasion"],
    raiseMinimalAmount: json["Raise Minimal Amount"],
  );

  Map<String, dynamic> toJson() => {
    "Add Gift Recipient": addGiftRecipient,
    "Add Your Relationship": addYourRelationship,
    "Add Delivery Address": addDeliveryAddress,
    "Add Ocasion": addOcasion,
    "Raise Minimal Amount": raiseMinimalAmount,
  };
}

class Extra {
  Extra({
    this.collect10PicturesFromYourFriends,
    this.collect5WishesFromYourFriends,
    this.shareNCahootsWith5People,
    this.collectAnswersOn10Questions,
  });

  bool collect10PicturesFromYourFriends;
  bool collect5WishesFromYourFriends;
  bool shareNCahootsWith5People;
  String collectAnswersOn10Questions;

  factory Extra.fromJson(Map<String, dynamic> json) => Extra(
    collect10PicturesFromYourFriends: json["Collect 10 Pictures from your friends"],
    collect5WishesFromYourFriends: json["Collect 5 Wishes from your friends"],
    shareNCahootsWith5People: json["Share NCahoots with 5 people"],
    collectAnswersOn10Questions: json["Collect answers on 10 Questions"],
  );

  Map<String, dynamic> toJson() => {
    "Collect 10 Pictures from your friends": collect10PicturesFromYourFriends,
    "Collect 5 Wishes from your friends": collect5WishesFromYourFriends,
    "Share NCahoots with 5 people": shareNCahootsWith5People,
    "Collect answers on 10 Questions": collectAnswersOn10Questions,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}