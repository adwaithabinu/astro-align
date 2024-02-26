import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar(context, _scaffoldKey),
      backgroundColor: Colors.indigo.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Implement telescope focusing functionality
              },
              child: Text(
                'Telescope Focusing',
                style: TextStyle(color: Colors.white),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
            ),
            SizedBox(height: 20), // Adjust the spacing between buttons
            ElevatedButton(
              onPressed: () {
                // Implement live camera feed viewing functionality
              },
              child: Text(
                'View Live Feed',
                style: TextStyle(color: Colors.white),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo.shade700,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Captured Images',
                style: TextStyle(color: Colors.black87),
              ),
              onTap: () {
                // Handle the captured images option
              },
            ),
            ListTile(
              title: Text(
                'Scheduler',
                style: TextStyle(color: Colors.black87),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/scheduler');
              },
            ),
            ListTile(
              title: Text(
                'Live ISS Location',
                style: TextStyle(color: Colors.black87),
              ),
              onTap: () {
                // Handle the Live ISS Location option
                Navigator.pushNamed(context, '/iss');
              },
            ),
            ListTile(
              title: Text(
                'Learning Corner',
                style: TextStyle(color: Colors.black87),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/learningCorner');
              },
            ),
            Divider(
                color: Colors
                    .black54), // Add a divider between top and bottom options
            ListTile(
              title: Text(
                'Login',
                style: TextStyle(color: Colors.black87),
              ),
              onTap: () {
                Navigator.pushNamed(
                    context, '/login'); // Handle the sign out option
              },
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context, GlobalKey<ScaffoldState> key) {
    return AppBar(
      title: Text(
        'Celestial Navigator',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.indigo.shade900,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          key.currentState?.openDrawer();
        },
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: SvgPicture.asset(
            'assets/icons/Menu.svg',
            height: 20,
            width: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.indigo.shade700,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            child: SvgPicture.asset(
              'assets/icons/dots.svg',
              height: 5,
              width: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.indigo.shade700,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
