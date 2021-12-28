import 'package:chat_app/model/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({Key key, this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  _IndividualPageState createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        foregroundColor: Colors.white,
        leadingWidth: 80,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 7,
              ),
              Icon(
                Icons.arrow_back,
                size: 24,
              ),
              SizedBox(
                width: 2,
              ),
              CircleAvatar(
                child: SvgPicture.asset(
                  widget.chatModel.isGroup
                      ? 'assets/groups.svg'
                      : 'assets/person.svg',
                  // 'assets/person.svg',
                  color: Colors.white,
                  height: 30,
                  width: 30,
                ),
                radius: 20,
                backgroundColor: Colors.grey,
              ),
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Last seen today at ' + widget.chatModel.time,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.videocam,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
            ),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('View contact'),
                  value: 'View contact',
                ),
                PopupMenuItem(
                  child: Text('Media, links and docs'),
                  value: 'Media, links and docs',
                ),
                PopupMenuItem(
                  child: Text('Whatsapp Web'),
                  value: 'Whatsapp Web',
                ),
                PopupMenuItem(
                  child: Text('Search'),
                  value: 'Search',
                ),
                PopupMenuItem(
                  child: Text('Mute notification'),
                  value: 'Mute notification',
                ),
                PopupMenuItem(
                  child: Text('Wallpaper'),
                  value: 'Wallpaper',
                ),
              ];
            },
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 55,
                    child: Card(
                      margin: EdgeInsets.only(
                        left: 3,
                        right: 3,
                        bottom: 8,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        minLines: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type a message...',
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.emoji_emotions,
                            ),
                          ),
                          contentPadding: EdgeInsets.fromLTRB(5, 7, 5, 5),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.attach_file,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.camera_alt,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      radius: 25,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
