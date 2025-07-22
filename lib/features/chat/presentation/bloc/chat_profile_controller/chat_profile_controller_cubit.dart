import 'package:bloc/bloc.dart';
import 'package:lilac_machine_test/features/chat/data/models/chat_profile_model.dart';
import 'package:lilac_machine_test/features/chat/data/repo/get_chat_profiles_repo.dart';
import 'package:meta/meta.dart';

part 'chat_profile_controller_state.dart';

class ChatProfileControllerCubit extends Cubit<ChatProfileControllerState> {
  ChatProfileControllerCubit() : super(ChatProfileControllerInitialState());

  Future<void> onFetchChatProfiels() async {
    emit(ChatPorfileControllerLoadingState());
    final response = await GetChatProfileRepo.onGetUserProfile();
    if (response.isError) {
      emit(
        ChatPorfileControllerErrorState(
          error: response.message ?? response.data.toString(),
        ),
      );
    } else {
      final data = response.data as Map<String, dynamic>;
      final list = data['data'] as List;
      final listOfProfiles = list
          .map((e) => ChatProfileModel.fromJson(e))
          .toList();
      emit(ChatPorfileControllerSuccessState(lsitOfProfiles: listOfProfiles));
    }
  }

  Future<void> onSearch(String query) async {
    final crtState = state;
    if (crtState is ChatPorfileControllerSuccessState) {
      if (query.isEmpty) {
        emit(crtState.copyWith(searchList: []));
        return;
      }
      emit(
        crtState.copyWith(
          searchList: crtState.lsitOfProfiles
              .where(
                (element) =>
                    element.name.toLowerCase().contains(query.toLowerCase()),
              )
              .toList(),
        ),
      );
    }
  }
}
