import 'package:booktickets/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget>_widgetOptions =<Widget>[
    HomeScreen(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile"),

  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap:_onItemTapped ,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF58c8e3),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),activeIcon: Icon(Icons.home), label :"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),activeIcon: Icon(Icons.search), label :"Search"),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket),activeIcon: Icon(Icons.airplane_ticket),label :"Ticket"),
          BottomNavigationBarItem(icon: Icon(Icons.person),activeIcon: Icon(Icons.person),label :"Person"),





        ],

      ),

    );
  }
}
