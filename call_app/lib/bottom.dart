import 'package:call_app/views/contact.dart';
import 'package:call_app/views/group_views.dart';
import 'package:call_app/views/recent_views.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _currentimdex = 0;
  final tabs = [const Recent(), const Contactss(), const Group()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentimdex,
          items: const [
            BottomNavigationBarItem(
              label: 'Recents',
              icon: Icon(
                Icons.recent_actors_outlined,
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
                label: 'Contacts',
                icon: Icon(
                  Icons.contacts_outlined,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                label: 'Groups',
                icon: Icon(
                  Icons.group_outlined,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white)
          ],
          onTap: (index) {
            setState(() {
              _currentimdex = index;
            });
          },
        ),
        body: tabs.elementAt(_currentimdex));
  }
}
// int _currentimdex = 0;
// bottomnavigate() {
//   return Scaffold(
//     bottomNavigationBar: BottomNavigationBar(
//       currentIndex: _currentimdex,
//       items: const [
//         BottomNavigationBarItem(
//             icon: Icon(
//               Icons.recent_actors_outlined,
//               color: Colors.black,
//             ),
//             backgroundColor: Colors.white),
//         BottomNavigationBarItem(
//             icon: Icon(
//               Icons.contacts,
//               color: Colors.black,
//             ),
//             backgroundColor: Colors.white),
//         BottomNavigationBarItem(
//             icon: Icon(
//               Icons.group,
//               color: Colors.black,
//             ),
//             backgroundColor: Colors.white)
//       ],
//        onTap:(index) {
//         set(){}
        
//       },
//     ),
//   );
// }
