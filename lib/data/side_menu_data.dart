import 'package:fitness_tracker/models/side_menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final sidemenu = <Sidemenu>[
    Sidemenu(
      icon: Icons.home,
      title: "Dashboard",
    ),
    Sidemenu(
      icon: Icons.person,
      title: "Profile",
    ),
    Sidemenu(
      icon: Icons.run_circle,
      title: "Exercises",
    ),
    Sidemenu(
      icon: Icons.settings,
      title: "Setting",
    ),
    Sidemenu(
      icon: Icons.history,
      title: "History",
    ),
    Sidemenu(
      icon: Icons.logout,
      title: "Signout",
    )
  ];
}
