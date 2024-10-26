import 'package:aplicativodedoacoes/pages/chat/chat_page.dart';
import 'package:flutter/material.dart';

class ListaSalasBatePapo extends StatelessWidget {
  const ListaSalasBatePapo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatPage(),
              ),
            );
          },
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://www.al.ce.gov.br//storage/deputado/57/foto/dl9oNUbDldKgAuBHrB1bVtP2g7LbRuaqMYSeH8f8.jpg",
            ),
          ),
          title: Text(
            "Maria Silva",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
          subtitle: Text(
            "1 mensagem não lida.",
            style: TextStyle(
              fontSize: 11,
            ),
          ),
          trailing: Icon(Icons.chevron_right),
        );
      },
    );
  }
}
