import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stabrak/Screens/Store.dart';
import 'package:stabrak/Screens/homeScreen.dart';
import 'package:stabrak/Screens/profile.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class NaviScreen extends StatefulWidget {
  const NaviScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<NaviScreen> createState() => _NaviScreenState();
}

class _NaviScreenState extends State<NaviScreen> {
  dynamic selected;
  var heart = false;
  PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, //to make floating action button notch transparent

      //to avoid the floating action button overlapping behavior,
      // when a soft keyboard is displayed
      // resizeToAvoidBottomInset: false,

      bottomNavigationBar: StylishBottomBar(
        option: AnimatedBarOptions(
          // iconSize: 32,
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.animated,
          // opacity: 0.3,
        ),
        items: [
          BottomBarItem(
            icon: const Icon(
              Icons.house_outlined,
            ),
            selectedIcon: const Icon(Icons.house_rounded),
            // selectedColor: Colors.teal,
            backgroundColor: Colors.teal,
            title: const Text('Home'),
          ),
          BottomBarItem(
            icon: const Icon(Icons.store_outlined),
            selectedIcon: const Icon(Icons.store_rounded),
            selectedColor: Color.fromRGBO(44,105,141, 1),
            // unSelectedColor: Colors.purple,
            // backgroundColor: Colors.orange,
            title: const Text('Store'),
          ),
          BottomBarItem(
              icon: const Icon(
                Icons.style_outlined,
              ),
              selectedIcon: const Icon(
                Icons.style,
              ),
              backgroundColor: Colors.amber,
              selectedColor: Colors.deepOrangeAccent,
              title: const Text('Style')),
          BottomBarItem(
              icon: const Icon(
                Icons.person_outline,
              ),
              selectedIcon: const Icon(
                Icons.person,
              ),
              backgroundColor: Colors.purpleAccent,
              selectedColor: Colors.deepPurple,
              title: const Text('Profile')),
        ],
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: selected ?? 0,
        onTap: (index) {
          controller.jumpToPage(index);
          setState(() {
            selected = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            heart = !heart;
          });
        },
        backgroundColor: Colors.white,
        child: Icon(
          heart ? CupertinoIcons.cart : CupertinoIcons.cart_fill,
          color: Colors.red,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: const [
            HomeScreen(),
            StoreScreen(),
            Center(child: Text('Style')),
            ProfileScreen(),
          ],
        ),
      ),
    );
  }
}