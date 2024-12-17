import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class OliverTwistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backArrow: true,),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Book Title - Centered
            Center(
              child: Text(
                'Oliver Twist',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Image.asset(
                  'assets/image3.jpg',
                  height: 150
              ),
            ),
            SizedBox(height: 16),

            // Book Description
            Text(
              'First published in 1837, "Oliver Twist" is one of Charles Dickens\' most beloved and enduring novels. '
                  'It tells the story of an orphaned boy who faces hardship and adversity in 19th-century London. Through the character of Oliver, '
                  'Dickens exposes the brutal conditions of workhouses, child labor, and crime in Victorian society.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),

            // Inline link to Charles Dickens page
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // Navigate back to Charles Dickens page
              },
              child: Text.rich(
                TextSpan(
                  text: 'This classic novel was authored by ',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Charles Dickens.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text:
                      ' Dickens sheds light on social injustices and creates unforgettable characters in this timeless story.',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),

            // Summary Section
            Text(
              'Summary',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'The novel follows Oliver, an orphan who escapes the harsh conditions of a workhouse only to fall in with a gang of juvenile criminals led by the sinister Fagin. '
                  'Through Oliver’s trials, the novel highlights issues of poverty, child labor, and crime, while also offering glimpses of kindness and hope. '
                  'Ultimately, Oliver’s journey leads to revelations about his true identity and a brighter future.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),

            // Famous Quote Section
            Text(
              'Famous Quote',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '"Please, sir, I want some more."',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24)
          ],
        ),
      ),
    );
  }
}