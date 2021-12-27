import 'package:chat_app/pages/ChatPage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Aplikasi Chat'),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('New Group'),
                  value: 'New Group',
                ),
                PopupMenuItem(
                  child: Text('New Broadcast'),
                  value: 'New Broadcast',
                ),
                PopupMenuItem(
                  child: Text('Whatsapp Web'),
                  value: 'Whatsapp Web',
                ),
                PopupMenuItem(
                  child: Text('Starred Messages'),
                  value: 'Starred Messages',
                ),
                PopupMenuItem(
                  child: Text('Settings'),
                  value: 'Settings',
                ),
              ];
            },
          )
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text('Camera'),
          ChatPage(),
          Text('Status'),
          Text('Calls'),
        ],
      ),
    );
  }
}
