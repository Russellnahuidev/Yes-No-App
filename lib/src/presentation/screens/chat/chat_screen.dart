import 'package:flutter/material.dart';
import 'package:yes_no_app/src/presentation/widgets/chat/her_message_buble.dart';
import 'package:yes_no_app/src/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/src/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://files.idyllic.app/files/static/3151110?width=256&optimizer=image',
            ),
          ),
        ),
        title: Text('Probando app'),
        //centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? HerMessageBubble()
                      : MyMessageBubble();
                },
              ),
            ),

            //Caja de texto de mensahes
            MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
