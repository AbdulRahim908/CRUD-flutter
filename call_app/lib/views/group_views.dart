import 'package:flutter/material.dart';

class Group extends StatefulWidget {
  const Group({super.key});

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Groups",
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
      body: GridView.builder(
          itemCount: 3,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                child: Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "  Family",
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '  22 members',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,borderRadius: BorderRadius.circular(20)
                ),
              ),
            );
          }),
    );
  }
}
