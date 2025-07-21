import 'package:fluttertoast/fluttertoast.dart';
import 'package:lilac_machine_test/core/theme/app_colors.dart';
import 'package:lilac_machine_test/core/utils/responsive_helper.dart';

showToast(String message, {bool isError = false}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: isError ? AppColors.ERROR : AppColors.BLACK,
    textColor: AppColors.WHITE,
    fontSize: ResponsiveHelper.fontSmall,
  );
}
