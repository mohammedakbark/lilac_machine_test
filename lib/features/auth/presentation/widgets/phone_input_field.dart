import 'package:flutter/material.dart';
import 'package:lilac_machine_test/core/components/app_spacer.dart';
import 'package:lilac_machine_test/core/theme/app_colors.dart';
import 'package:lilac_machine_test/core/theme/app_styles.dart';
import 'package:lilac_machine_test/core/utils/app_validator.dart';
import 'package:lilac_machine_test/core/utils/responsive_helper.dart';

class PhoneInputField extends StatefulWidget {
  final TextEditingController controller;
  const PhoneInputField({super.key, required this.controller});

  @override
  State<PhoneInputField> createState() => _PhoneInputFieldState();
}

class _PhoneInputFieldState extends State<PhoneInputField> {
  final List<String> countryCodes = ['+91'];
  String selectedCode = '+91';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: AppValidator.mobileNumberValidator,
      controller: widget.controller,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppSpacer(widthPortion: .04),
            const Icon(Icons.phone_android, color: Color(0xFF3E1E1E)),
            AppSpacer(widthPortion: .01),
            DropdownButton<String>(
              value: selectedCode,
              underline: const SizedBox(),
              icon: const Icon(Icons.arrow_drop_down),
              onChanged: (value) {
                setState(() {
                  selectedCode = value!;
                });
              },
              items: countryCodes.map((code) {
                return DropdownMenuItem(value: code, child: Text(code));
              }).toList(),
            ),
            SizedBox(
              height: 30,
              child: const VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                width: 16,
              ),
            ),
          ],
        ),
        errorBorder: getBorder(isErrorBorder: true),
        enabledBorder: getBorder(),
        focusedBorder: getBorder(),
        disabledBorder: getBorder(),
        focusedErrorBorder: getBorder(isErrorBorder: true),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ResponsiveHelper.fontSmall),
        ),
        hintText: 'Enter mobile number',
      ),
      style: AppStyle.mediumStyle(),
    );
  }

  OutlineInputBorder getBorder({bool isErrorBorder = false}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: isErrorBorder ? AppColors.ERROR : AppColors.GREYSHADE,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
