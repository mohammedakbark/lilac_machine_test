class CustomerDetailModel {
  String type;
  String id;
  Attributes attributes;
  Relationships relationships;

  CustomerDetailModel({
    required this.type,
    required this.id,
    required this.attributes,
    required this.relationships,
  });

  factory CustomerDetailModel.fromJson(Map<String, dynamic> json) =>
      CustomerDetailModel(
        type: json["type"] ?? '',
        id: json["id"] ?? '',
        attributes: Attributes.fromJson(json["attributes"] ?? {}),
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
  String name;
  String username;
  String email;
  // dynamic emailVerifiedAt;
  // dynamic currentTeamId;
  // dynamic profilePhotoPath;
  // dynamic profilePhotoId;
  DateTime? dateOfBirth;
  String phone;
  // int currentSubscriptionPlanId;
  // int isProfileBoostActive;
  String gender;
  // String fcmToken;
  // dynamic countryId;
  // dynamic countryName;
  // dynamic stateId;
  // dynamic stateName;
  // dynamic cityId;
  // dynamic cityName;
  // dynamic customCityName;
  // dynamic address;
  // dynamic zip;
  // bool isActive;
  // int coinBalance;
  // String customerCode;
  // String referralCode;
  // String referredBy;
  // int referredId;
  // String referredUserName;
  // bool isPremiumCustomer;
  bool? isOnline;
  bool? isProfilePreferencesCompleted;
  int? profileCompletionPercentage;
  int? isInstagramConnected;
  String? preferredGender;
  // dynamic selfieVerificationImagePath;
  // dynamic selfieVerificationImageId;
  // dynamic selfieVerificationVideoPath;
  // dynamic selfieVerificationVideoId;
  // dynamic selfieVerificationUploadedAt;
  // dynamic selfieImageApprovedAt;
  // dynamic selfieImageApprovedBy;
  // dynamic selfieVideoApprovedAt;
  // dynamic selfieVideoApprovedBy;
  // dynamic accountVerifiedAt;
  // int hasUnlimitedUserSwipe;
  // DateTime lastProfileReminderAt;
  // dynamic remainingSwipeLimit;
  // DateTime resetSwipeLimitAt;
  // int remainingSuperLikeLimit;
  // DateTime resetSuperLikeLimitAt;
  // int remainingFlashMessageLimit;
  // DateTime resetFlashMessageLimitAt;
  // int remainingBoostLimit;
  // DateTime resetBoostLimitAt;
  // String currentLocation;
  // String currentLatitude;
  // String currentLongitude;
  // dynamic bioIntroText;
  // int heightInCm;
  // DateTime lastActiveAt;
  // dynamic zodiacSignId;
  // dynamic zodiacSignName;
  // int relationshipStatusId;
  // String relationshipStatusName;
  // dynamic religionId;
  // dynamic religionName;
  // dynamic drinkingHabitId;
  // dynamic drinkingHabitName;
  // dynamic smokingHabitId;
  // dynamic smokingHabitName;
  // dynamic sexualOrientationId;
  // dynamic sexualOrientationName;
  // dynamic educationalQualificationId;
  // dynamic educationalQualificationName;
  // dynamic nativeLanguageId;
  // dynamic nativeLanguageName;
  // dynamic occupationId;
  // dynamic occupationName;
  // dynamic emotionId;
  // dynamic emotionUpdatedAt;
  // dynamic emotionName;
  // dynamic emotionIcon;
  // dynamic emotionFallbackEmoji;
  // dynamic filterMyPreferredGender;
  // dynamic filterPreferredGender;
  // dynamic filterRadiusInKm;
  // dynamic filterAgeMin;
  // dynamic filterAgeMax;
  // dynamic filterHeightInCmMin;
  // dynamic filterHeightInCmMax;
  // String filterPassportModeLocation;
  // String filterPassportModeLatitude;
  // String filterPassportModeLongitude;
  // dynamic filterNativeLanguageIds;
  // dynamic filterZodiacSignIds;
  // bool isRealGiftsAccepted;
  // bool isGenderRevealed;
  // bool isHeightRevealed;
  // bool isReligionRevealed;
  // bool isDrinkingHabitRevealed;
  // bool isSmokingHabitRevealed;
  // bool isSexualOrientationRevealed;
  // bool isEducationalQualificationRevealed;
  // bool isPersonalityTraitsRevealed;
  // bool isLifestyleActivitiesRevealed;
  // bool isContactDiscoveryEnabled;
  // bool isGhostModeEnabled;
  // bool isDarkModeEnabled;
  // bool isReceivingPushNotifications;
  // bool isReceivingFlashMessages;
  // bool isLastSeenEnabled;
  // bool isOnlineStatusEnabled;
  // bool isReadReceiptsEnabled;
  // bool isProfileHiddenFromSearch;
  // dynamic hiddenFromSearchAt;
  // bool isProfileReported;
  // dynamic reportedAt;
  // bool isProfileStriked;
  // dynamic strikedAt;
  // int strikeCount;
  // bool isProfileBlacklisted;
  // dynamic blacklistedAt;
  // bool isAccountSuspended;
  // dynamic suspendedAt;
  // dynamic createdBy;
  // dynamic createdByName;
  // int updatedBy;
  // String updatedByName;
  // dynamic deletedBy;
  // dynamic deletedByName;
  // DateTime createdAt;
  // DateTime updatedAt;
  // dynamic deletedAt;
  AuthStatus authStatus;
  String? profilePhotoUrl;
  // String square100ProfilePhotoUrl;
  // String square300ProfilePhotoUrl;
  // String square500ProfilePhotoUrl;
  int? age;

  Attributes({
    required this.name,
    required this.username,
    required this.email,
    // required this.emailVerifiedAt,
    // required this.currentTeamId,
    // required this.profilePhotoPath,
    // required this.profilePhotoId,
    // required this.dateOfBirth,
    required this.phone,
    // required this.currentSubscriptionPlanId,
    // required this.isProfileBoostActive,
    required this.gender,
    // required this.fcmToken,
    // required this.countryId,
    // required this.countryName,
    // required this.stateId,
    // required this.stateName,
    // required this.cityId,
    // required this.cityName,
    // required this.customCityName,
    // required this.address,
    // required this.zip,
    // required this.isActive,
    // required this.coinBalance,
    // required this.customerCode,
    // required this.referralCode,
    // required this.referredBy,
    // required this.referredId,
    // required this.referredUserName,
    // required this.isPremiumCustomer,
    required this.isOnline,
    required this.isProfilePreferencesCompleted,
    required this.profileCompletionPercentage,
    required this.isInstagramConnected,
    required this.preferredGender,
    // required this.selfieVerificationImagePath,
    // required this.selfieVerificationImageId,
    // required this.selfieVerificationVideoPath,
    // required this.selfieVerificationVideoId,
    // required this.selfieVerificationUploadedAt,
    // required this.selfieImageApprovedAt,
    // required this.selfieImageApprovedBy,
    // required this.selfieVideoApprovedAt,
    // required this.selfieVideoApprovedBy,
    // required this.accountVerifiedAt,
    // required this.hasUnlimitedUserSwipe,
    // required this.lastProfileReminderAt,
    // required this.remainingSwipeLimit,
    // required this.resetSwipeLimitAt,
    // required this.remainingSuperLikeLimit,
    // required this.resetSuperLikeLimitAt,
    // required this.remainingFlashMessageLimit,
    // required this.resetFlashMessageLimitAt,
    // required this.remainingBoostLimit,
    // required this.resetBoostLimitAt,
    // required this.currentLocation,
    // required this.currentLatitude,
    // required this.currentLongitude,
    // required this.bioIntroText,
    // required this.heightInCm,
    // required this.lastActiveAt,
    // required this.zodiacSignId,
    // required this.zodiacSignName,
    // required this.relationshipStatusId,
    // required this.relationshipStatusName,
    // required this.religionId,
    // required this.religionName,
    // required this.drinkingHabitId,
    // required this.drinkingHabitName,
    // required this.smokingHabitId,
    // required this.smokingHabitName,
    // required this.sexualOrientationId,
    // required this.sexualOrientationName,
    // required this.educationalQualificationId,
    // required this.educationalQualificationName,
    // required this.nativeLanguageId,
    // required this.nativeLanguageName,
    // required this.occupationId,
    // required this.occupationName,
    // required this.emotionId,
    // required this.emotionUpdatedAt,
    // required this.emotionName,
    // required this.emotionIcon,
    // required this.emotionFallbackEmoji,
    // required this.filterMyPreferredGender,
    // required this.filterPreferredGender,
    // required this.filterRadiusInKm,
    // required this.filterAgeMin,
    // required this.filterAgeMax,
    // required this.filterHeightInCmMin,
    // required this.filterHeightInCmMax,
    // required this.filterPassportModeLocation,
    // required this.filterPassportModeLatitude,
    // required this.filterPassportModeLongitude,
    // required this.filterNativeLanguageIds,
    // required this.filterZodiacSignIds,
    // required this.isRealGiftsAccepted,
    // required this.isGenderRevealed,
    // required this.isHeightRevealed,
    // required this.isReligionRevealed,
    // required this.isDrinkingHabitRevealed,
    // required this.isSmokingHabitRevealed,
    // required this.isSexualOrientationRevealed,
    // required this.isEducationalQualificationRevealed,
    // required this.isPersonalityTraitsRevealed,
    // required this.isLifestyleActivitiesRevealed,
    // required this.isContactDiscoveryEnabled,
    // required this.isGhostModeEnabled,
    // required this.isDarkModeEnabled,
    // required this.isReceivingPushNotifications,
    // required this.isReceivingFlashMessages,
    // required this.isLastSeenEnabled,
    // required this.isOnlineStatusEnabled,
    // required this.isReadReceiptsEnabled,
    // required this.isProfileHiddenFromSearch,
    // required this.hiddenFromSearchAt,
    // required this.isProfileReported,
    // required this.reportedAt,
    // required this.isProfileStriked,
    // required this.strikedAt,
    // required this.strikeCount,
    // required this.isProfileBlacklisted,
    // required this.blacklistedAt,
    // required this.isAccountSuspended,
    // required this.suspendedAt,
    // required this.createdBy,
    // required this.createdByName,
    // required this.updatedBy,
    // required this.updatedByName,
    // required this.deletedBy,
    // required this.deletedByName,
    // required this.createdAt,
    // required this.updatedAt,
    // required this.deletedAt,
    required this.authStatus,
    required this.profilePhotoUrl,
    // required this.square100ProfilePhotoUrl,
    // required this.square300ProfilePhotoUrl,
    // required this.square500ProfilePhotoUrl,
    required this.age,
  });

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
    name: json["name"] ?? '',
    username: json["username"] ?? "",
    email: json["email"] ?? "",
    // emailVerifiedAt: json["email_verified_at"],
    // currentTeamId: json["current_team_id"],
    // profilePhotoPath: json["profile_photo_path"],
    // profilePhotoId: json["profile_photo_id"],
    // dateOfBirth: DateTime.parse(json["date_of_birth"]),
    phone: json["phone"] ?? '',
    // currentSubscriptionPlanId: json["current_subscription_plan_id"],
    // isProfileBoostActive: json["is_profile_boost_active"],
    gender: json["gender"] ?? '',
    // fcmToken: json["fcm_token"],
    // countryId: json["country_id"],
    // countryName: json["country_name"],
    // stateId: json["state_id"],
    // stateName: json["state_name"],
    // cityId: json["city_id"],
    // cityName: json["city_name"],
    // customCityName: json["custom_city_name"],
    // address: json["address"],
    // zip: json["zip"],
    // isActive: json["is_active"],
    // coinBalance: json["coin_balance"],
    // customerCode: json["customer_code"],
    // referralCode: json["referral_code"],
    // referredBy: json["referred_by"],
    // referredId: json["referred_id"],
    // referredUserName: json["referred_user_name"],
    // isPremiumCustomer: json["is_premium_customer"],
    isOnline: json["is_online"],
    isProfilePreferencesCompleted: json["is_profile_preferences_completed"],
    profileCompletionPercentage: json["profile_completion_percentage"],
    isInstagramConnected: json["is_instagram_connected"],
    preferredGender: json["preferred_gender"],
    // selfieVerificationImagePath: json["selfie_verification_image_path"],
    // selfieVerificationImageId: json["selfie_verification_image_id"],
    // selfieVerificationVideoPath: json["selfie_verification_video_path"],
    // selfieVerificationVideoId: json["selfie_verification_video_id"],
    // selfieVerificationUploadedAt: json["selfie_verification_uploaded_at"],
    // selfieImageApprovedAt: json["selfie_image_approved_at"],
    // selfieImageApprovedBy: json["selfie_image_approved_by"],
    // selfieVideoApprovedAt: json["selfie_video_approved_at"],
    // selfieVideoApprovedBy: json["selfie_video_approved_by"],
    // accountVerifiedAt: json["account_verified_at"],
    // hasUnlimitedUserSwipe: json["has_unlimited_user_swipe"],
    // lastProfileReminderAt: DateTime.parse(json["last_profile_reminder_at"]),
    // remainingSwipeLimit: json["remaining_swipe_limit"],
    // resetSwipeLimitAt: DateTime.parse(json["reset_swipe_limit_at"]),
    // remainingSuperLikeLimit: json["remaining_super_like_limit"],
    // resetSuperLikeLimitAt: DateTime.parse(json["reset_super_like_limit_at"]),
    // remainingFlashMessageLimit: json["remaining_flash_message_limit"],
    // resetFlashMessageLimitAt: DateTime.parse(json["reset_flash_message_limit_at"]),
    // remainingBoostLimit: json["remaining_boost_limit"],
    // resetBoostLimitAt: DateTime.parse(json["reset_boost_limit_at"]),
    // currentLocation: json["current_location"],
    // currentLatitude: json["current_latitude"],
    // currentLongitude: json["current_longitude"],
    // bioIntroText: json["bio_intro_text"],
    // heightInCm: json["height_in_cm"],
    // lastActiveAt: DateTime.parse(json["last_active_at"]),
    // zodiacSignId: json["zodiac_sign_id"],
    // zodiacSignName: json["zodiac_sign_name"],
    // relationshipStatusId: json["relationship_status_id"],
    // relationshipStatusName: json["relationship_status_name"],
    // religionId: json["religion_id"],
    // religionName: json["religion_name"],
    // drinkingHabitId: json["drinking_habit_id"],
    // drinkingHabitName: json["drinking_habit_name"],
    // smokingHabitId: json["smoking_habit_id"],
    // smokingHabitName: json["smoking_habit_name"],
    // sexualOrientationId: json["sexual_orientation_id"],
    // sexualOrientationName: json["sexual_orientation_name"],
    // educationalQualificationId: json["educational_qualification_id"],
    // educationalQualificationName: json["educational_qualification_name"],
    // nativeLanguageId: json["native_language_id"],
    // nativeLanguageName: json["native_language_name"],
    // occupationId: json["occupation_id"],
    // occupationName: json["occupation_name"],
    // emotionId: json["emotion_id"],
    // emotionUpdatedAt: json["emotion_updated_at"],
    // emotionName: json["emotion_name"],
    // emotionIcon: json["emotion_icon"],
    // emotionFallbackEmoji: json["emotion_fallback_emoji"],
    // filterMyPreferredGender: json["filter_my_preferred_gender"],
    // filterPreferredGender: json["filter_preferred_gender"],
    // filterRadiusInKm: json["filter_radius_in_km"],
    // filterAgeMin: json["filter_age_min"],
    // filterAgeMax: json["filter_age_max"],
    // filterHeightInCmMin: json["filter_height_in_cm_min"],
    // filterHeightInCmMax: json["filter_height_in_cm_max"],
    // filterPassportModeLocation: json["filter_passport_mode_location"],
    // filterPassportModeLatitude: json["filter_passport_mode_latitude"],
    // filterPassportModeLongitude: json["filter_passport_mode_longitude"],
    // filterNativeLanguageIds: json["filter_native_language_ids"],
    // filterZodiacSignIds: json["filter_zodiac_sign_ids"],
    // isRealGiftsAccepted: json["is_real_gifts_accepted"],
    // isGenderRevealed: json["is_gender_revealed"],
    // isHeightRevealed: json["is_height_revealed"],
    // isReligionRevealed: json["is_religion_revealed"],
    // isDrinkingHabitRevealed: json["is_drinking_habit_revealed"],
    // isSmokingHabitRevealed: json["is_smoking_habit_revealed"],
    // isSexualOrientationRevealed: json["is_sexual_orientation_revealed"],
    // isEducationalQualificationRevealed: json["is_educational_qualification_revealed"],
    // isPersonalityTraitsRevealed: json["is_personality_traits_revealed"],
    // isLifestyleActivitiesRevealed: json["is_lifestyle_activities_revealed"],
    // isContactDiscoveryEnabled: json["is_contact_discovery_enabled"],
    // isGhostModeEnabled: json["is_ghost_mode_enabled"],
    // isDarkModeEnabled: json["is_dark_mode_enabled"],
    // isReceivingPushNotifications: json["is_receiving_push_notifications"],
    // isReceivingFlashMessages: json["is_receiving_flash_messages"],
    // isLastSeenEnabled: json["is_last_seen_enabled"],
    // isOnlineStatusEnabled: json["is_online_status_enabled"],
    // isReadReceiptsEnabled: json["is_read_receipts_enabled"],
    // isProfileHiddenFromSearch: json["is_profile_hidden_from_search"],
    // hiddenFromSearchAt: json["hidden_from_search_at"],
    // isProfileReported: json["is_profile_reported"],
    // reportedAt: json["reported_at"],
    // isProfileStriked: json["is_profile_striked"],
    // strikedAt: json["striked_at"],
    // strikeCount: json["strike_count"],
    // isProfileBlacklisted: json["is_profile_blacklisted"],
    // blacklistedAt: json["blacklisted_at"],
    // isAccountSuspended: json["is_account_suspended"],
    // suspendedAt: json["suspended_at"],
    // createdBy: json["created_by"],
    // createdByName: json["created_by_name"],
    // updatedBy: json["updated_by"],
    // updatedByName: json["updated_by_name"],
    // deletedBy: json["deleted_by"],
    // deletedByName: json["deleted_by_name"],
    // createdAt: DateTime.parse(json["created_at"]),
    // updatedAt: DateTime.parse(json["updated_at"]),
    // deletedAt: json["deleted_at"],
    authStatus: AuthStatus.fromJson(json["auth_status"]),
    profilePhotoUrl: json["profile_photo_url"] ?? '',
    // square100ProfilePhotoUrl: json["square100_profile_photo_url"],
    // square300ProfilePhotoUrl: json["square300_profile_photo_url"],
    // square500ProfilePhotoUrl: json["square500_profile_photo_url"],
    age: json["age"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "username": username,
    "email": email,
    // "email_verified_at": emailVerifiedAt,
    // "current_team_id": currentTeamId,
    // "profile_photo_path": profilePhotoPath,
    // "profile_photo_id": profilePhotoId,
    "date_of_birth":
        "${dateOfBirth?.year.toString().padLeft(4, '0')}-${dateOfBirth?.month.toString().padLeft(2, '0')}-${dateOfBirth?.day.toString().padLeft(2, '0')}",
    "phone": phone,
    // "current_subscription_plan_id": currentSubscriptionPlanId,
    // "is_profile_boost_active": isProfileBoostActive,
    "gender": gender,
    // "fcm_token": fcmToken,
    // "country_id": countryId,
    // "country_name": countryName,
    // "state_id": stateId,
    // "state_name": stateName,
    // "city_id": cityId,
    // "city_name": cityName,
    // "custom_city_name": customCityName,
    // "address": address,
    // "zip": zip,
    // "is_active": isActive,
    // "coin_balance": coinBalance,
    // "customer_code": customerCode,
    // "referral_code": referralCode,
    // "referred_by": referredBy,
    // "referred_id": referredId,
    // "referred_user_name": referredUserName,
    // "is_premium_customer": isPremiumCustomer,
    "is_online": isOnline,
    "is_profile_preferences_completed": isProfilePreferencesCompleted,
    "profile_completion_percentage": profileCompletionPercentage,
    "is_instagram_connected": isInstagramConnected,
    "preferred_gender": preferredGender,
    // "selfie_verification_image_path": selfieVerificationImagePath,
    // "selfie_verification_image_id": selfieVerificationImageId,
    // "selfie_verification_video_path": selfieVerificationVideoPath,
    // "selfie_verification_video_id": selfieVerificationVideoId,
    // "selfie_verification_uploaded_at": selfieVerificationUploadedAt,
    // "selfie_image_approved_at": selfieImageApprovedAt,
    // "selfie_image_approved_by": selfieImageApprovedBy,
    // "selfie_video_approved_at": selfieVideoApprovedAt,
    // "selfie_video_approved_by": selfieVideoApprovedBy,
    // "account_verified_at": accountVerifiedAt,
    // "has_unlimited_user_swipe": hasUnlimitedUserSwipe,
    // "last_profile_reminder_at": lastProfileReminderAt.toIso8601String(),
    // "remaining_swipe_limit": remainingSwipeLimit,
    // "reset_swipe_limit_at": resetSwipeLimitAt.toIso8601String(),
    // "remaining_super_like_limit": remainingSuperLikeLimit,
    // "reset_super_like_limit_at": resetSuperLikeLimitAt.toIso8601String(),
    // "remaining_flash_message_limit": remainingFlashMessageLimit,
    // "reset_flash_message_limit_at": resetFlashMessageLimitAt.toIso8601String(),
    // "remaining_boost_limit": remainingBoostLimit,
    // "reset_boost_limit_at": resetBoostLimitAt.toIso8601String(),
    // "current_location": currentLocation,
    // "current_latitude": currentLatitude,
    // "current_longitude": currentLongitude,
    // "bio_intro_text": bioIntroText,
    // "height_in_cm": heightInCm,
    // "last_active_at": lastActiveAt.toIso8601String(),
    // "zodiac_sign_id": zodiacSignId,
    // "zodiac_sign_name": zodiacSignName,
    // "relationship_status_id": relationshipStatusId,
    // "relationship_status_name": relationshipStatusName,
    // "religion_id": religionId,
    // "religion_name": religionName,
    // "drinking_habit_id": drinkingHabitId,
    // "drinking_habit_name": drinkingHabitName,
    // "smoking_habit_id": smokingHabitId,
    // "smoking_habit_name": smokingHabitName,
    // "sexual_orientation_id": sexualOrientationId,
    // "sexual_orientation_name": sexualOrientationName,
    // "educational_qualification_id": educationalQualificationId,
    // "educational_qualification_name": educationalQualificationName,
    // "native_language_id": nativeLanguageId,
    // "native_language_name": nativeLanguageName,
    // "occupation_id": occupationId,
    // "occupation_name": occupationName,
    // "emotion_id": emotionId,
    // "emotion_updated_at": emotionUpdatedAt,
    // "emotion_name": emotionName,
    // "emotion_icon": emotionIcon,
    // "emotion_fallback_emoji": emotionFallbackEmoji,
    // "filter_my_preferred_gender": filterMyPreferredGender,
    // "filter_preferred_gender": filterPreferredGender,
    // "filter_radius_in_km": filterRadiusInKm,
    // "filter_age_min": filterAgeMin,
    // "filter_age_max": filterAgeMax,
    // "filter_height_in_cm_min": filterHeightInCmMin,
    // "filter_height_in_cm_max": filterHeightInCmMax,
    // "filter_passport_mode_location": filterPassportModeLocation,
    // "filter_passport_mode_latitude": filterPassportModeLatitude,
    // "filter_passport_mode_longitude": filterPassportModeLongitude,
    // "filter_native_language_ids": filterNativeLanguageIds,
    // "filter_zodiac_sign_ids": filterZodiacSignIds,
    // "is_real_gifts_accepted": isRealGiftsAccepted,
    // "is_gender_revealed": isGenderRevealed,
    // "is_height_revealed": isHeightRevealed,
    // "is_religion_revealed": isReligionRevealed,
    // "is_drinking_habit_revealed": isDrinkingHabitRevealed,
    // "is_smoking_habit_revealed": isSmokingHabitRevealed,
    // "is_sexual_orientation_revealed": isSexualOrientationRevealed,
    // "is_educational_qualification_revealed": isEducationalQualificationRevealed,
    // "is_personality_traits_revealed": isPersonalityTraitsRevealed,
    // "is_lifestyle_activities_revealed": isLifestyleActivitiesRevealed,
    // "is_contact_discovery_enabled": isContactDiscoveryEnabled,
    // "is_ghost_mode_enabled": isGhostModeEnabled,
    // "is_dark_mode_enabled": isDarkModeEnabled,
    // "is_receiving_push_notifications": isReceivingPushNotifications,
    // "is_receiving_flash_messages": isReceivingFlashMessages,
    // "is_last_seen_enabled": isLastSeenEnabled,
    // "is_online_status_enabled": isOnlineStatusEnabled,
    // "is_read_receipts_enabled": isReadReceiptsEnabled,
    // "is_profile_hidden_from_search": isProfileHiddenFromSearch,
    // "hidden_from_search_at": hiddenFromSearchAt,
    // "is_profile_reported": isProfileReported,
    // "reported_at": reportedAt,
    // "is_profile_striked": isProfileStriked,
    // "striked_at": strikedAt,
    // "strike_count": strikeCount,
    // "is_profile_blacklisted": isProfileBlacklisted,
    // "blacklisted_at": blacklistedAt,
    // "is_account_suspended": isAccountSuspended,
    // "suspended_at": suspendedAt,
    // "created_by": createdBy,
    // "created_by_name": createdByName,
    // "updated_by": updatedBy,
    // "updated_by_name": updatedByName,
    // "deleted_by": deletedBy,
    // "deleted_by_name": deletedByName,
    // "created_at": createdAt.toIso8601String(),
    // "updated_at": updatedAt.toIso8601String(),
    // "deleted_at": deletedAt,
    "auth_status": authStatus.toJson(),
    "profile_photo_url": profilePhotoUrl,
    // "square100_profile_photo_url": square100ProfilePhotoUrl,
    // "square300_profile_photo_url": square300ProfilePhotoUrl,
    // "square500_profile_photo_url": square500ProfilePhotoUrl,
    "age": age,
  };
}

class AuthStatus {
  String accessToken;
  String tokenType;
  bool is2FaConfiguredByUser;
  bool is2FaVerifiedByUser;
  bool isEmailVerificationRequired;
  DeviceMeta deviceMeta;

  AuthStatus({
    required this.accessToken,
    required this.tokenType,
    required this.is2FaConfiguredByUser,
    required this.is2FaVerifiedByUser,
    required this.isEmailVerificationRequired,
    required this.deviceMeta,
  });

  factory AuthStatus.fromJson(Map<String, dynamic> json) => AuthStatus(
    accessToken: json["access_token"] ?? "",
    tokenType: json["token_type"] ?? '',
    is2FaConfiguredByUser: json["is_2fa_configured_by_user"] ?? false,
    is2FaVerifiedByUser: json["is_2fa_verified_by_user"] ?? false,
    isEmailVerificationRequired:
        json["is_email_verification_required"] ?? false,
    deviceMeta: DeviceMeta.fromJson(json["device_meta"]),
  );

  Map<String, dynamic> toJson() => {
    "access_token": accessToken,
    "token_type": tokenType,
    "is_2fa_configured_by_user": is2FaConfiguredByUser,
    "is_2fa_verified_by_user": is2FaVerifiedByUser,
    "is_email_verification_required": isEmailVerificationRequired,
    "device_meta": deviceMeta.toJson(),
  };
}

class DeviceMeta {
  String type;
  String deviceName;
  String deviceOsVersion;
  String browser;
  String browserVersion;
  String userAgent;
  String screenResolution;
  String language;

  DeviceMeta({
    required this.type,
    required this.deviceName,
    required this.deviceOsVersion,
    required this.browser,
    required this.browserVersion,
    required this.userAgent,
    required this.screenResolution,
    required this.language,
  });

  factory DeviceMeta.fromJson(Map<String, dynamic> json) => DeviceMeta(
    type: json["type"] ?? '',
    deviceName: json["device-name"] ?? '',
    deviceOsVersion: json["device-os-version"] ?? '',
    browser: json["browser"] ?? '',
    browserVersion: json["browser_version"] ?? '',
    userAgent: json["user-agent"] ?? '',
    screenResolution: json["screen_resolution"] ?? '',
    language: json["language"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "device-name": deviceName,
    "device-os-version": deviceOsVersion,
    "browser": browser,
    "browser_version": browserVersion,
    "user-agent": userAgent,
    "screen_resolution": screenResolution,
    "language": language,
  };
}

class Relationships {
  Avatars partnerExpectations;
  Avatars lifeStyleActivities;
  Avatars personalityTraits;
  Avatars avatars;
  Avatars userIdentityProof;

  Relationships({
    required this.partnerExpectations,
    required this.lifeStyleActivities,
    required this.personalityTraits,
    required this.avatars,
    required this.userIdentityProof,
  });

  factory Relationships.fromJson(Map<String, dynamic> json) => Relationships(
    partnerExpectations: Avatars.fromJson(json["partnerExpectations"]),
    lifeStyleActivities: Avatars.fromJson(json["lifeStyleActivities"]),
    personalityTraits: Avatars.fromJson(json["personalityTraits"]),
    avatars: Avatars.fromJson(json["avatars"]),
    userIdentityProof: Avatars.fromJson(json["userIdentityProof"]),
  );

  Map<String, dynamic> toJson() => {
    "partnerExpectations": partnerExpectations.toJson(),
    "lifeStyleActivities": lifeStyleActivities.toJson(),
    "personalityTraits": personalityTraits.toJson(),
    "avatars": avatars.toJson(),
    "userIdentityProof": userIdentityProof.toJson(),
  };
}

class Avatars {
  List<Datum> data;

  Avatars({required this.data});

  factory Avatars.fromJson(Map<String, dynamic> json) => Avatars(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  String type;
  String id;

  Datum({required this.type, required this.id});

  factory Datum.fromJson(Map<String, dynamic> json) =>
      Datum(type: json["type"] ?? '', id: json["id"] ?? '');

  Map<String, dynamic> toJson() => {"type": type, "id": id};
}
