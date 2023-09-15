import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  final User? user;
  const HomeScreen({super.key, required this.user});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey();

  Widget _buildBody() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: CustomDrawer(user: widget.user!),
      key: globalKey,
      appBar: PreferredSize(
        preferredSize: Size(size.width, kToolbarHeight),
        child: CustomMainAppbar(
          user: widget.user,
          globalKey: globalKey,
        ),
      ),
      body: _buildBody(),
    );
  }
}
