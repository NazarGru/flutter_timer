import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Назвр Огаришев'),
            accountEmail: Text('nazarogarishev@gmail,com'),
             currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://w7.pngwing.com/pngs/824/509/png-transparent-user-computer-software-video-game-developer-future-game-studio-technical-support-flat-faces-child-face-boy.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
             ),
             decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  'https://bsmedia.business-standard.com/_media/bs/img/article/2020-12/11/full/1607655600-5776.jpg'
                ),
                fit: BoxFit.cover,
              ),
             ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Головна'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/'
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.punch_clock),
              title: Text('Таймер'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/timer'
                );
              },
            ),
            Divider(),
        ],
      ),
    );
  }
}