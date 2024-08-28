import "package:flutter/material.dart";
import "package:apotik_apps/theme.dart";

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget scanButton() {
      return FloatingActionButton(
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () {},
        backgroundColor: backgroundColor6,
        // backgroundColor: cColor,
        child: Image.asset(
          'assets/img/icon_scan.png',
          color: cColor,
          // color: Color.fromARGB(0, 252, 250, 250),
        ),
      );
    }

    Widget custombottomNav() {
      return ClipRRect(
        // decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        // ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          color: cColor,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: cColor,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/img/icon_home.png',
                  width: 20,
                ),
                label: '',
                tooltip: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/img/icon_love.png',
                  width: 20,
                ),
                label: '',
                tooltip: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/img/icon_cart.png',
                  height: 4,
                  width: 4,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/img/icon_cart.png',
                  width: 20,
                ),
                label: '',
                tooltip: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/img/icon_profile.png',
                  width: 20,
                ),
                label: '',
                tooltip: 'Profile',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: aColor,
      floatingActionButton: scanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: custombottomNav(),
      body: SafeArea(
        child: Center(
          child: Text('Main Page'),
        ),
      ),
    );
  }
}
