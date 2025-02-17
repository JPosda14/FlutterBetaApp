import 'package:flutter/material.dart';

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
        title: const Text('Mi Reina 🤍❤🤍'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child:ListView.builder(
              itemCount: 100, 
              itemBuilder:(context, index){
              return Text('Indice: $index');
            })
          ),
      Text ('Mundo')
        ]),
    );
  }
}