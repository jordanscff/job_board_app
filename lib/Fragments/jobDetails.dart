import 'package:flutter/cupertino.dart';
import 'package:x1jobs/main.dart';
import 'package:flutter/material.dart';
import 'package:x1jobs/navigationDrawer.dart';
import 'description.dart';
import 'company.dart';
import 'location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class JobDetails extends StatefulWidget {
  @override
  _JobDetailsState createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  String appliedText = 'Apply';
  Color activeColor = Colors.lightBlue[100];
  Color inactiveColor = Colors.grey[200];
  Color activeTextColor = Colors.blue[900];
  Color inactiveTextColor = Colors.grey[500];
  Color descriptionColor = Colors.lightBlue[100];
  Color companyColor = Colors.grey[200];
  Color locationColor = Colors.grey[200];
  Color descriptionTextColor = Colors.blue[900];
  Color companyTextColor = Colors.grey[500];
  Color locationTextColor = Colors.grey[500];
  Widget descriptionContent = description();
  Widget companyContent = company();
  Widget locationContent = location();
  Widget jobContent = Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Researching, designing, implementing and managing software programs. Testing and evaluating new programs. Identifying areas for modification in existing programs and subsequently developing these modifications.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Minimum Qualifcations:',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '•',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    "Bachelor's degree in Development or equivalent pracitcal experience",
                    style: TextStyle(
                        color: Colors.black, fontSize: 15, letterSpacing: 0.2),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  '•',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    "Experience developing across multiple platforms",
                    style: TextStyle(
                        color: Colors.black, fontSize: 15, letterSpacing: 0.2),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Interview Process:',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '•',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    "Complete a phone interview and technical test",
                    style: TextStyle(
                        color: Colors.black, fontSize: 15, letterSpacing: 0.2),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  '•',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    "Come along to a face-to-face interview",
                    style: TextStyle(
                        color: Colors.black, fontSize: 15, letterSpacing: 0.2),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    ],
  );

  void updateApply() {
    if (appliedText == 'Apply') {
      setState(() {
        appliedText = 'Applied';
      });
    } else {
      setState(() {
        appliedText = 'Apply';
      });
    }
  }

  void updateDetailButton() {
    setState(() {
      descriptionColor = activeColor;
      companyColor = inactiveColor;
      locationColor = inactiveColor;

      descriptionTextColor = activeTextColor;
      companyTextColor = inactiveTextColor;
      locationTextColor = inactiveTextColor;

      jobContent = descriptionContent;
    });
  }

  void updateCompanyButton() {
    setState(() {
      descriptionColor = inactiveColor;
      companyColor = activeColor;
      locationColor = inactiveColor;

      descriptionTextColor = inactiveTextColor;
      companyTextColor = activeTextColor;
      locationTextColor = inactiveTextColor;

      jobContent = companyContent;
    });
  }

  void updateLocationButton() {
    setState(() {
      descriptionColor = inactiveColor;
      companyColor = inactiveColor;
      locationColor = activeColor;

      descriptionTextColor = inactiveTextColor;
      companyTextColor = inactiveTextColor;
      locationTextColor = activeTextColor;

      jobContent = locationContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(25.0),
              topRight: const Radius.circular(25.0)),
          color: Colors.white),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 10,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(),
                            ),
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.share,
                                color: Colors.grey[800],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 6,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey[200],
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: Image.network(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/471px-Google_%22G%22_Logo.svg.png',
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Software Developer',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              Text(
                                'London, UK',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      updateDetailButton();
                                    },
                                    child: Container(
                                      width: 125,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: descriptionColor),
                                      child: Center(
                                        child: Container(
                                          child: Text(
                                            'Description',
                                            style: TextStyle(
                                                color: descriptionTextColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      updateCompanyButton();
                                    },
                                    child: Container(
                                      width: 100,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: companyColor),
                                      child: Center(
                                        child: Container(
                                          child: Text(
                                            'Company',
                                            style: TextStyle(
                                                color: companyTextColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      updateLocationButton();
                                    },
                                    child: Container(
                                      width: 100,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: locationColor),
                                      child: Center(
                                        child: Container(
                                          child: Text(
                                            'Location',
                                            style: TextStyle(
                                                color: locationTextColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              jobContent
                            ],
                          ),
                        )),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Center(
                                  child: Container(
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100)),
                                        border: Border.all(
                                            width: 2,
                                            color: Colors.green,
                                            style: BorderStyle.solid)),
                                    child: Center(
                                        child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.green,
                                    )),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 9,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      updateApply();
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          border: Border.all(
                                              width: 3,
                                              color: Colors.green,
                                              style: BorderStyle.solid)),
                                      child: Center(
                                          child: Text(
                                        '$appliedText',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
