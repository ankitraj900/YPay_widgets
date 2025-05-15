import 'package:flutter/material.dart';
import 'ypay_textstyle.dart';

class YPayTextfield extends StatelessWidget {
  final String? label;
  final String title;
  final TextEditingController controller;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final bool isPasswordField;
  final bool? readOnly;
  final TextInputType? textInputType;
  final bool? showhintMessagesFirst;
  final String? hintText;
  final List<String>? hintMessages;
  final List<RegExp> regexList;
  final String? Function(String?)? validator;
  final bool? isSubmitted;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final bool? showHintIcon;
  final Iterable<String>? autoFills;

  const YPayTextfield({
    super.key,
    required this.title,
    required this.controller,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.isPasswordField = false,
    this.hintText,
    this.hintMessages,
    required this.regexList,
    this.isSubmitted,
    this.validator,
    this.focusNode,
    this.textInputAction,
    this.onFieldSubmitted,
    this.onChanged,
    this.onTap,
    this.autoFills,
    this.textInputType = TextInputType.text,
    this.showHintIcon = true,
    this.readOnly = false,
    this.showhintMessagesFirst = false,
  });

  bool _validateInput(String value) {
    if (regexList.isEmpty) return true;
    return regexList.every((regex) => regex.hasMatch(value));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              label!,
              style: YpayTextStyle.inputText,
            ),
          ),
        TextFormField(
          controller: controller,
          obscureText: isPasswordField,
          validator: (value) {
            if (validator != null) {
              return validator!(value);
            }
            if (value != null && !_validateInput(value)) {
              return 'Invalid input';
            }
            return null;
          },
          keyboardType: textInputType,
          readOnly: readOnly ?? false,
          focusNode: focusNode,
          textInputAction: textInputAction,
          onFieldSubmitted: onFieldSubmitted,
          onChanged: (value) {
            if (onChanged != null) {
              onChanged!(value);
            }
          },
          onTap: onTap,
          autofillHints: autoFills,
          decoration: InputDecoration(
            labelText: title,
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: Colors.grey[50],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: YpayColors.primary.withOpacity(0.3)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: YpayColors.primary.withOpacity(0.3)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: YpayColors.primary),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: YpayColors.error),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
        if (hintMessages != null && hintMessages!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: hintMessages!.map((message) {
                bool isValid = _validateInput(controller.text);
                return Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Row(
                    children: [
                      if (showHintIcon ?? true)
                        Icon(
                          isValid ? Icons.check_circle : Icons.radio_button_off,
                          color: isValid ? YpayColors.green : Colors.grey,
                          size: 16,
                        ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          message,
                          style: TextStyle(
                            color: isValid ? YpayColors.green : Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
} 
       