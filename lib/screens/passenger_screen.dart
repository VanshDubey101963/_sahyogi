import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:sahyogi/screens/passenger_subscreens.dart/connect_with_tc.dart';
import 'package:sahyogi/screens/passenger_subscreens.dart/info_screen.dart';
import 'package:sahyogi/screens/passenger_subscreens.dart/passenger_feedback.dart';
import 'package:sahyogi/screens/passenger_subscreens.dart/train_livestatus.dart';

class PassengerScreen extends StatefulWidget {
  const PassengerScreen({super.key});
  static const String id = '/passengerScreen';
  @override
  State<PassengerScreen> createState() => _PassengerScreenState();
}

class _PassengerScreenState extends State<PassengerScreen> {
  PersistentTabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _screens(),
        items: _items(),
        decoration: NavBarDecoration(borderRadius: BorderRadius.circular(20.0)),
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        navBarStyle: NavBarStyle.neumorphic,
      ),
    );
  }
}

List<Widget> _screens() {
  return [
    const InfoTabPage(),
    const TrainLiveStatusTabPage(),
    const ConnectWithTcTabPage(),
    const PassengerFeedbackTabPage(),
  ];
}

List<PersistentBottomNavBarItem> _items() {
  return [
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: 'Home',
        activeColorPrimary: const Color(0xFF1B663A),
        inactiveColorPrimary: Colors.black),
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.train),
        title: 'TrainStat',
        activeColorPrimary: const Color(0xFF1B663A),
        inactiveColorPrimary: Colors.black),
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.connect_without_contact),
        title: 'Connect',
        activeColorPrimary: const Color(0xFF1B663A),
        inactiveColorPrimary: Colors.black),
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.feedback),
        title: 'Feedback',
        activeColorPrimary: const Color(0xFF1B663A),
        inactiveColorPrimary: Colors.black)
  ];
}
