import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../cart/cart_screens.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);

class TimeScreen extends StatefulWidget {
  const TimeScreen({super.key});

  @override
  State<TimeScreen> createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimeScreen> {
  List<String> messages = [];
  TextEditingController messageController = TextEditingController();
  Future<String>? botResponseFuture;

  Future<String> sendMessage(String message) async {
    final response = await http.post(
      Uri.parse(
          'https://bd07-2001-ee0-4f4c-1e50-f4c4-6f01-fa12-c64b.ngrok-free.app/webhooks/rest/webhook'),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: jsonEncode({'message': message}),
    );

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = jsonDecode(response.body);
      String botResponse = jsonResponse[0]['text'];
      return botResponse;
    } else {
      throw Exception('Failed to send message to Rasa.');
    }
  }

  void addMessage(String message) {
    setState(() {
      messages.add('User: $message');
      botResponseFuture = sendMessage(message);
    });

    botResponseFuture!.then((botResponse) {
      setState(() {
        messages.add('Bot: $botResponse');
      });
    }).catchError((error) {
      print('Error: $error');
    });

    messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFDF6F0),
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(top: 10, left: 30),
            child: Text(
              "Chatbot",
              style: TextStyle(
                  fontFamily: "Gordita", fontSize: 18, color: Colors.black),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 18, 10, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF59706F).withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
              ),
            )
          ],
        ),
        // backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(messages[index]),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 100.0),
              child: TextField(
                controller: messageController,
                decoration: InputDecoration(
                  hintText: 'Enter a message',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () => addMessage(messageController.text),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
