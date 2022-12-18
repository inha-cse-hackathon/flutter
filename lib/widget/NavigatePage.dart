
import 'package:cse_hackathon_2022/widget/Message.dart';
import 'package:cse_hackathon_2022/widget/Ranking.dart';
import 'package:cse_hackathon_2022/widget/profile.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class NavigatePage extends StatefulWidget {
  const NavigatePage({Key? key}) : super(key: key);

  @override
  State<NavigatePage> createState() => _NavigatePageState();
}

class _NavigatePageState extends State<NavigatePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNav(),
      body: Center(
        child: _widgetOptions().elementAt(_selectedIndex),
      ),
    );
  }

  BottomNavigationBar bottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 12,
      unselectedLabelStyle: TextStyle(fontFamily: "Roboto"),
      selectedLabelStyle: TextStyle(fontFamily: "Roboto"),

      currentIndex: _selectedIndex,
      //현재 선택된 Index
      onTap: (int index) {
        // switch(index){
        //   case 1:
        //     Provider.of<UnivSearchModel>(context,listen: false).InitUnivDatas();
        // }
        setState(() {
          _selectedIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          label: "Home",

          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Ranking",
          icon: Icon(Icons.workspace_premium),
        ),
        BottomNavigationBarItem(
          label: "Message",
          icon: Icon(Icons.notifications),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(Icons.person),
        ),
      ],
    );
  }

  List _widgetOptions() {
    return [
      const Home(),
      const RankingPage(),

      const Message(),
      const Profile(),

      // const RandomFoodSelect(),
      // const Community(),
      // const ProfilePage(),
    ];
  }
}
