import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/config/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/config/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/config/presentation/widgets/shared/message_field_box.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://i.pinimg.com/736x/fc/e4/c3/fce4c35c0df55205dd82e4f887c4dcee.jpg'),
          ),
        ),
        title:  const Text('Mi Mujer 🤍❤🤍'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
  final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child:ListView.builder(
              controller: chatProvider.chatScrollController,
              itemCount: chatProvider.messageList.length, 
              itemBuilder:(context, index){
                final message = chatProvider.messageList[index];

                return (message.fromWho == FromWho.hers)
                ?  HerMessageBubble(message: message,)
                : MyMessageBubble(message: message,);  
            })),
      /// Caja de texto

    MessageFieldBox(
      onValue: chatProvider.sendMessage,
    ),
        ]),
    );
  }
}