import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:granregister/controller/authprovider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;
  void logoutuser() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    final authState = Provider.of<AuthState>(context);

    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Verified as :   ' + user.email!,
            style: TextStyle(fontSize: 25),
          ),
          FloatingActionButton(
            onPressed: () {
              logoutuser();
            },
            child: Icon(
              Icons.arrow_forward,
              size: 30,
            ),
          ),
        ],
      )),
    );
  }
}
