// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class DrawWidget extends StatelessWidget {
  const DrawWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.zero,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Profile',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog.fullscreen(
                                  child: Container(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                icon: const Icon(Icons.close)),
                                            const Spacer(),
                                            const Text(
                                              'Notifications received',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 40,
                                        ),
                                        SizedBox(
                                          height: 550,
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.vertical,
                                            child: Column(
                                              children:
                                                  _buildNotificationsList(),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.indigo,
                                                  foregroundColor: Colors.white,
                                                  elevation: 10,
                                                  fixedSize:
                                                      const Size(200, 40)),
                                              onPressed: () {},
                                              child: const Text('Share'),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          icon: const Icon(
                            Icons.notifications_active,
                            color: Colors.white,
                            size: 25,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1000),
                          ),
                          child: const ClipOval(
                            child: Image(
                              image: AssetImage('assets/FjU2lkcWYAgNG6d.jpg'),
                              fit: BoxFit.cover,
                              width: 100,
                            ),
                          ),
                        ),
                        const Text(
                          'Willinton Posso',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.insert_comment_sharp),
              title: Text('Messages'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            const SizedBox(
              height: 3,
            ),
            const ListTile(
              leading: Icon(Icons.language),
              title: Text('Language'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            const SizedBox(
              height: 3,
            ),
            const ListTile(
              leading: Icon(Icons.image),
              title: Text('Images'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            const SizedBox(
              height: 3,
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _buildNotificationsList() {
    return List.generate(20, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 236, 233, 233),
              borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: const Icon(
                Icons.notifications_active,
                color: Colors.white,
              ),
            ),
            title: const Text('Notification 1'),
            subtitle: const Text('Content notification'),
            trailing: const Icon(Icons.reply_all_rounded),
          ),
        ),
      );
    });
  }
}
