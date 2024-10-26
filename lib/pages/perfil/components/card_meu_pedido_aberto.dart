import 'package:aplicativodedoacoes/constants/colors.dart';
import 'package:aplicativodedoacoes/constants/values.dart';
import 'package:flutter/material.dart';

class CardMeuPedidoAberto extends StatelessWidget {
  const CardMeuPedidoAberto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 15),
      width: 300,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 20.0,
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(
              0,
              4,
            ),
            spreadRadius: 4,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              "https://www.sonoticias.com.br/wp-content/uploads/2022/01/Casa-destrui%CC%81da-ince%CC%82ndio-reside%CC%82ncia-Sorriso-1-janeiro-2022-Marcos-Rafael-1024x720.jpg",
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Preciso de uma Geladeira",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Perdi tudo o que eu tinha em um incêndio que aconteceu na minha casa.",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 11,
                    color: kColorFontGray,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  color: kColorFontGray,
                  thickness: 0.2,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 3,
                            horizontal: 3,
                          ),
                        ),
                        child: Text(
                          "JÁ CONSEGUI",
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: kValueDefaultPadding / 2,
                    ),
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: kColorApp,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 3,
                            horizontal: 3,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "ALTERAR",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
