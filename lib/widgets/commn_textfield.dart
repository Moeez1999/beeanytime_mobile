import 'package:beeanytime/constants/app_colors.dart';
import 'package:beeanytime/constants/app_libraries.dart';
import 'package:flutter/services.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? labelText;
  final Color? fillcolor;
  final Color? bordercolor;
  final bool isTextHidden;
  final String? hintText;
  final IconData? buttonIcon;
  final IconData? prefixIcon;
  final bool? togglePassword;
  final int? maxLength;
  final Function()? toggleFunction;
  final IconData? toggleIcon;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final Function()? onTap;
  final Function()? prefixIconTap;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focus;
  final TextInputAction? textInputAction;
  final Widget? suffixicon;
  final changeObscureStatus;
  const CommonTextField(
      {Key? key,
      @required this.controller,
      this.validator,
      this.bordercolor,
      this.labelText,
      this.fillcolor,
      this.hintText,
      this.isTextHidden = false,
      this.buttonIcon,
      this.prefixIcon,
      this.onChanged,
      this.togglePassword = false,
      this.toggleFunction,
      this.toggleIcon,
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.done,
      this.maxLength,
      this.readOnly,
      this.onTap,
      this.inputFormatters,
      this.prefixIconTap,
      this.changeObscureStatus,
      this.focus,
      this.suffixicon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
      textAlignVertical: TextAlignVertical.center,
      onChanged: onChanged,
      inputFormatters: inputFormatters,
      obscureText: isTextHidden,
      readOnly: readOnly == null ? false : true,
      onTap: onTap,
      maxLength: maxLength,
      focusNode: focus,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        //suffix:suffixicon,
        prefixIcon: prefixIcon != null
            ? GestureDetector(
                child: Icon(
                  prefixIcon,
                  color: Colors.black,
                  size: 20.0,
                ),
                onTap: prefixIconTap,
              )
            : null,
        suffixIcon: suffixicon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: bordercolor ?? Colors.transparent,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: bordercolor ?? const Color(0xfff7fbff),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        hintText: hintText,
        fillColor: fillcolor,
        filled: true,
        hintStyle: TextStyle(color: AppColors.blackColor30),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        labelText: labelText,

        labelStyle: const TextStyle(color: Colors.black, fontSize: 10.0),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xfff7fbff)),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
      ),
      style: const TextStyle(color: Colors.black, fontSize: 15),
      controller: controller,
      validator: validator,
    );
  }
}
