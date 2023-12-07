import 'package:flutter/material.dart';

class BottomScreen extends StatelessWidget {
  const BottomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 340,
                color: Colors.grey.shade400,
                child: const Text("Unfollow"),
              ),
              Container(
                width: 340,
                color: Colors.grey.shade400,
                child: const Text("Mute"),
              ),
              Container(
                width: 340,
                color: Colors.grey.shade400,
                child: const Text("Hide"),
              ),
              Container(
                width: 340,
                color: Colors.grey.shade400,
                child: const Text(
                  "Report",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
