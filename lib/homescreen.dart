import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const homescreen());
}

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            bottom: const TabBar(tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ]),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 1,
                          child: Text('New Grounp'),
                        ),
                        const PopupMenuItem(value: 2, child: Text('Settings')),
                        const PopupMenuItem(value: 3, child: Text('Logout'))
                      ]),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          body: TabBarView(children: [
            const Text('Cemara'),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/user_2.png'),
                  ),
                  title: Text('BABAR NAZEER'),
                  subtitle: Text('Assalamualikum'),
                  trailing: Text('4:30 pm'),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  children: const [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/user_2.png'),
                      ),
                      title: Text('BABAR NAZEER'),
                      subtitle: Text('35m ago'),
                    ),
                  ],
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('images/user_2.png'),
                  ),
                  title: const Text('BABAR NAZEER'),
                  subtitle: Text(index / 3 == 2
                      ? 'you missed call'
                      : 'your call time is 12:22'),
                  trailing:
                      Icon(index / 3 == 2 ? Icons.phone : Icons.video_call),
                );
              },
            ),
          ]),
        ));
  }
}
