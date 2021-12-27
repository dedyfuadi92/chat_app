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
      appBar: AppBar(
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back,
                size: 24,
              ),
              CircleAvatar(
                child: SvgPicture.asset(
                  widget.chatModel.isGroup
                      ? 'assets/groups.svg'
                      : 'assets/person.svg',
                  color: Colors.white,
                  height: 35,
                  width: 35,
                ),
                radius: 20,
                backgroundColor: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
