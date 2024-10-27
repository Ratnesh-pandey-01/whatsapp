import 'package:flutter/material.dart';
import 'package:whatsapp_ui/chatpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 110),
          child: Icon(
            Icons.lock,
            color: Colors.green,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 110),
          child: Text("WhatsApp Locked", style: TextStyle(fontSize: 20)),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 300, left: 110),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatPage(),
                      ));
                },
                icon: Icon(Icons.fingerprint))),
        Padding(
          padding: const EdgeInsets.only(left: 110, top: 20),
          child: Text("Touch the fingerprint sensor"),
        )
      ]),
    );
  }
}
