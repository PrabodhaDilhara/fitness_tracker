import 'package:fitness_tracker/constant/colors.dart';
import 'package:fitness_tracker/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final sidemenuData = SideMenuData();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      color: BackgroundColor,
      child: ListView.builder(
          itemCount: sidemenuData.sidemenu.length,
          itemBuilder: (context, index) {
            return _SideMenuList(sidemenuData, index);
          }),
    );
  }

  Widget _SideMenuList(SideMenuData sidemenuData, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          print(selectedIndex);
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: selectedIndex == index ? sectionColor : Colors.transparent,
        ),
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Icon(
                sidemenuData.sidemenu[index].icon,
                color: selectedIndex == index ? blackcolor : greyColor,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                sidemenuData.sidemenu[index].title,
                style: TextStyle(
                  color: selectedIndex == index ? blackcolor : greyColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
