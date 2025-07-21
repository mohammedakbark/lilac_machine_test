part of 'chat_controller_cubit.dart';

@immutable
sealed class ChatControllerState {}

final class ChatControllerInitialState extends ChatControllerState {}

final class ChatControllerLoadingState extends ChatControllerState {}

final class ChatControllerErrorState extends ChatControllerState {
  final String error;

  ChatControllerErrorState({required this.error});
}

final class ChatControllerSuccessState extends ChatControllerState {
  final ChatModel chats;

  ChatControllerSuccessState({required this.chats});
}
