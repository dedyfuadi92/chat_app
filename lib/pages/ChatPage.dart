import 'package:chat_app/model/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/customui/CustomCard.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: 'Marjuki',
      icon: 'person.svg',
      isGroup: false,
      time: '11:20',
      currentMessage: 'Hello tes chat',
    ),
    ChatModel(
      name: 'Sumarno',
      icon: 'person.svg',
      isGroup: false,
      time: '12:00',
      currentMessage: 'Yok jumatan melu motorku',
    ),
    ChatModel(
      name: 'Sutejo',
      icon: 'person.svg',
      isGroup: false,
      time: '08:00',
      currentMessage: 'Ongkir naskun 10rb ya pak',
    ),
    ChatModel(
      name: 'Romlah',
      icon: 'person.svg',
      isGroup: false,
      time: '02:00',
      currentMessage: 'Sholat tahajud cuy',
    ),
    ChatModel(
      name: 'Bubuhan Coding',
      icon: 'groups.svg',
      isGroup: true,
      time: '11:00',
      currentMessage: 'Yuk nobar AFF Cup',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
