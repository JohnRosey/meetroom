import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../app/constants/app.colors.dart';
import '../../core/utils/obscure.text.util.dart';
import 'custom.styles.dart';

class CustomTextField {
  static customTextField({
    required hintText,
    TextEditingController? textEditingController,
    TextInputType? inputType,
    bool? enabled,
    int? maxLength,
    required bool themeFlag,
    int? minLines,
    int? maxLines,
    String? initialValue,
    String? Function(String?)? validator,
    Function(String)? onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        enabled: enabled,
        onChanged: onChanged,
        maxLength: maxLength,
        minLines: minLines,
        maxLines: maxLines,
        controller: textEditingController,
        validator: validator,
        initialValue: initialValue,
        style: kBodyText.copyWith(
          color: themeFlag ? AppColors.creamColor : AppColors.mirage,
        ),
        keyboardType: inputType,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: hintText,
          hintStyle: kBodyText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: themeFlag ? AppColors.creamColor : AppColors.mirage,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.rawSienna,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }

  static customPasswordField({
    required BuildContext context,
    required onTap,
    required TextEditingController textEditingController,
    String? Function(String?)? validator,
    required bool themeFlag,
    Function(String)? onChanged,
  }) {
    final bool isPasswordVisible =
        Provider.of<ObscureTextUtil>(context, listen: true).isTrue;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: textEditingController,
        validator: validator,
        onChanged: onChanged,
        style: kBodyText.copyWith(
          color: themeFlag ? AppColors.creamColor : AppColors.mirage,
        ),
        obscureText: isPasswordVisible,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: onTap,
              icon: Icon(
                isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
            ),
          ),
          contentPadding: const EdgeInsets.all(20),
          hintText: 'Password',
          hintStyle: kBodyText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: themeFlag ? AppColors.creamColor : AppColors.mirage,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.rawSienna,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
