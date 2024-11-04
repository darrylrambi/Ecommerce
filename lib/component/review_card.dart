import 'package:flutter/material.dart';
import 'mini_profile_with_rating.dart';

class ReviewCard extends StatelessWidget {
  final String username;
  final int rating; 

  const ReviewCard({super.key, required this.username, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: Colors.blue, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MiniProfile(username: username, rating: rating),
            
            const SizedBox(height: 8.0),
            
            // Date and comment
            const Text(
              '12-02-2018',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 4.0),
            const Text(
              'Bang barangnya bagus (emot mantap)',
              style: TextStyle(fontSize: 14),
            ),
            
            const SizedBox(height: 16.0),
            
            // Product preview
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/product.jpg', // Replace with your product image path
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 8.0),
                  const Text(
                    'Bunga Rose',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
