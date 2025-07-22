import 'package:flutter/material.dart';
import 'package:lilac_machine_test/core/theme/app_colors.dart';
import 'package:lilac_machine_test/core/theme/app_styles.dart';
import 'package:lilac_machine_test/core/utils/intl_c.dart';
import 'package:lilac_machine_test/features/chat/data/models/chat_model.dart';

class MessageBubble extends StatelessWidget {
  final MessageModel message;
  final String senderId;
  const MessageBubble({
    super.key,
    required this.message,
    required this.senderId,
  });
  bool get isMe => int.parse(senderId) == message.senderId;
  @override
  Widget build(BuildContext context) {
    Color bubbeleColor = isMe ? AppColors.PRIMARY : AppColors.GREYSHADE;
    BorderRadius radius = BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: isMe ? Radius.circular(10) : Radius.zero,
      bottomRight: isMe ? Radius.zero : Radius.circular(10),
    );
    final alignmment = isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Align(
        alignment: isMe ? Alignment.topRight : Alignment.topLeft,
        child: Column(
          crossAxisAlignment: alignmment,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: radius,
                color: bubbeleColor,
              ),
              child: Text(
                message.message,
                style: AppStyle.normalStyle(color: AppColors.WHITE),
              ),
            ),
            Text(
              IntlC.convertToTime(message.sentAt),
              style: AppStyle.smallStyle(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
