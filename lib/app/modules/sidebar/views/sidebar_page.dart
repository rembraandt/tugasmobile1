import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header section
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 32.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'To-Do List',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);  // Close the sidebar
                  },
                ),
              ],
            ),
          ),

          SizedBox(height: 16.0),

          // Star Task Section
          ListTile(
            leading: Icon(Icons.star_border, color: Colors.blue),
            title: Text('Star Task', style: TextStyle(fontSize: 16)),
            onTap: () {
              // Navigate or trigger any action for Star Task
            },
          ),

          Divider(),

          // Category section
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'Category',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.folder, color: Colors.black),
            title: Text('All'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.work_outline, color: Colors.blue),
            title: Text('Work'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person_outline, color: Colors.green),
            title: Text('Personal'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.star_outline, color: Colors.yellow),
            title: Text('Wishlist'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart_outlined, color: Colors.cyan),
            title: Text('Shopping List'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.cake_outlined, color: Colors.red),
            title: Text('Birthday'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.public_outlined, color: Colors.green),
            title: Text('Travel'),
            onTap: () {},
          ),

          Divider(),

          // Theme section
          ListTile(
            leading: Icon(Icons.format_paint, color: Colors.purple),
            title: Text('Theme'),
            onTap: () {
              // Handle theme change
            },
          ),

          // Share section
          ListTile(
            leading: Icon(Icons.share, color: Colors.orange),
            title: Text('Share'),
            onTap: () {
              // Handle sharing
            },
          ),
        ],
      ),
    );
  }
}

