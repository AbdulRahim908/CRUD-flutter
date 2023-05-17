import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/data_constant.dart';

class Recent extends StatefulWidget {
  const Recent({super.key});

  @override
  State<Recent> createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Recent",
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.black,
            )
          ],
        ),
        body: ListView.builder(
            itemCount: DataConstants.contacts.length,
            itemBuilder: (context, i) {
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/pro.png'),
                  backgroundColor: Colors.white,
                ),
                title: Row(
                  children: [
                    Text( DataConstants.contacts[i]['name']),
                    const SizedBox(
                      width: 5,
                    ),
                    Text( DataConstants.contacts[i]['surname']),
                  ],
                ),
                subtitle: Text(
                   DataConstants.contacts[i]['number'],
                ),
                trailing:Icon(Icons.arrow_outward,color: Colors.red,size: 20,)
              );
            }),);
  }
}