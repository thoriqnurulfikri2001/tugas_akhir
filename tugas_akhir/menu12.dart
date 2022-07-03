import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                'Sing In',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                user.email!,
                style: const TextStyle(color: Color.fromARGB(255, 253, 0, 0)),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(45),
                  ),
                  icon: const Icon(
                    Icons.lock_open,
                    size: 25,
                  ),
                  label: const Text('Sing Out'),
                  onPressed: () => FirebaseAuth.instance.signOut(),
                ),
              )
            ])));
  }
}
