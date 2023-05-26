import 'package:flutter/material.dart';
import 'package:flutter_project/screens/Favourite/favourite_page.dart';
import 'package:flutter_project/screens/home_page.dart';
import 'package:flutter_project/navigation/custom_nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_project/navigation/side_menu.dart';
import 'package:flutter_project/screens/profile/profile_page.dart';
import 'package:flutter_project/screens/timer/timer_screen.dart';
import 'package:rive/rive.dart' hide LinearGradient;
import 'package:flutter/physics.dart';
import 'dart:math' as math;
import 'package:flutter/services.dart';
import 'package:flutter_project/theme.dart';
import 'package:flutter_project/screens/notificate/notification_page.dart';

Widget commonTabScene(String tabName) {
  return Container(
      color: RiveAppTheme.background,
      alignment: Alignment.center,
      child: Text(tabName,
          style: const TextStyle(
            fontSize: 28,
            fontFamily: "Poppins",
          )));
}

class Default extends StatefulWidget {
  const Default({Key? key}) : super(key: key);

  @override
  State<Default> createState() => _DefaultState();
}

class _DefaultState extends State<Default> with TickerProviderStateMixin {
  late AnimationController? _animationController;
  late AnimationController? _onBoardingAnimController;
  late Animation<double> _onBoardingAnim;
  late Animation<double> _sidebarAnim;
  late SMIBool _menuBtn;
  Widget _tabBody = Container(color: RiveAppTheme.background);
  final List<Widget> _screens = [
    const MainPage(),
    const FavouritePage(),
    TimeScreen(),
    NotificationPage(),
    ProfileScreen(),
  ];

  final springDesc = const SpringDescription(
    mass: 0.1,
    stiffness: 40,
    damping: 5,
  );
  void _onMenuIconInit(Artboard artboard) {
    final controller =
        StateMachineController.fromArtboard(artboard, "State Machine");
    artboard.addController(controller!);
    _menuBtn = controller.findInput<bool>("isOpen") as SMIBool;
    _menuBtn.value = true;
  }

  void onMenuPress() {
    if (_menuBtn.value) {
      final springAnim = SpringSimulation(springDesc, 0, 1, 0);
      _animationController?.animateWith(springAnim);
    } else {
      _animationController?.reverse();
    }
    _menuBtn.change(!_menuBtn.value);
    SystemChrome.setSystemUIOverlayStyle(_menuBtn.value
        ? SystemUiOverlayStyle.dark
        : SystemUiOverlayStyle.light);
  }

  @override
  void initState() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      upperBound: 1,
      vsync: this,
    );
    _sidebarAnim = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _animationController!,
      curve: Curves.linear,
    ));
    _tabBody = _screens.first;
    super.initState();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Positioned(
              child: Container(
            color: bg1,
          )),
          RepaintBoundary(
            child: AnimatedBuilder(
                animation: _sidebarAnim,
                builder: (context, child) {
                  return Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(
                          ((1 - _sidebarAnim.value) * -30) * math.pi / 180)
                      ..translate((1 - _sidebarAnim.value) * -300),
                    child: child,
                  );
                },
                child: FadeTransition(
                    opacity: _sidebarAnim,
                    child: SideMenu(
                      onTabChange: (tabIndex) {
                        setState(() {
                          _tabBody = _screens[tabIndex];
                        });
                      },
                    ))),
          ),
          RepaintBoundary(
            child: AnimatedBuilder(
                animation: _sidebarAnim,
                builder: (context, child) {
                  return Transform.scale(
                    scale: 1 - _sidebarAnim.value * 0.1,
                    child: Transform.translate(
                      offset: Offset(_sidebarAnim.value * 265, 0),
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY((_sidebarAnim.value * 30) * math.pi / 180),
                        child: child,
                      ),
                    ),
                  );
                },
                child: _tabBody),
          ),
          RepaintBoundary(
            child: AnimatedBuilder(
                animation: _sidebarAnim,
                builder: (context, child) {
                  return SafeArea(
                      child: Row(
                    children: [
                      SizedBox(
                        width: _sidebarAnim.value * 216,
                      ),
                      child!
                    ],
                  ));
                },
                child: GestureDetector(
                  onTap: onMenuPress,
                  child: Container(
                    width: 44,
                    height: 44,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(44 / 2),
                        boxShadow: [
                          BoxShadow(
                              color: RiveAppTheme.shadow.withOpacity(0.2),
                              blurRadius: 5,
                              offset: const Offset(0, 5))
                        ]),
                    child: RiveAnimation.asset(
                      'assets/RiverAssets/menu_button.riv',
                      stateMachines: const ["State Machine"],
                      animations: const ["open", "close"],
                      onInit: _onMenuIconInit,
                    ),
                  ),
                )),
          ),
        ],
      ),
      bottomNavigationBar: RepaintBoundary(
        child: AnimatedBuilder(
          animation: _sidebarAnim,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, _sidebarAnim.value * 300),
              child: child,
            );
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomTabBar(
                onTabChange: (tabIndex) {
                  setState(() {
                    _tabBody = _screens[tabIndex];
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
