import 'package:aplicativodedoacoes/constants/colors.dart';
import 'package:aplicativodedoacoes/constants/values.dart';
import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kValueDefaultPadding,
        right: kValueDefaultPadding,
        top: 2 * kValueDefaultPadding,
      ),
      child: const Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://mundoemrevista.com.br/wp-content/uploads/2024/05/pessoa-de-classe-elegante.webp",
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bem-vindo!",
                style: TextStyle(
                  fontSize: 11,
                  color: kColorFontGray,
                ),
              ),
              Text(
                "Manuela Alves",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
