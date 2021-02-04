import 'package:flutter/material.dart';
import 'package:x1jobs/Fragments/accountSetting.dart';
import 'package:x1jobs/Fragments/homePage.dart';

class navigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xFFFFC0CB),
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.asset('images/quote.png'),
                          ),
                          Expanded(
                            flex: 7,
                            child: Container(),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Expanded(flex: 2, child: Container()),
                          Expanded(
                              flex: 6,
                              child: Center(
                                child: Text(
                                  'Choose a job you love, and you will never have to work a day in your life.',
                                  style: TextStyle(fontSize: 12),
                                ),
                              )),
                          Expanded(flex: 2, child: Container()),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 3,
                            child: Image.network(
                                "https://i.pinimg.com/originals/38/8f/0f/388f0f6169e4527822ae6f34bfee97a3.png"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            padding: EdgeInsets.all(0),
          ),
          ListTile(
            title: Text("Home"),
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => homePage(),
                  transitionDuration: Duration(seconds: 0),
                ),
              );
            },
          ),
          ListTile(
            title: Text("Application History"),
          ),
          ListTile(
            title: Text("Saved Jobs"),
          ),
          ListTile(
            title: Text("Settings"),
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => accountSetting(),
                  transitionDuration: Duration(seconds: 0),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
