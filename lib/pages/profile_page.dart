import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import '../main.dart';
import 'auth/common_widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      providerConfigs: providerConfigs,
      actions: [
        SignedOutAction((context) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const SplashScreen()));
        }),
      ],
    );
  }
}
