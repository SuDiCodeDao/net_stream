import 'package:flutter/material.dart';

import '../../../../core/widgets/button_widget.dart';

class LoginBox extends StatelessWidget {
  const LoginBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              'Xin chào!!!',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ButtonWidget(
              onPressed: () {},
              title: 'Đăng nhập bằng Google',
              imageUrl: 'assets/icons/google.png',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ButtonWidget(
              onPressed: () {},
              title: 'Đăng nhập bằng Facebook',
              imageUrl: 'assets/icons/facebook.png',
            ),
          ),
        ],
      ),
    );
  }
}
