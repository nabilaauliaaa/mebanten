// lib/test_firebase.dart
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TestFirebasePage extends StatelessWidget {
  const TestFirebasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Firebase'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              // Test Firestore connection
              await FirebaseFirestore.instance
                  .collection('test')
                  .add({
                'message': 'Hello Firebase!',
                'timestamp': DateTime.now(),
              });
              
              if (!context.mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Firebase connected!')),
              );
            } catch (e) {
              if (!context.mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: $e')),
              );
            }
          },
          child: const Text('Test Firebase Connection'),
        ),
      ),
    );
  }
}