import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class TaleOfTwoCitiesPage extends StatelessWidget {
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
                'A Tale of Two Cities',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),

            // Book Description
            Text(
              'Published in 1859, "A Tale of Two Cities" is a historical novel by Charles Dickens, set in London and Paris before and during the French Revolution. '
                  'The story follows the plight of the French peasantry demoralized by the aristocracy in the years leading up to the revolution, and the corresponding brutality demonstrated by the revolutionaries.',
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
                      ' Dickens is renowned for his keen observations of society and his unforgettable characters.',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),

            // Book Summary Section
            Text(
              'Summary',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'The novel opens with the famous line, "It was the best of times, it was the worst of times..." It tells the story of Charles Darnay, a French aristocrat, '
                  'and Sydney Carton, an English lawyer, who are both in love with Lucie Manette. As the French Revolution erupts, the novel explores themes of sacrifice, '
                  'resurrection, and the contrast between chaos and order.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),

            // Quote Section
            Text(
              'Famous Quote',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '"It is a far, far better thing that I do, than I have ever done; it is a far, far better rest that I go to, than I have ever known."',
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