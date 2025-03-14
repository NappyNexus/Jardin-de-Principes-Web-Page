import 'package:flutter/material.dart';
import 'package:jdp_web/Widgets/nav_bar_button.dart';
import 'package:jdp_web/Widgets/nav_bar_titles.dart';
import 'package:jdp_web/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leadingWidth: 350,
      backgroundColor: bgbeige,
      leading: SizedBox.expand(
        child: Center(
          child: Text(
            'JARDIN DE PRINCIPES',
            style: TextStyle(
              fontFamily: 'Freshman',
              color: jdpblue,
              decoration: TextDecoration.underline,
              decorationColor: jdporange,
              decorationThickness: 2,
              fontSize: 25,
            ),
          ),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          NavBarTitles(title: 'Find Sub', onTap: () {}),
          NavBarTitles(title: 'For School', onTap: () {}),
          NavBarTitles(title: 'Resource', onTap: () {}),
          NavBarTitles(title: 'About US', onTap: () {}),
        ],
      ),
      actions: [AppointmentButton(onPressed: () {}, text: 'Make Appointment')],
    );
  }

  // ✅ Ensure CustomAppBar satisfies PreferredSizeWidget
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
