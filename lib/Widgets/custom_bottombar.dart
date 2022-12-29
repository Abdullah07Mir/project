import 'package:flutter/material.dart';
import 'package:list_in_buy_flutter/Screens/favorite_screen.dart';
import 'package:list_in_buy_flutter/Screens/home_screen.dart';
import 'package:list_in_buy_flutter/Screens/message_screen.dart';
import 'package:list_in_buy_flutter/Screens/profile_screen.dart';
import 'package:list_in_buy_flutter/Screens/sell_screen.dart';

class CustomBottombar extends StatefulWidget {
  const CustomBottombar({super.key});

  @override
  State<CustomBottombar> createState() => _CustomBottombarState();
}

class _CustomBottombarState extends State<CustomBottombar> {
   int _currentIndex = 0;
  List _screens = [
    HomeScreen(),
    Favorite(),
    Sell(),
    Message(),
    Profile(),
  ];
   void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.grey,
        items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: Colors.blueGrey,),
            label: 'Home',
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.star_border_purple500_outlined, color: Colors.blueGrey,),
            label: 'Favorite',
            backgroundColor:  Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.sell_outlined,color: Colors.blueGrey,),
            label: 'Sell',
            backgroundColor:  Colors.white),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline_outlined,color: Colors.blueGrey,),
          label: 'Message',
          backgroundColor: Colors.white,
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.person_pin,color: Colors.blueGrey,),
          label: 'Profile',
          backgroundColor: Colors.white,
        ),
      ]),
    );
  }
}