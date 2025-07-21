class ChatModel {
    List<MessageModel> messages;
    // List<Included> included;
    // Meta meta;
    // Links links;

    ChatModel({
        required this.messages,
        // required this.included,
        // required this.meta,
        // required this.links,
    });

    factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        messages: List<MessageModel>.from(json["data"].map((x) => MessageModel.fromJson(x))),
        // included: List<Included>.from(json["included"].map((x) => Included.fromJson(x))),
        // meta: Meta.fromJson(json["meta"]),
        // links: Links.fromJson(json["links"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(messages.map((x) => x.toJson())),
        // "included": List<dynamic>.from(included.map((x) => x.toJson())),
        // "meta": meta.toJson(),
        // "links": links.toJson(),
    };
}

class MessageModel {
    String type;
    String id;
    DatumAttributes attributes;
    Relationships relationships;

    MessageModel({
        required this.type,
        required this.id,
        required this.attributes,
        required this.relationships,
    });

    factory MessageModel.fromJson(Map<String, dynamic> json) => MessageModel(
        type: json["type"]??'',
        id: json["id"]??'',
        attributes: DatumAttributes.fromJson(json["attributes"]),
        relationships: Relationships.fromJson(json["relationships"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "attributes": attributes.toJson(),
        "relationships": relationships.toJson(),
    };
}

class DatumAttributes {
    int chatThreadId;
    int chatMessageTypeId;
    int senderId;
    int receiverId;
    String message;
    dynamic mediaMeta;
    bool isOneTimeView;
    bool isOnVanishMode;
    dynamic scheduledAt;
    DateTime sentAt;
    // DateTime deliveredAt;
    dynamic viewedAt;
    dynamic stickerId;
    dynamic giftOrderId;
    dynamic senderCoinTransactionId;
    dynamic receiverCoinTransactionId;
    dynamic transferCoins;
    dynamic deletedForSenderBy;
    dynamic deletedForSenderAt;
    dynamic deletedForReceiverBy;
    dynamic deletedForReceiverAt;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    dynamic mediaUrl;

    DatumAttributes({
        required this.chatThreadId,
        required this.chatMessageTypeId,
        required this.senderId,
        required this.receiverId,
        required this.message,
        required this.mediaMeta,
        required this.isOneTimeView,
        required this.isOnVanishMode,
        required this.scheduledAt,
        required this.sentAt,
        // required this.deliveredAt,
        required this.viewedAt,
        required this.stickerId,
        required this.giftOrderId,
        required this.senderCoinTransactionId,
        required this.receiverCoinTransactionId,
        required this.transferCoins,
        required this.deletedForSenderBy,
        required this.deletedForSenderAt,
        required this.deletedForReceiverBy,
        required this.deletedForReceiverAt,
        required this.createdAt,
        required this.updatedAt,
        required this.deletedAt,
        required this.mediaUrl,
    });

    factory DatumAttributes.fromJson(Map<String, dynamic> json) => DatumAttributes(
        chatThreadId: json["chat_thread_id"],
        chatMessageTypeId: json["chat_message_type_id"],
        senderId: json["sender_id"],
        receiverId: json["receiver_id"],
        message: json["message"],
        mediaMeta: json["media_meta"],
        isOneTimeView: json["is_one_time_view"],
        isOnVanishMode: json["is_on_vanish_mode"],
        scheduledAt: json["scheduled_at"],
        sentAt: DateTime.parse(json["sent_at"]),
        // deliveredAt: DateTime.parse(json["delivered_at"]),
        viewedAt: json["viewed_at"],
        stickerId: json["sticker_id"],
        giftOrderId: json["gift_order_id"],
        senderCoinTransactionId: json["sender_coin_transaction_id"],
        receiverCoinTransactionId: json["receiver_coin_transaction_id"],
        transferCoins: json["transfer_coins"],
        deletedForSenderBy: json["deleted_for_sender_by"],
        deletedForSenderAt: json["deleted_for_sender_at"],
        deletedForReceiverBy: json["deleted_for_receiver_by"],
        deletedForReceiverAt: json["deleted_for_receiver_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        mediaUrl: json["media_url"],
    );

    Map<String, dynamic> toJson() => {
        "chat_thread_id": chatThreadId,
        "chat_message_type_id": chatMessageTypeId,
        "sender_id": senderId,
        "receiver_id": receiverId,
        "message": message,
        "media_meta": mediaMeta,
        "is_one_time_view": isOneTimeView,
        "is_on_vanish_mode": isOnVanishMode,
        "scheduled_at": scheduledAt,
        "sent_at": sentAt.toIso8601String(),
        // "delivered_at": deliveredAt.toIso8601String(),
        "viewed_at": viewedAt,
        "sticker_id": stickerId,
        "gift_order_id": giftOrderId,
        "sender_coin_transaction_id": senderCoinTransactionId,
        "receiver_coin_transaction_id": receiverCoinTransactionId,
        "transfer_coins": transferCoins,
        "deleted_for_sender_by": deletedForSenderBy,
        "deleted_for_sender_at": deletedForSenderAt,
        "deleted_for_receiver_by": deletedForReceiverBy,
        "deleted_for_receiver_at": deletedForReceiverAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "media_url": mediaUrl,
    };
}

class Relationships {
    GiftOrder sender;
    GiftOrder sticker;
    GiftOrder giftOrder;

    Relationships({
        required this.sender,
        required this.sticker,
        required this.giftOrder,
    });

    factory Relationships.fromJson(Map<String, dynamic> json) => Relationships(
        sender: GiftOrder.fromJson(json["sender"]),
        sticker: GiftOrder.fromJson(json["sticker"]),
        giftOrder: GiftOrder.fromJson(json["giftOrder"]),
    );

    Map<String, dynamic> toJson() => {
        "sender": sender.toJson(),
        "sticker": sticker.toJson(),
        "giftOrder": giftOrder.toJson(),
    };
}

class GiftOrder {
    Data? data;

    GiftOrder({
        required this.data,
    });

    factory GiftOrder.fromJson(Map<String, dynamic> json) => GiftOrder(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
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

class Included {
    String type;
    String id;
    IncludedAttributes attributes;

    Included({
        required this.type,
        required this.id,
        required this.attributes,
    });

    factory Included.fromJson(Map<String, dynamic> json) => Included(
        type: json["type"],
        id: json["id"],
        attributes: IncludedAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class IncludedAttributes {
    String name;
    String username;
    String email;
    String profilePhotoUrl;
    String square100ProfilePhotoUrl;
    String square300ProfilePhotoUrl;
    String square500ProfilePhotoUrl;
    dynamic age;

    IncludedAttributes({
        required this.name,
        required this.username,
        required this.email,
        required this.profilePhotoUrl,
        required this.square100ProfilePhotoUrl,
        required this.square300ProfilePhotoUrl,
        required this.square500ProfilePhotoUrl,
        required this.age,
    });

    factory IncludedAttributes.fromJson(Map<String, dynamic> json) => IncludedAttributes(
        name: json["name"],
        username: json["username"],
        email: json["email"],
        profilePhotoUrl: json["profile_photo_url"],
        square100ProfilePhotoUrl: json["square100_profile_photo_url"],
        square300ProfilePhotoUrl: json["square300_profile_photo_url"],
        square500ProfilePhotoUrl: json["square500_profile_photo_url"],
        age: json["age"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "username": username,
        "email": email,
        "profile_photo_url": profilePhotoUrl,
        "square100_profile_photo_url": square100ProfilePhotoUrl,
        "square300_profile_photo_url": square300ProfilePhotoUrl,
        "square500_profile_photo_url": square500ProfilePhotoUrl,
        "age": age,
    };
}

class Links {
    String self;
    String first;
    String next;
    String last;

    Links({
        required this.self,
        required this.first,
        required this.next,
        required this.last,
    });

    factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: json["self"],
        first: json["first"],
        next: json["next"],
        last: json["last"],
    );

    Map<String, dynamic> toJson() => {
        "self": self,
        "first": first,
        "next": next,
        "last": last,
    };
}

class Meta {
    Pagination pagination;

    Meta({
        required this.pagination,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: Pagination.fromJson(json["pagination"]),
    );

    Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
    };
}

class Pagination {
    int total;
    int count;
    int perPage;
    int currentPage;
    int totalPages;

    Pagination({
        required this.total,
        required this.count,
        required this.perPage,
        required this.currentPage,
        required this.totalPages,
    });

    factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        total: json["total"],
        count: json["count"],
        perPage: json["per_page"],
        currentPage: json["current_page"],
        totalPages: json["total_pages"],
    );

    Map<String, dynamic> toJson() => {
        "total": total,
        "count": count,
        "per_page": perPage,
        "current_page": currentPage,
        "total_pages": totalPages,
    };
}