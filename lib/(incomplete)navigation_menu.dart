import 'package:flutter/material.dart';
import 'dashboard/dashboard_full_makanan.dart';
import 'dashboard/dashboard_full_minuman.dart';
import 'dashboard/dashboard_full_misc.dart';
import 'dashboard/dashboard_full_produk.dart';
import 'dashboard/dashboard.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => Homepage();
}

class Homepage extends State<Screens> {
  int pages = 0;
  List<Widget> pagelist = const [
    Dashboard(),
    FullMakananPage(), //Text('Home', style: TextStyle(fontSize: 40)),
    FullMinumanPage(), //Text('Home', style: TextStyle(fontSize: 40)),
    FullMiscPage(), //Text('Home', style: TextStyle(fontSize: 40)),
    FullProdukPage(), //Text('Home', style: TextStyle(fontSize: 40)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: pagelist,
        index: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            pages = index;
          });
        },
        currentIndex: pages,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Search',
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Search',
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Notification',
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Main',
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
            backgroundColor: Colors.amber,
          ),
        ],
      ),
    );
  }
}
