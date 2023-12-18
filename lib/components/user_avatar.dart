import 'package:flutter/material.dart';
import 'package:newapp_functions/config/app_icons.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  const UserAvatar({super.key, this.size = 90});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: Image.asset(AppImages.img_temp, width: size, height: size),
    );
  }
}
