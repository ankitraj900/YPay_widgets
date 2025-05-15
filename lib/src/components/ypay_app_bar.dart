import 'package:flutter/material.dart';
import 'ypay_textstyle.dart';

class YPayAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final List<Widget>? actions;

  const YPayAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: YpayColors.primary,
      leading: showBackButton
          ? IconButton(
              icon: Icon(Icons.arrow_back_ios, color: YpayColors.white),
              onPressed: () => Navigator.of(context).pop(),
            )
          : null,
      title: Text(
        title,
        style: YpayTextStyle.header.copyWith(color: YpayColors.white),
      ),
      centerTitle: true,
      actions: actions,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
} 