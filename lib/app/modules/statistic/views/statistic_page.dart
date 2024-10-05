import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatisticsPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.3), // Background dim
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Statistics',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back(); // Close the popup
                    },
                    child: Icon(Icons.close),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Your current statistic summary and activity',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 20),

              // First Card - Prioritized Task
              _buildTaskCard(
                context,
                'Prioritized task',
                '83%',
                'Avg Complete',
                Colors.greenAccent,
                Icons.hourglass_empty,
              ),

              SizedBox(height: 20),

              // Second Card - Additional Task
              _buildTaskCard(
                context,
                'Additional task',
                '56%',
                'Avg Complete',
                Colors.pinkAccent,
                Icons.edit,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget to build the card
  Widget _buildTaskCard(BuildContext context, String title, String percentage,
      String subtitle, Color color, IconData icon) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [color.withOpacity(0.7), color.withOpacity(0.4)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Icon(icon, size: 20),
            ],
          ),
          SizedBox(height: 10),
          Text(
            percentage,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          SizedBox(height: 5),
          Text(
            subtitle,
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}