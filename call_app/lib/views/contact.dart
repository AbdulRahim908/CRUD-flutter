import 'package:call_app/constants/data_constant.dart';
import 'package:flutter/material.dart';


class Contactss extends StatefulWidget {
  const Contactss({super.key});

  @override
  State<Contactss> createState() => _ContactState();
}

class _ContactState extends State<Contactss> {
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController phone = TextEditingController();
  // int _currentimdex = 0;
  // final tabs = [Recent(),Group()];
  addNewContact(context) {
    setState(() {
      Navigator.pop(context);
      DataConstants.contacts.add({
        "name": name.text,
        "surname": surname.text,
        "number": phone.text,
      });
      name.clear();
      surname.clear();
      phone.clear();
    });
    print(DataConstants.contacts);
  }

  editContact(context, index) {
    Navigator.pop(context);
    setState(() {
      DataConstants.contacts[index] = {
        "name": name.text,
        "surname": surname.text,
        "number": phone.text,
      };
    });
    name.text = "";
    surname.text = "";
    phone.text = "";

    print(DataConstants.contacts);
  }

  deleteContact(context, i) {
    setState(() {
      Navigator.pop(context);
      DataConstants.contacts.removeAt(i);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Contacts",
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
      body: Container(
        child: ListView.builder(
            itemCount: DataConstants.contacts.length,
            itemBuilder: (context, i) {
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/pro.png'),
                  backgroundColor: Colors.white,
                ),
                title: Row(
                  children: [
                    Text(name.text = DataConstants.contacts[i]['name']),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(name.text = DataConstants.contacts[i]['surname']),
                  ],
                ),
                subtitle: Text(
                  phone.text = DataConstants.contacts[i]['number'],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                name.text = DataConstants.contacts[i]['name'];
                                surname.text =
                                    DataConstants.contacts[i]['surname'];
                                phone.text =
                                    DataConstants.contacts[i]['number'];
                                return AlertDialog(
                                  title: const Text('Edit'),
                                  content: Container(
                                    height: 200,
                                    child: Column(
                                      children: [
                                        TextField(
                                          controller: name,
                                          decoration: const InputDecoration(
                                              // border: InputBorder.none,
                                              labelText: 'Name',
                                              hintText: 'john'),
                                        ),
                                        TextField(
                                          controller: surname,
                                          decoration: const InputDecoration(
                                              // border: InputBorder.none,
                                              labelText: 'Surname',
                                              hintText: 'wick'),
                                        ),
                                        TextField(
                                          controller: phone,
                                          decoration: const InputDecoration(
                                              // border: InputBorder.none,
                                              labelText: 'Number',
                                              hintText: '+92 7860178601'),
                                        )
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          editContact(context, i);
                                        },
                                        child: Text('Ok'))
                                  ],
                                );
                              });
                        },
                        icon: const Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {
                          // Text(name.text = DataConstants.contacts[i]['name']);
                          // Text(
                          //     name.text = DataConstants.contacts[i]['surname']);
                          // Text(name.text = DataConstants.contacts[i]['number']);
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Delete everything?'),
                                  content: Container(
                                    height: 100,
                                    child: Container(
                                      child: const Text(
                                          'Are you sure you want to remove everything'),
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          deleteContact(context, i);
                                        },
                                        child: Text('Ok'))
                                  ],
                                );
                              });
                          // deleteContact(i);
                        },
                        icon: Icon(Icons.delete))
                  ],
                ),
              );
            }),
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.black,
        child: IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Add New Contactss'),
                      content: Container(
                        height: 200,
                        child: Column(
                          children: [
                            TextField(
                              controller: name,
                              decoration: const InputDecoration(
                                  // border: InputBorder.none,
                                  labelText: 'Name',
                                  hintText: 'john'),
                            ),
                            TextField(
                              controller: surname,
                              decoration: const InputDecoration(
                                  // border: InputBorder.none,
                                  labelText: 'Surname',
                                  hintText: 'wick'),
                            ),
                            TextField(
                              controller: phone,
                              decoration: const InputDecoration(
                                  // border: InputBorder.none,
                                  labelText: 'Number',
                                  hintText: '+92 7860178601'),
                            )
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          child: const Text("OK"),
                          onPressed: () {
                            addNewContact(context);
                          },
                        )
                      ],
                    );
                  });
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            )),
      ),
      //   bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: _currentimdex,
      //     items: const [
      //   BottomNavigationBarItem(
      //     label: 'Recents',
      //     icon: Icon(
      //       Icons.recent_actors_outlined,
      //       color: Colors.black,
      //     ),
      //     backgroundColor: Colors.white,
      //   ),
      //   BottomNavigationBarItem(
      //       label: 'Contacts',
      //       icon: Icon(
      //         Icons.contacts,
      //         color: Colors.black,
      //       ),
      //       backgroundColor: Colors.white),
      //   BottomNavigationBarItem(
      //       label: 'Groups',
      //       icon: Icon(
      //         Icons.group,
      //         color: Colors.black,
      //       ),
      //       backgroundColor: Colors.white)
      // ],
      //     onTap: (index) {
      //       setState(() {
      //         _currentimdex = index;
      //       });
      //     },
      //   )
    );
  }
}
