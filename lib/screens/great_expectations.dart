import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class GreatExpectationsPage extends StatelessWidget {
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
                'Great Expectations',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),

            // Book Description
            Text(
              'Published in 1861, "Great Expectations" is one of Charles Dickens\' most famous and widely read novels. '
                  'The story follows the life and growth of Pip, an orphan boy, as he navigates a complex world of love, ambition, and betrayal. '
                  'It is a profound exploration of class struggle, personal growth, and the impact of expectations.',
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
                  text: 'This work was authored by ',
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
                      ' Known for his brilliant storytelling, Dickens explores deep themes with vivid characters in this novel.',
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
              'The novel narrates the story of Pip, who rises from humble beginnings as an orphan to achieve wealth and status, but only after enduring many hardships. '
                  'Central to the story are the mysterious benefactor, Miss Havisham and Estella\'s influence on Pip, and Pip\'s realization of what truly matters in life. '
                  'The novel explores themes of wealth, ambition, and social class, leaving readers with a timeless moral.',
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
              '"I loved her against reason, against promise, against peace, against hope, against happiness, against all discouragement that could be."',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}