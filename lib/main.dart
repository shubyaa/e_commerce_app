import 'package:e_commerce_app/screens/nav_screens/favourites.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:e_commerce_app/screens/nav_screens/orders.dart';
import 'package:e_commerce_app/screens/nav_screens/home.dart';
import 'package:e_commerce_app/screens/nav_screens/profile.dart';
import 'package:e_commerce_app/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: primaryColor,
          ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTab = 0;
  final PersistentTabController _controller = PersistentTabController();
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          false, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style5, // Choose the nav bar style with this property.
    );
  }
}

List<Widget> _buildScreens() {
  return [
    HomeScreen(),
    // HomePage(),
    OrderScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.home),
      title: ("Home"),
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: primaryGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.shopping_bag_outlined),
      title: ("Cart"),
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: primaryGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.favorite_outline_rounded),
      title: ("Favourite"),
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: primaryGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.person_4_outlined),
      title: ("Profile"),
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: primaryGrey,
    ),
  ];
}
