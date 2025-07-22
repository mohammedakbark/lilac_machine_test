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
  final bool searching;
  final List<ChatProfileModel> searchList;

  final List<ChatProfileModel> lsitOfProfiles;

  ChatPorfileControllerSuccessState({
    this.searching = false,
    this.searchList = const [],
    required this.lsitOfProfiles,
  });

  ChatPorfileControllerSuccessState copyWith({bool? searching,
   List<ChatProfileModel>? searchList,
   List<ChatProfileModel>? lsitOfProfiles}){
    return ChatPorfileControllerSuccessState(lsitOfProfiles:lsitOfProfiles??this.lsitOfProfiles,searching: searching??this.searching,searchList:searchList??this.searchList);
  }
}
