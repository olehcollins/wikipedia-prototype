import 'package:flutter/material.dart';
import 'oliver_twist.dart'; // Import HistoryPage from the screens folder
import 'tale_of_two_cities.dart';
import 'great_expectations.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import this package

class WikipediaPage extends StatelessWidget {
  const WikipediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue[300],
        elevation: 4.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Left: Burger menu icon
            IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu)),
            // Center: Logo
            Expanded(child: Center(
              child: SvgPicture.asset('assets/logo.svg'),
              heightFactor: 20.5,
            ),),
            // Right: Profile Icon
            IconButton(onPressed: (){}, icon: Icon(Icons.account_circle_outlined))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row for images
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/image1.jpg',
                    width: 200,
                    height: 200,),
                  SizedBox(width: 20), // Space between images
                  Image.asset(
                    'assets/image2.jpg',
                    width: 150,
                    height: 150,
                  ),
                ]
              ),
              Text(
                'Charlse Dickens',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Charles Dickens was an English novelist, journalist, and social critic, considered one of the greatest writers of the Victorian era. His works enjoyed unprecedented popularity during his lifetime, and by the 20th century, critics and scholars had recognized him as a literary genius. Some of his most famous works include "Oliver Twist," "A Tale of Two Cities," and "Great Expectations." Dickens is also known for his vivid characters and depictions of social issues, making his works timeless and relevant even today.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'Works',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  OliverTwistPage()),
                  );
                },
                leading: Icon(Icons.arrow_forward_ios, color: Colors.blue), // Arrow icon
                title: Text(
                  'Oliver Twist',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  TaleOfTwoCitiesPage()),
                  );
                },
                leading: Icon(Icons.arrow_forward_ios, color: Colors.blue), // Arrow icon
                title: Text(
                  'A Tale of Two Cities',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  GreatExpectationsPage()),
                  );
                },
                leading: Icon(Icons.arrow_forward_ios, color: Colors.blue), // Arrow icon
                title: Text(
                  'Great Expectations',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}