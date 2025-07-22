


class ChatProfileModel {
  final String type;
  final String id;
  final String? messageReceivedFromPartnerAt;
  final int authUserId;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String gender;
  final bool isActive;
  final String customerCode;
  final bool isPremiumCustomer;
  final bool isOnline;
  final String? lastActiveAt;
  final String dateOfBirth;
  final String referralCode;
  final bool isVanishModeEnabled;
  final bool isChatInitiated;
  final String? likebackCreatedAt;
  final String profilePhotoUrl;
  final String square100ProfilePhotoUrl;
  final String square300ProfilePhotoUrl;
  final String square500ProfilePhotoUrl;
  final int age;
  final UserSettingsModel userSettings;

  ChatProfileModel({
    required this.type,
    required this.id,
    this.messageReceivedFromPartnerAt,
    required this.authUserId,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.gender,
    required this.isActive,
    required this.customerCode,
    required this.isPremiumCustomer,
    required this.isOnline,
    this.lastActiveAt,
    required this.dateOfBirth,
    required this.referralCode,
    required this.isVanishModeEnabled,
    required this.isChatInitiated,
    this.likebackCreatedAt,
    required this.profilePhotoUrl,
    required this.square100ProfilePhotoUrl,
    required this.square300ProfilePhotoUrl,
    required this.square500ProfilePhotoUrl,
    required this.age,
    required this.userSettings,
  });

  factory ChatProfileModel.fromJson(Map<String, dynamic> json) {
    return ChatProfileModel(
      type: json['type'],
      id: json['id'],
      messageReceivedFromPartnerAt: json['message_received_from_partner_at'],
      authUserId: json['auth_user_id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      gender: json['gender'],
      isActive: json['is_active'],
      customerCode: json['customer_code'],
      isPremiumCustomer: json['is_premium_customer'],
      isOnline: json['is_online'],
      lastActiveAt: json['last_active_at'],
      dateOfBirth: json['date_of_birth'],
      referralCode: json['referral_code'],
      isVanishModeEnabled: json['is_vanish_mode_enabled'],
      isChatInitiated: json['is_chat_initiated'],
      likebackCreatedAt: json['likeback_created_at'],
      profilePhotoUrl: json['profile_photo_url'],
      square100ProfilePhotoUrl: json['square100_profile_photo_url'],
      square300ProfilePhotoUrl: json['square300_profile_photo_url'],
      square500ProfilePhotoUrl: json['square500_profile_photo_url'],
      age: json['age'],
      userSettings: UserSettingsModel.fromJson(json['userSettings']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
      'message_received_from_partner_at': messageReceivedFromPartnerAt,
      'auth_user_id': authUserId,
      'name': name,
      'username': username,
      'email': email,
      'phone': phone,
      'gender': gender,
      'is_active': isActive,
      'customer_code': customerCode,
      'is_premium_customer': isPremiumCustomer,
      'is_online': isOnline,
      'last_active_at': lastActiveAt,
      'date_of_birth': dateOfBirth,
      'referral_code': referralCode,
      'is_vanish_mode_enabled': isVanishModeEnabled,
      'is_chat_initiated': isChatInitiated,
      'likeback_created_at': likebackCreatedAt,
      'profile_photo_url': profilePhotoUrl,
      'square100_profile_photo_url': square100ProfilePhotoUrl,
      'square300_profile_photo_url': square300ProfilePhotoUrl,
      'square500_profile_photo_url': square500ProfilePhotoUrl,
      'age': age,
      'userSettings': userSettings.toJson(),
    };
  }
}

class UserSettingsModel {
  final String type;
  final dynamic id;
  final int userId;
  final bool isRealGiftsAccepted;
  final bool isGenderRevealed;
  final bool isHeightRevealed;
  final bool isReligionRevealed;
  final bool isDrinkingHabitRevealed;
  final bool isSmokingHabitRevealed;
  final bool isSexualOrientationRevealed;
  final bool isEducationalQualificationRevealed;
  final bool isPersonalityTraitsRevealed;
  final bool isLifestyleActivitiesRevealed;
  final bool isContactDiscoveryEnabled;
  final bool isGhostModeEnabled;
  final bool isDarkModeEnabled;
  final bool isReceivingPushNotifications;
  final bool isReceivingFlashMessages;
  final bool isLastSeenEnabled;
  final bool isOnlineStatusEnabled;
  final bool isReadReceiptsEnabled;

  UserSettingsModel({
    required this.type,
    required this.id,
    required this.userId,
    required this.isRealGiftsAccepted,
    required this.isGenderRevealed,
    required this.isHeightRevealed,
    required this.isReligionRevealed,
    required this.isDrinkingHabitRevealed,
    required this.isSmokingHabitRevealed,
    required this.isSexualOrientationRevealed,
    required this.isEducationalQualificationRevealed,
    required this.isPersonalityTraitsRevealed,
    required this.isLifestyleActivitiesRevealed,
    required this.isContactDiscoveryEnabled,
    required this.isGhostModeEnabled,
    required this.isDarkModeEnabled,
    required this.isReceivingPushNotifications,
    required this.isReceivingFlashMessages,
    required this.isLastSeenEnabled,
    required this.isOnlineStatusEnabled,
    required this.isReadReceiptsEnabled,
  });

  factory UserSettingsModel.fromJson(Map<String, dynamic> json) {
    return UserSettingsModel(
      type: json['type'],
      id: json['id'],
      userId: json['user_id'],
      isRealGiftsAccepted: json['is_real_gifts_accepted'],
      isGenderRevealed: json['is_gender_revealed'],
      isHeightRevealed: json['is_height_revealed'],
      isReligionRevealed: json['is_religion_revealed'],
      isDrinkingHabitRevealed: json['is_drinking_habit_revealed'],
      isSmokingHabitRevealed: json['is_smoking_habit_revealed'],
      isSexualOrientationRevealed: json['is_sexual_orientation_revealed'],
      isEducationalQualificationRevealed: json['is_educational_qualification_revealed'],
      isPersonalityTraitsRevealed: json['is_personality_traits_revealed'],
      isLifestyleActivitiesRevealed: json['is_lifestyle_activities_revealed'],
      isContactDiscoveryEnabled: json['is_contact_discovery_enabled'],
      isGhostModeEnabled: json['is_ghost_mode_enabled'],
      isDarkModeEnabled: json['is_dark_mode_enabled'],
      isReceivingPushNotifications: json['is_receiving_push_notifications'],
      isReceivingFlashMessages: json['is_receiving_flash_messages'],
      isLastSeenEnabled: json['is_last_seen_enabled'],
      isOnlineStatusEnabled: json['is_online_status_enabled'],
      isReadReceiptsEnabled: json['is_read_receipts_enabled'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
      'user_id': userId,
      'is_real_gifts_accepted': isRealGiftsAccepted,
      'is_gender_revealed': isGenderRevealed,
      'is_height_revealed': isHeightRevealed,
      'is_religion_revealed': isReligionRevealed,
      'is_drinking_habit_revealed': isDrinkingHabitRevealed,
      'is_smoking_habit_revealed': isSmokingHabitRevealed,
      'is_sexual_orientation_revealed': isSexualOrientationRevealed,
      'is_educational_qualification_revealed': isEducationalQualificationRevealed,
      'is_personality_traits_revealed': isPersonalityTraitsRevealed,
      'is_lifestyle_activities_revealed': isLifestyleActivitiesRevealed,
      'is_contact_discovery_enabled': isContactDiscoveryEnabled,
      'is_ghost_mode_enabled': isGhostModeEnabled,
      'is_dark_mode_enabled': isDarkModeEnabled,
      'is_receiving_push_notifications': isReceivingPushNotifications,
      'is_receiving_flash_messages': isReceivingFlashMessages,
      'is_last_seen_enabled': isLastSeenEnabled,
      'is_online_status_enabled': isOnlineStatusEnabled,
      'is_read_receipts_enabled': isReadReceiptsEnabled,
    };
  }
}