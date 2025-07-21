part of 'chat_profile_controller_cubit.dart';

@immutable
sealed class ChatProfileControllerState {}

final class ChatProfileControllerInitialState
    extends ChatProfileControllerState {}

final class ChatPorfileControllerLoadingState
    extends ChatProfileControllerState {}

final class ChatPorfileControllerErrorState extends ChatProfileControllerState {
  final String error;

  ChatPorfileControllerErrorState({required this.error});
}

final class ChatPorfileControllerSuccessState
    extends ChatProfileControllerState {
  final List<ChatProfileModel> lsitOfProfiles;

  ChatPorfileControllerSuccessState({required this.lsitOfProfiles});
}
