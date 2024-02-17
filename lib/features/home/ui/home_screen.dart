import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/logo/light.png"),
        actions: [
          IconButton(
              onPressed: () {}, icon: Image.asset("assets/icons/search.png")),
          IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/notification_on.png"))
        ],
      ),
    );
  }
}
