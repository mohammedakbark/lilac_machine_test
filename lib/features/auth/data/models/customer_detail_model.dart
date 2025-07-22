class CustomerDetailsModel {
  final dynamic id;
  final String name;
  final String username;
  final String email;
  final String dateOfBirth;
  final String phone;
  final int currentSubscriptionPlanId;
  final bool isProfileBoostActive;
  final String gender;
  final String? fcmToken;
  final bool isActive;
  final int coinBalance;
  final String customerCode;
  final String referralCode;
  final String? referredBy;
  final int? referredId;
  final String? referredUserName;
  final bool isPremiumCustomer;
  final bool isOnline;
  final bool isProfilePreferencesCompleted;
  final int profileCompletionPercentage;
  final bool isInstagramConnected;
  final String preferredGender;
  final bool hasUnlimitedUserSwipe;
  final String? lastProfileReminderAt;
  final String? resetSwipeLimitAt;
  final int remainingSuperLikeLimit;
  final String? resetSuperLikeLimitAt;
  final int remainingFlashMessageLimit;
  final String? resetFlashMessageLimitAt;
  final int remainingBoostLimit;
  final String? resetBoostLimitAt;
  final String currentLocation;
  final dynamic currentLatitude;
  final dynamic currentLongitude;
  final int heightInCm;
  final String lastActiveAt;
  final int relationshipStatusId;
  final String relationshipStatusName;
  final String filterPassportModeLocation;
  final dynamic filterPassportModeLatitude;
  final dynamic filterPassportModeLongitude;
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
  final bool isProfileHiddenFromSearch;
  final bool isProfileReported;
  final bool isProfileStriked;
  final int strikeCount;
  final bool isProfileBlacklisted;
  final bool isAccountSuspended;
  final int updatedBy;
  final String updatedByName;
  final String createdAt;
  final String updatedAt;
  final AuthStatus authStatus;
  final String profilePhotoUrl;
  final String square100ProfilePhotoUrl;
  final String square300ProfilePhotoUrl;
  final String square500ProfilePhotoUrl;
  final int age;
  final List<PartnerExpectation> partnerExpectations;
  final List<Avatar> avatars;

  CustomerDetailsModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.dateOfBirth,
    required this.phone,
    required this.currentSubscriptionPlanId,
    required this.isProfileBoostActive,
    required this.gender,
    required this.fcmToken,
    required this.isActive,
    required this.coinBalance,
    required this.customerCode,
    required this.referralCode,
    required this.referredBy,
    required this.referredId,
    required this.referredUserName,
    required this.isPremiumCustomer,
    required this.isOnline,
    required this.isProfilePreferencesCompleted,
    required this.profileCompletionPercentage,
    required this.isInstagramConnected,
    required this.preferredGender,
    required this.hasUnlimitedUserSwipe,
    required this.lastProfileReminderAt,
    required this.resetSwipeLimitAt,
    required this.remainingSuperLikeLimit,
    required this.resetSuperLikeLimitAt,
    required this.remainingFlashMessageLimit,
    required this.resetFlashMessageLimitAt,
    required this.remainingBoostLimit,
    required this.resetBoostLimitAt,
    required this.currentLocation,
    required this.currentLatitude,
    required this.currentLongitude,
    required this.heightInCm,
    required this.lastActiveAt,
    required this.relationshipStatusId,
    required this.relationshipStatusName,
    required this.filterPassportModeLocation,
    required this.filterPassportModeLatitude,
    required this.filterPassportModeLongitude,
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
    required this.isProfileHiddenFromSearch,
    required this.isProfileReported,
    required this.isProfileStriked,
    required this.strikeCount,
    required this.isProfileBlacklisted,
    required this.isAccountSuspended,
    required this.updatedBy,
    required this.updatedByName,
    required this.createdAt,
    required this.updatedAt,
    required this.authStatus,
    required this.profilePhotoUrl,
    required this.square100ProfilePhotoUrl,
    required this.square300ProfilePhotoUrl,
    required this.square500ProfilePhotoUrl,
    required this.age,
    required this.partnerExpectations,
    required this.avatars,
  });

  factory CustomerDetailsModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'];

    return CustomerDetailsModel(
      id: data['id'],
      name: data['name'],
      username: data['username'],
      email: data['email'],
      dateOfBirth: data['date_of_birth'],
      phone: data['phone'],
      currentSubscriptionPlanId: data['current_subscription_plan_id'],
      isProfileBoostActive: data['is_profile_boost_active'] == 1,
      gender: data['gender'],
      fcmToken: data['fcm_token'],
      isActive: data['is_active'],
      coinBalance: data['coin_balance'],
      customerCode: data['customer_code'],
      referralCode: data['referral_code'],
      referredBy: data['referred_by'],
      referredId: data['referred_id'],
      referredUserName: data['referred_user_name'],
      isPremiumCustomer: data['is_premium_customer'],
      isOnline: data['is_online'],
      isProfilePreferencesCompleted: data['is_profile_preferences_completed'],
      profileCompletionPercentage: data['profile_completion_percentage'],
      isInstagramConnected: data['is_instagram_connected'] == 1,
      preferredGender: data['preferred_gender'],
      hasUnlimitedUserSwipe: data['has_unlimited_user_swipe'] == 1,
      lastProfileReminderAt: data['last_profile_reminder_at'],
      resetSwipeLimitAt: data['reset_swipe_limit_at'],
      remainingSuperLikeLimit: data['remaining_super_like_limit'],
      resetSuperLikeLimitAt: data['reset_super_like_limit_at'],
      remainingFlashMessageLimit: data['remaining_flash_message_limit'],
      resetFlashMessageLimitAt: data['reset_flash_message_limit_at'],
      remainingBoostLimit: data['remaining_boost_limit'],
      resetBoostLimitAt: data['reset_boost_limit_at'],
      currentLocation: data['current_location'],
      currentLatitude: data['current_latitude'],
      currentLongitude:data['current_longitude'],
      heightInCm: data['height_in_cm'],
      lastActiveAt: data['last_active_at'],
      relationshipStatusId: data['relationship_status_id'],
      relationshipStatusName: data['relationship_status_name'],
      filterPassportModeLocation: data['filter_passport_mode_location'],
      filterPassportModeLatitude:data['filter_passport_mode_latitude'],
      filterPassportModeLongitude:data['filter_passport_mode_longitude'],
      isRealGiftsAccepted: data['is_real_gifts_accepted'],
      isGenderRevealed: data['is_gender_revealed'],
      isHeightRevealed: data['is_height_revealed'],
      isReligionRevealed: data['is_religion_revealed'],
      isDrinkingHabitRevealed: data['is_drinking_habit_revealed'],
      isSmokingHabitRevealed: data['is_smoking_habit_revealed'],
      isSexualOrientationRevealed: data['is_sexual_orientation_revealed'],
      isEducationalQualificationRevealed: data['is_educational_qualification_revealed'],
      isPersonalityTraitsRevealed: data['is_personality_traits_revealed'],
      isLifestyleActivitiesRevealed: data['is_lifestyle_activities_revealed'],
      isContactDiscoveryEnabled: data['is_contact_discovery_enabled'],
      isGhostModeEnabled: data['is_ghost_mode_enabled'],
      isDarkModeEnabled: data['is_dark_mode_enabled'],
      isReceivingPushNotifications: data['is_receiving_push_notifications'],
      isReceivingFlashMessages: data['is_receiving_flash_messages'],
      isLastSeenEnabled: data['is_last_seen_enabled'],
      isOnlineStatusEnabled: data['is_online_status_enabled'],
      isReadReceiptsEnabled: data['is_read_receipts_enabled'],
      isProfileHiddenFromSearch: data['is_profile_hidden_from_search'],
      isProfileReported: data['is_profile_reported'],
      isProfileStriked: data['is_profile_striked'],
      strikeCount: data['strike_count'],
      isProfileBlacklisted: data['is_profile_blacklisted'],
      isAccountSuspended: data['is_account_suspended'],
      updatedBy: data['updated_by'],
      updatedByName: data['updated_by_name'],
      createdAt: data['created_at'],
      updatedAt: data['updated_at'],
      authStatus: AuthStatus.fromJson(data['auth_status']),
      profilePhotoUrl: data['profile_photo_url'],
      square100ProfilePhotoUrl: data['square100_profile_photo_url'],
      square300ProfilePhotoUrl: data['square300_profile_photo_url'],
      square500ProfilePhotoUrl: data['square500_profile_photo_url'],
      age: data['age'],
      partnerExpectations: (data['partnerExpectations'] as List)
          .map((e) => PartnerExpectation.fromJson(e))
          .toList(),
      avatars: (data['avatars'] as List).map((e) => Avatar.fromJson(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    // Generate the JSON as per your `fromJson`. Let me know if you want me to add it.
    throw UnimplementedError('toJson is not implemented yet');
  }
}

class AuthStatus {
  final String accessToken;
  final String tokenType;
  final bool is2FAConfigured;
  final bool is2FAVerified;
  final bool isEmailVerificationRequired;
  final DeviceMeta deviceMeta;

  AuthStatus({
    required this.accessToken,
    required this.tokenType,
    required this.is2FAConfigured,
    required this.is2FAVerified,
    required this.isEmailVerificationRequired,
    required this.deviceMeta,
  });

  factory AuthStatus.fromJson(Map<String, dynamic> json) {
    return AuthStatus(
      accessToken: json['access_token'],
      tokenType: json['token_type'],
      is2FAConfigured: json['is_2fa_configured_by_user'],
      is2FAVerified: json['is_2fa_verified_by_user'],
      isEmailVerificationRequired: json['is_email_verification_required'],
      deviceMeta: DeviceMeta.fromJson(json['device_meta']),
    );
  }
}

class DeviceMeta {
  final String type;
  final String deviceName;
  final String deviceOsVersion;
  final String browser;
  final String browserVersion;
  final String userAgent;
  final String screenResolution;
  final String language;

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

  factory DeviceMeta.fromJson(Map<String, dynamic> json) {
    return DeviceMeta(
      type: json['type'],
      deviceName: json['device-name'],
      deviceOsVersion: json['device-os-version'],
      browser: json['browser'],
      browserVersion: json['browser_version'],
      userAgent: json['user-agent'],
      screenResolution: json['screen_resolution'],
      language: json['language'],
    );
  }
}

class PartnerExpectation {
  final dynamic id;
  final String name;
  final String icon;
  final int traitTypeId;
  final int createdBy;
  final int updatedBy;
  final int laravelThroughKey;
  final String iconUrl;

  PartnerExpectation({
    required this.id,
    required this.name,
    required this.icon,
    required this.traitTypeId,
    required this.createdBy,
    required this.updatedBy,
    required this.laravelThroughKey,
    required this.iconUrl,
  });

  factory PartnerExpectation.fromJson(Map<String, dynamic> json) {
    return PartnerExpectation(
      id: json['id'],
      name: json['name'],
      icon: json['icon'],
      traitTypeId: json['trait_type_id'],
      createdBy: json['created_by'],
      updatedBy: json['updated_by'],
      laravelThroughKey: json['laravel_through_key'],
      iconUrl: json['icon_url'],
    );
  }
}

class Avatar {
  final dynamic id;
  final int userId;
  final bool isActive;
  final String approvedAt;
  final int approvedBy;
  final String createdAt;
  final String updatedAt;
  final String imageUrl;
  final String square100ImageUrl;
  final String square300ImageUrl;
  final String square500ImageUrl;

  Avatar({
    required this.id,
    required this.userId,
    required this.isActive,
    required this.approvedAt,
    required this.approvedBy,
    required this.createdAt,
    required this.updatedAt,
    required this.imageUrl,
    required this.square100ImageUrl,
    required this.square300ImageUrl,
    required this.square500ImageUrl,
  });

  factory Avatar.fromJson(Map<String, dynamic> json) {
    return Avatar(
      id: json['id'],
      userId: json['user_id'],
      isActive: json['is_active'],
      approvedAt: json['approved_at'],
      approvedBy: json['approved_by'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      imageUrl: json['image_url'],
      square100ImageUrl: json['square100_image_url'],
      square300ImageUrl: json['square300_image_url'],
      square500ImageUrl: json['square500_image_url'],
    );
  }
}
