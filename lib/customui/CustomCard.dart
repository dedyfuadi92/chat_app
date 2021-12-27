import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        child: SvgPicture.asset(
          'assets/groups.svg',
          color: Colors.white,
          height: 35,
          width: 35,
        ),
        backgroundColor: Colors.orange,
      ),
      title: Text(
        'Andromeda',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Icon(Icons.done_all),
          SizedBox(
            width: 5,
          ),
          Text(
            'Yuk main bola bro !',
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ],
      ),
      trailing: Text('16:53'),
    );
  }
}
