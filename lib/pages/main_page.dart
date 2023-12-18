import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newapp_functions/config/app_icons.dart';
import 'package:newapp_functions/pages/home_page.dart';
import 'package:newapp_functions/pages/profile_page.dart';
import 'package:newapp_functions/components/bottom_navigation.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex.index],
      bottomNavigationBar: MyButtonNavigation(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      // BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(
      //           AppImages.ic_home,
      //           height: 23,
      //           width: 23,
      //         ),
      //         label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(
      //           AppImages.ic_favourite,
      //           height: 23,
      //           width: 23,
      //         ),
      //         label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(
      //           AppImages.ic_add,
      //           height: 23,
      //           width: 23,
      //         ),
      //         label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(
      //           AppImages.ic_messages,
      //           height: 23,
      //           width: 23,
      //         ),
      //         label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(
      //           AppImages.ic_user,
      //           height: 23,
      //           width: 23,
      //         ),
      //         label: 'Home'),
      //   ],
      //   currentIndex: currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      //   type: BottomNavigationBarType.fixed,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   backgroundColor: Colors.amber,
      // ),
    );
  }

  final pages = [
    HomePage(),
    const Center(
      child: Text('Favourite'),
    ),
    const Center(
      child: Text('Add Post'),
    ),
    const Center(
      child: Text('Messages'),
    ),
    const ProfilePage(),
  ];
}

enum Menus {
  home,
  favourite,
  add,
  message,
  user,
}

class MyButtonNavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const MyButtonNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      margin: const EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Row(children: [
                Expanded(
                    child: BottomNavigationItem(
                        onPressed: () => onTap(Menus.home),
                        icon: AppImages.ic_home,
                        currentItem: currentIndex,
                        name: Menus.home)),
                Expanded(
                    child: BottomNavigationItem(
                        onPressed: () => onTap(Menus.favourite),
                        icon: AppImages.ic_favourite,
                        currentItem: currentIndex,
                        name: Menus.favourite)),
                const Spacer(),
                Expanded(
                    child: BottomNavigationItem(
                        onPressed: () => onTap(Menus.message),
                        icon: AppImages.ic_messages,
                        currentItem: currentIndex,
                        name: Menus.message)),
                Expanded(
                    child: BottomNavigationItem(
                        onPressed: () => onTap(Menus.user),
                        icon: AppImages.ic_user,
                        currentItem: currentIndex,
                        name: Menus.user)),
              ]),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.add),
              child: Container(
                padding: const EdgeInsets.all(16),
                width: 64,
                height: 64,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  AppImages.ic_add,
                  colorFilter: ColorFilter.mode(
                      currentIndex == Menus.add ? Colors.blue : Colors.black,
                      BlendMode.srcIn),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
