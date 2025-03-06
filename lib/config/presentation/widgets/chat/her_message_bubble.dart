import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration:  BoxDecoration(
            color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola mi verga delgada',
              style: TextStyle(color: colors.primaryContainer),
            ),
          ),
        ),
        const SizedBox(height: 5 ),
        const _ImageBubble(),
        //Todo : imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network('"https://yesno.wtf/assets/yes/4-c53643ecec77153eefb461e053fb4947.gif"');
  }
}