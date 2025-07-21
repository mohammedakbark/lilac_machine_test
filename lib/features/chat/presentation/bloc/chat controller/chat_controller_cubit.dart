import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:lilac_machine_test/features/chat/data/models/chat_model.dart';
import 'package:lilac_machine_test/features/chat/data/repo/get_user_message_repo.dart';
import 'package:meta/meta.dart';

part 'chat_controller_state.dart';

class ChatControllerCubit extends Cubit<ChatControllerState> {
  ChatControllerCubit() : super(ChatControllerInitialState());

  Future<void> onFetchChats(String senderId, String recieverID) async {
    log("Sender - $senderId\nReceiver - $recieverID");
    emit(ChatControllerLoadingState());
    final response = await GetUserMessageRepo.onGetUserMessages(
      senderId,
      recieverID,
    );
    if (response.isError) {
      emit(
        ChatControllerErrorState(
          error: response.message ?? response.data.toString(),
        ),
      );
    } else {
      final data = response.data as Map<String, dynamic>;

      emit(
        ChatControllerSuccessState(
          chats: data['data'].isEmpty
              ? ChatModel(messages: [])
              : ChatModel.fromJson(response.data as Map<String, dynamic>),
        ),
      );
    }
  }
}
