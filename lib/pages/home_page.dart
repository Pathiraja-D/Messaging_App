import 'package:flutter/material.dart';
import 'package:newapp_functions/components/app_bar.dart';
import 'package:newapp_functions/components/post_item.dart';
import 'package:newapp_functions/config/app_routes.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> users = [];

  @override
  Widget build(BuildContext context) {
    _userList();
    return Scaffold(
      appBar: ToolBar(
        title: 'Flutter App',
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.nearbyPage);
              },
              icon: const Icon(
                Icons.location_pin,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 24,
          );
        },
      ),
    );
  }

  _userList() {
    for (var i = 0; i < 100; i++) {
      users.add('User Number $i');
    }
  }
}
