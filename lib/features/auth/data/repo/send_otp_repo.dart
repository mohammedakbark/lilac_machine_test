import 'package:lilac_machine_test/config/dio/api_const.dart';
import 'package:lilac_machine_test/config/dio/dio_config.dart';
import 'package:lilac_machine_test/core/models/respons_model.dart';

class SendOtpRepo {
  static Future<ResponseModel> onSendOTP(String mobileNumber) async {
    return await DioConfig.postRequest(
      useJapx: false,
      endpoint: ApiConst.mobileLogin,

      header: {"Content-Type": "application/json"},
      body: {
        "data": {
          "type": "registration_otp_codes",
          "attributes": {"phone": "+91$mobileNumber"},
        },
      },
    );
  }
}
