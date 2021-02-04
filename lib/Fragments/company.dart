import 'package:flutter/material.dart';

class company extends StatefulWidget {
  @override
  _companyState createState() => _companyState();
}

class _companyState extends State<company> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Text(
        "Google, LLC is an American multinational technology company that specializes in Internet-related services and products, which include online advertising technologies, a search engine, cloud computing, software, and hardware.\n\n"
        "Our mission is to organise the world’s information and make it universally accessible and useful.\n\n"
        "Google is committed to continuing to make diversity, equity, and inclusion part of everything we do—from how we build our products to how we build our workforce.\n\n"
        "Google is growing to fulfill that vision. In the past few years, we’ve doubled in size—today, we have more than 100,000 employees in 170 cities spanning nearly 60 countries. Operating at this scale brings an elevated level of responsibility to everything we do—including a workforce that's more representative of our users, and a workplace that creates a sense of belonging for everyone.\n\n"
        "Thank you for joining us on this journey.\n\n",
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
      ),
    );
  }
}
