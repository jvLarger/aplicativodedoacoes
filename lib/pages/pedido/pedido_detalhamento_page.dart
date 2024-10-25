import 'package:aplicativodedoacoes/constants/colors.dart';
import 'package:aplicativodedoacoes/constants/values.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class PedidoDetalhamentoPage extends StatefulWidget {
  const PedidoDetalhamentoPage({super.key});

  @override
  State<PedidoDetalhamentoPage> createState() => _PedidoDetalhamentoPageState();
}

class _PedidoDetalhamentoPageState extends State<PedidoDetalhamentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  "https://www.sonoticias.com.br/wp-content/uploads/2022/01/Casa-destrui%CC%81da-ince%CC%82ndio-reside%CC%82ncia-Sorriso-1-janeiro-2022-Marcos-Rafael-1024x720.jpg",
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                  height: 250,
                ),
                const Positioned(
                  child: BackButton(),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: kValueDefaultPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: kValueDefaultPadding / 2,
                  ),
                  const Text(
                    "Preciso de uma Geladeira",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(
                    color: kColorFontGray,
                    thickness: 0.2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                            "https://www.al.ce.gov.br//storage/deputado/57/foto/dl9oNUbDldKgAuBHrB1bVtP2g7LbRuaqMYSeH8f8.jpg",
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: kValueDefaultPadding / 2,
                      ),
                      const Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Maria Silva",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Solicitante"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: kValueDefaultPadding / 2,
                      ),
                      Expanded(
                        flex: 3,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 5,
                            ),
                            side: const BorderSide(
                              width: 1,
                              color: kColorApp,
                            ),
                          ),
                          child: const Text(
                            "Ver Perfil",
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: kValueDefaultPadding,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: kColorApp.withOpacity(
                              0.2,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              IconlyLight.location,
                              color: kColorApp,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: kValueDefaultPadding / 2,
                      ),
                      const Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Endereço",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                                "Av Pinheiro Machado Nº 523 - Caxias do Sul / RS"),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    color: kColorFontGray,
                    thickness: 0.2,
                  ),
                  const SizedBox(
                    height: kValueDefaultPadding / 2,
                  ),
                  const Text(
                    "Sobre o Pedido",
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
                  const SizedBox(
                    height: kValueDefaultPadding,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "QUERO AJUDAR",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
