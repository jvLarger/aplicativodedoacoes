import 'package:aplicativodedoacoes/constants/colors.dart';
import 'package:aplicativodedoacoes/constants/values.dart';
import 'package:aplicativodedoacoes/pages/pedido/pedido_detalhamento_page.dart';
import 'package:flutter/material.dart';

class CardPedidoDoacao extends StatelessWidget {
  const CardPedidoDoacao({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PedidoDetalhamentoPage(),
          ),
        );
      },
      child: Container(
        width:
            MediaQuery.of(context).size.width / 2 - kValueDefaultPadding - 10,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 15),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://www.sonoticias.com.br/wp-content/uploads/2022/01/Casa-destrui%CC%81da-ince%CC%82ndio-reside%CC%82ncia-Sorriso-1-janeiro-2022-Marcos-Rafael-1024x720.jpg",
                fit: BoxFit.cover,
                width: double.maxFinite,
                height: 100,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
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
              style: TextStyle(
                fontSize: 11,
                color: kColorFontGray,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
