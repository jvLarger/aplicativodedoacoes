import 'package:aplicativodedoacoes/components/custom_text_form_field.dart';
import 'package:aplicativodedoacoes/pages/chat/components/message_bubble.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, dynamic>> _messages = [
    {'text': 'Oi! Tudo bem?', 'isMe': false},
    {'text': 'Oi! Tudo e você?', 'isMe': true},
    {'text': 'Tudo certo! O que está fazendo?', 'isMe': false},
  ];

  void _sendMessage() {
    if (_controller.text.isEmpty) return;

    setState(() {
      _messages.add({'text': _controller.text, 'isMe': true});
    });

    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maria Silva'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[_messages.length - index - 1];
                return MessageBubble(
                  message: message['text'],
                  isMe: message['isMe'],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    controller: _controller,
                    label: 'Digite uma mensagem...',
                    suffixIcon: IconButton(
                      icon: Icon(IconlyLight.send),
                      onPressed: _sendMessage,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
