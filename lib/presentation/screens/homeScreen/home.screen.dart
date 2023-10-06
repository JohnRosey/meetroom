import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/notifiers/auth.notifier.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dt = Provider.of<AuthNotifer>(context, listen: false);
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Daba'),
          onPressed: () {

          },
        ),
      ),
    );
  }
}