import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_project/theme.dart';
import 'package:flutter_project/widget/menu_row.dart';
import 'package:flutter_project/model/menu_items.dart';
import 'package:rive/rive.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final List<MenuItemModel> _browseMenuIcons = MenuItemModel.menuItems;
  final List<MenuItemModel> _historyMenuIcons = MenuItemModel.menuItems2;
  final List<MenuItemModel> _themeMenuIcon = MenuItemModel.menuItems3;
  String _selectedMenu = MenuItemModel.menuItems[0].title;
  bool _isDarkMode = false;
  void onMenuPress(MenuItemModel menu) {
    setState(() {
      _selectedMenu = menu.title;
    });
  }

  void onThemeToggle(value) {
    setState(() {
      _isDarkMode = value;
    });
    _themeMenuIcon[0].riveIcon.status!.change(value);
  }

  void onThemeRiveIconInit(artboard) {
    final controller = StateMachineController.fromArtboard(
        artboard, _themeMenuIcon[0].riveIcon.stateMachine);
    artboard.addController(controller!);
    _themeMenuIcon[0].riveIcon.status =
        controller.findInput<bool>("active") as SMIBool;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, bottom: 40),
      constraints: const BoxConstraints(maxWidth: 288),
      decoration: BoxDecoration(
        color: RiveAppTheme.background2,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.2),
                  foregroundColor: Colors.white,
                  child: const Icon(Icons.person_outline),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Person",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: "Inter"),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Software Engineer",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "Inter"),
                    )
                  ],
                )
              ],
            ),
          ),
          MenuButtonSection(
            title: "BROWSE",
            menuIcons: _browseMenuIcons,
            selectedMenu: _selectedMenu,
            onMenuPress: onMenuPress,
          ),
          MenuButtonSection(
            title: "HISTORY",
            menuIcons: _historyMenuIcons,
            selectedMenu: _selectedMenu,
            onMenuPress: onMenuPress,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                SizedBox(
                    width: 32,
                    height: 32,
                    child: Opacity(
                      opacity: 0.6,
                      child: RiveAnimation.asset(
                        "assets/RiverAssets/icons.riv",
                        stateMachines: [
                          _themeMenuIcon[0].riveIcon.stateMachine
                        ],
                        artboard: _themeMenuIcon[0].riveIcon.artboard,
                        onInit: onThemeRiveIconInit,
                      ),
                    )),
                const SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: Text(
                    _themeMenuIcon[0].title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600),
                  ),
                ),
                CupertinoSwitch(value: _isDarkMode, onChanged: onThemeToggle),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MenuButtonSection extends StatelessWidget {
  const MenuButtonSection(
      {Key? key,
      required this.title,
      required this.menuIcons,
      this.selectedMenu = "Home",
      this.onMenuPress})
      : super(key: key);

  final String title;
  final String selectedMenu;
  final List<MenuItemModel> menuIcons;
  final Function(MenuItemModel menu)? onMenuPress;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 24, right: 24, top: 40, bottom: 8),
          child: Text(
            "BROWSER",
            style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 15,
                fontFamily: "Inter",
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          child: Column(children: [
            for (var menu in menuIcons) ...[
              Divider(
                  color: Colors.white.withOpacity(0.1),
                  thickness: 1,
                  height: 1,
                  indent: 16,
                  endIndent: 16),
              MenuRow(
                menu: menu,
                selectedMenu: selectedMenu,
                onMenuPress: () => onMenuPress!(menu),
              ),
            ]
          ]),
        )
      ],
    );
  }
}
