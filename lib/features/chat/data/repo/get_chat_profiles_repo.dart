import 'package:lilac_machine_test/config/dio/api_const.dart';
import 'package:lilac_machine_test/config/dio/dio_config.dart';
import 'package:lilac_machine_test/core/models/respons_model.dart';
import 'package:lilac_machine_test/features/auth/presentation/bloc/auth%20controller/auth_controller_bloc.dart';

class GetChatProfileRepo {
  static Future<ResponseModel> onGetUserProfile(
 
  ) async {
    final getToken = await AuthControllerBloc().getUserData;
    return await DioConfig.getRequest(
      endpoint: ApiConst.getChatProfile,

      header: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${getToken.token} ",
      },
    );
  }
}
