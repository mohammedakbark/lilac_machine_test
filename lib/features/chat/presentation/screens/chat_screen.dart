import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lilac_machine_test/core/components/app_custome_back_button.dart';
import 'package:lilac_machine_test/core/components/app_laoding.dart';
import 'package:lilac_machine_test/core/components/app_margin.dart';
import 'package:lilac_machine_test/core/components/app_spacer.dart';
import 'package:lilac_machine_test/core/components/custome_network_img.dart';
import 'package:lilac_machine_test/core/theme/app_colors.dart';
import 'package:lilac_machine_test/core/theme/app_styles.dart';
import 'package:lilac_machine_test/core/utils/responsive_helper.dart';
import 'package:lilac_machine_test/features/chat/presentation/bloc/chat%20controller/chat_controller_cubit.dart';
import 'package:lilac_machine_test/features/chat/presentation/widgets/message_bubble.dart';

class ChatScreen extends StatefulWidget {
  final String senderId;
  final String receiverId;
  final String name;
  final String profile;
  final bool isOnline;
  const ChatScreen({
    super.key,
    required this.senderId,
    required this.receiverId,
    required this.name,
    required this.isOnline,
    required this.profile,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _messageController = TextEditingController();
  @override
  void initState() {
    super.initState();
    context.read<ChatControllerCubit>().onFetchChats(
      widget.senderId,
      widget.receiverId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BGCOLOR,
      appBar: AppBar(
        toolbarHeight: 70,
        // leadingWidth: 80,
        backgroundColor: AppColors.BGCOLOR,
        // leading: AppCustomeBackButton(),
        title: Row(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColors.PRIMARY,
                shape: BoxShape.circle,
              ),
              child: CustomeNetworkImg(imageURL: widget.profile),
            ),
            AppSpacer(widthPortion: .02),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name, style: AppStyle.mediumStyle()),
                Row(
                  children: [
                    Text(
                      widget.isOnline ? "Online" : "Offline",
                      style: AppStyle.smallStyle(fontSize: 12),
                    ),
                    AppSpacer(widthPortion: .01),
                    Text(
                      "●",
                      style: AppStyle.boldStyle(
                        color: widget.isOnline ? Colors.green : AppColors.ERROR,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        width: ResponsiveHelper.wp,
        height: ResponsiveHelper.hp,
        decoration: BoxDecoration(
          color: AppColors.WHITE,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(ResponsiveHelper.borderRadiusLarge),
            topRight: Radius.circular(ResponsiveHelper.borderRadiusLarge),
          ),
        ),
        child: Center(
          child: BlocBuilder<ChatControllerCubit, ChatControllerState>(
            builder: (context, state) {
              switch (state) {
                case ChatControllerErrorState():
                  {
                    return Text(state.error);
                  }
                case ChatControllerSuccessState():
                  {
                    final chats = state.chats.messages;
                    return chats.isEmpty
                        ? Text("No messages")
                        : ListView.builder(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            itemCount: chats.length,
                            itemBuilder: (context, index) {
                              final chat = chats[index];
                              return MessageBubble(
                                senderId: widget.senderId,
                                message: chat,
                              );
                            },
                          );
                  }
                default:
                  {
                    return AppLoading();
                  }
              }
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),

            child: TextFormField(
              controller: _messageController,
              style: AppStyle.smallStyle(),
              cursorColor: AppColors.PRIMARY,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: _onSendMessage,
                  child: Icon(Icons.send, color: AppColors.PRIMARY),
                ),
                hintText: "Send message...",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    ResponsiveHelper.borderRadiusLarge,
                  ),
                ),
                fillColor: AppColors.BGCOLOR,
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onSendMessage() {
    
  }
}
