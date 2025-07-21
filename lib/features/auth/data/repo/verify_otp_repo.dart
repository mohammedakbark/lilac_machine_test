import 'package:lilac_machine_test/config/dio/api_const.dart';
import 'package:lilac_machine_test/config/dio/dio_config.dart';
import 'package:lilac_machine_test/core/models/respons_model.dart';

class VerifyOtpRepo {
  static Future<ResponseModel> verifyOTP(String mobileNumber, int otp) async {
    return await DioConfig.postRequest(
      endpoint: ApiConst.verifyOTP,

      header: {"Content-Type": "application/json"},
      body: {
        "data": {
          "type": "registration_otp_codes",
          "attributes": {
            "phone": "+91$mobileNumber",
            "otp": otp,
            "device_meta": {
              "type": "web",
              "device-name": "HP Pavilion 14-EP0068TU",
              "device-os-version": "Linux x86_64",
              "browser": "Mozilla Firefox Snap for Ubuntu (64-bit)",
              "browser_version": "112.0.2",
              "user-agent":
                  "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/112.0",
              "screen_resolution": "1600x900",
              "language": "en-GB",
            },
          },
        },
      },
    );
  }
}
