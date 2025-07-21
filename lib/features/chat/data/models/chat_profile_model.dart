class ChatProfileModel {
    String type;
    String id;
    Attributes attributes;
    Relationships relationships;

    ChatProfileModel({
        required this.type,
        required this.id,
        required this.attributes,
        required this.relationships,
    });

    factory ChatProfileModel.fromJson(Map<String, dynamic> json) => ChatProfileModel(
        type: json["type"],
        id: json["id"],
        attributes: Attributes.fromJson(json["attributes"]),
        relationships: Relationships.fromJson(json["relationships"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "attributes": attributes.toJson(),
        "relationships": relationships.toJson(),
    };
}

class Attributes {
    DateTime messageReceivedFromPartnerAt;
    int authUserId;
    String name;
    String username;
    String email;
    dynamic profilePhotoPath;
    dynamic profilePhotoId;
    String phone;
    String gender;
    dynamic countryId;
    dynamic countryName;
    dynamic stateId;
    dynamic stateName;
    dynamic cityId;
    dynamic cityName;
    dynamic customCityName;
    bool isActive;
    String customerCode;
    bool isPremiumCustomer;
    bool isOnline;
    dynamic bioIntroText;
    DateTime lastActiveAt;
    dynamic address;
    DateTime dateOfBirth;
    dynamic nativeLanguageId;
    dynamic nativeLanguageName;
    String referralCode;
    dynamic referredBy;
    dynamic referredId;
    bool isVanishModeEnabled;
    bool isChatInitiated;
    DateTime likebackCreatedAt;
    String profilePhotoUrl;
    String square100ProfilePhotoUrl;
    String square300ProfilePhotoUrl;
    String square500ProfilePhotoUrl;
    int age;

    Attributes({
        required this.messageReceivedFromPartnerAt,
        required this.authUserId,
        required this.name,
        required this.username,
        required this.email,
        required this.profilePhotoPath,
        required this.profilePhotoId,
        required this.phone,
        required this.gender,
        required this.countryId,
        required this.countryName,
        required this.stateId,
        required this.stateName,
        required this.cityId,
        required this.cityName,
        required this.customCityName,
        required this.isActive,
        required this.customerCode,
        required this.isPremiumCustomer,
        required this.isOnline,
        required this.bioIntroText,
        required this.lastActiveAt,
        required this.address,
        required this.dateOfBirth,
        required this.nativeLanguageId,
        required this.nativeLanguageName,
        required this.referralCode,
        required this.referredBy,
        required this.referredId,
        required this.isVanishModeEnabled,
        required this.isChatInitiated,
        required this.likebackCreatedAt,
        required this.profilePhotoUrl,
        required this.square100ProfilePhotoUrl,
        required this.square300ProfilePhotoUrl,
        required this.square500ProfilePhotoUrl,
        required this.age,
    });

    factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        messageReceivedFromPartnerAt: DateTime.parse(json["message_received_from_partner_at"]),
        authUserId: json["auth_user_id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        profilePhotoPath: json["profile_photo_path"],
        profilePhotoId: json["profile_photo_id"],
        phone: json["phone"],
        gender: json["gender"],
        countryId: json["country_id"],
        countryName: json["country_name"],
        stateId: json["state_id"],
        stateName: json["state_name"],
        cityId: json["city_id"],
        cityName: json["city_name"],
        customCityName: json["custom_city_name"],
        isActive: json["is_active"],
        customerCode: json["customer_code"],
        isPremiumCustomer: json["is_premium_customer"],
        isOnline: json["is_online"],
        bioIntroText: json["bio_intro_text"],
        lastActiveAt: DateTime.parse(json["last_active_at"]),
        address: json["address"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        nativeLanguageId: json["native_language_id"],
        nativeLanguageName: json["native_language_name"],
        referralCode: json["referral_code"],
        referredBy: json["referred_by"],
        referredId: json["referred_id"],
        isVanishModeEnabled: json["is_vanish_mode_enabled"],
        isChatInitiated: json["is_chat_initiated"],
        likebackCreatedAt: DateTime.parse(json["likeback_created_at"]),
        profilePhotoUrl: json["profile_photo_url"],
        square100ProfilePhotoUrl: json["square100_profile_photo_url"],
        square300ProfilePhotoUrl: json["square300_profile_photo_url"],
        square500ProfilePhotoUrl: json["square500_profile_photo_url"],
        age: json["age"],
    );

    Map<String, dynamic> toJson() => {
        "message_received_from_partner_at": messageReceivedFromPartnerAt.toIso8601String(),
        "auth_user_id": authUserId,
        "name": name,
        "username": username,
        "email": email,
        "profile_photo_path": profilePhotoPath,
        "profile_photo_id": profilePhotoId,
        "phone": phone,
        "gender": gender,
        "country_id": countryId,
        "country_name": countryName,
        "state_id": stateId,
        "state_name": stateName,
        "city_id": cityId,
        "city_name": cityName,
        "custom_city_name": customCityName,
        "is_active": isActive,
        "customer_code": customerCode,
        "is_premium_customer": isPremiumCustomer,
        "is_online": isOnline,
        "bio_intro_text": bioIntroText,
        "last_active_at": lastActiveAt.toIso8601String(),
        "address": address,
        "date_of_birth": "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
        "native_language_id": nativeLanguageId,
        "native_language_name": nativeLanguageName,
        "referral_code": referralCode,
        "referred_by": referredBy,
        "referred_id": referredId,
        "is_vanish_mode_enabled": isVanishModeEnabled,
        "is_chat_initiated": isChatInitiated,
        "likeback_created_at": likebackCreatedAt.toIso8601String(),
        "profile_photo_url": profilePhotoUrl,
        "square100_profile_photo_url": square100ProfilePhotoUrl,
        "square300_profile_photo_url": square300ProfilePhotoUrl,
        "square500_profile_photo_url": square500ProfilePhotoUrl,
        "age": age,
    };
}

class Relationships {
    BlockedContacts blockedContacts;
    UserSettings userSettings;

    Relationships({
        required this.blockedContacts,
        required this.userSettings,
    });

    factory Relationships.fromJson(Map<String, dynamic> json) => Relationships(
        blockedContacts: BlockedContacts.fromJson(json["blockedContacts"]),
        userSettings: UserSettings.fromJson(json["userSettings"]),
    );

    Map<String, dynamic> toJson() => {
        "blockedContacts": blockedContacts.toJson(),
        "userSettings": userSettings.toJson(),
    };
}

class BlockedContacts {
    List<dynamic> data;

    BlockedContacts({
        required this.data,
    });

    factory BlockedContacts.fromJson(Map<String, dynamic> json) => BlockedContacts(
        data: List<dynamic>.from(json["data"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x)),
    };
}

class UserSettings {
    Data data;

    UserSettings({
        required this.data,
    });

    factory UserSettings.fromJson(Map<String, dynamic> json) => UserSettings(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class Data {
    String type;
    String id;

    Data({
        required this.type,
        required this.id,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        type: json["type"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
    };
}
