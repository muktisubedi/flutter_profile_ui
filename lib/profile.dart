import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: Text("My Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.amber),
                      color: Colors.amber[600],
                      image: DecorationImage(
                        image: NetworkImage("https://picsum.photos/1200"),
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2.5 - 90,
                  right: MediaQuery.of(context).size.width / 2 - 100,
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(
                    //     0, MediaQuery.of(context).size.height / 4.2, 0, 0),
                    alignment: Alignment.bottomCenter,
                    child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 80,
                        child: CircleAvatar(
                            radius: 75,
                            backgroundImage:
                                NetworkImage('https://picsum.photos/300'))),
                  ),
                )
              ],
            ),
            SizedBox(height: 70),
            Container(
              padding: EdgeInsets.all(40),
              child: Text("MUKTI SUBEDI",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(15),
              child: Text("ABOUT ME",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  )),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(15, 5, 40, 0),
              child: Text(
                  "You're not connectedAnd the web just isn't the same without you. Let's get you back onlineTryChecking your network cables, modem, and routers Reconnecting to your wireless network Running Windows Network Diagnostics",
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
