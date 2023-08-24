import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget bio = Center(
      child: Container(
        padding: const EdgeInsets.all(32),
        child: Column(children:[Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center the widgets horizontally
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/img1.jpg'),

            ),
            SizedBox(width: 70),
            Column(
              children:[
            Text(
              "GAJENDRA",
              style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.cyanAccent,
                fontStyle: FontStyle.italic,
                letterSpacing: 1.5,),
            ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Icon(Icons.email_outlined,
                      color: Colors.teal,),
                    SizedBox(width: 10,),
                    Text("gajendra.20cs028@sode-edu.in",style: TextStyle(color: Colors.greenAccent,)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.phone,color: Colors.teal,),
                    SizedBox(width: 10,),
                    Text("+91 8073921614",style: TextStyle(color: Colors.greenAccent,)),
                  ],
                )
              ],
            ),
          ],
        ), 
          SizedBox(height: 20),
        Container(
          width: 400,
          child: Text(
              "Enthusiastic, quick learner , willing to gain knowledge and work effectively and contribute much to the team. I am a highly committed professional who consistently demonstrates a strong work ethic. And a good sports person.",
              style: TextStyle(color: Colors.white,
              fontFamily: "Dancing"),
          ),
        )
        ])
      ),
    );

    final List<String> skills = [
      "C",
      "Python",
      "Java",
      "C++",
      "Flutter"
    ];

    final List<String> proj = [
      "Meeting Scheduler"
    ];

    Widget skillSection = Center(child:Container(
      width:300,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Skills",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
          ),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            itemCount: skills.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 2,
                child: ListTile(
                  title: Text(
                    skills[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ),);

    Widget project = Center(child:Container(
      width:400,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Projects",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            itemCount: proj.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 2,
                child: ListTile(
                  title: Text(
                    proj[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle:  Padding(
                  padding: EdgeInsets.only(top: 8), // Add top padding for the gap
                  child: Text(
                    "An Android application developed using java using which one can schedule meeting and can send mail to participants and view the scheduled meetings. And even sets a remainder for that meeting.",
                  ),
                ),
              ),
              );
            },
          ),
        ],
      ),
    ),);

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
          backgroundColor: Colors.greenAccent,
        ),
          body: Container(
      decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/img.png'), // Replace with your background image
      fit: BoxFit.cover,
    ),
    ),
    child: SingleChildScrollView(
    child: Column(
    children: [
    bio,
    skillSection,
    project,
    ],
    ),
    ),
    ),
    ),
    );
  }
}
