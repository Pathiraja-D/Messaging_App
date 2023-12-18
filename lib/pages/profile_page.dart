import 'package:flutter/material.dart';
import 'package:newapp_functions/components/app_bar.dart';
import 'package:newapp_functions/components/user_avatar.dart';
import 'package:newapp_functions/config/app_routes.dart';
import 'package:newapp_functions/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: "Profile",
        actions: [
          PopupMenuButton<ProfileMenu>(onSelected: (value) {
            switch (value) {
              case ProfileMenu.edit:
                Navigator.of(context).pushNamed(AppRoutes.editProfile);
                break;
              case ProfileMenu.logout:
                Navigator.of(context).pushNamed(AppRoutes.main);
                break;
            }
          }, itemBuilder: (context) {
            return [
              const PopupMenuItem(
                value: ProfileMenu.edit,
                child: Row(
                  children: [
                    Icon(Icons.edit),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: ProfileMenu.logout,
                child: Row(
                  children: [
                    Icon(Icons.logout),
                  ],
                ),
              ),
            ];
          })
        ],
      ),
      body: const Column(
        children: [
          UserAvatar(size: 120),
          SizedBox(
            height: 24,
          ),
          Text(
            'Dinuk PAthiraja',
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Sri LAnka',
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text('Followers')
                ],
              ),
              Column(
                children: [
                  Text(
                    '119',
                    style: AppText.header2,
                  ),
                  Text('Posts')
                ],
              ),
              Column(
                children: [
                  Text(
                    '860',
                    style: AppText.header2,
                  ),
                  Text('Following')
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          )
        ],
      ),
    );
  }
}
