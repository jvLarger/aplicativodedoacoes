import 'package:aplicativodedoacoes/constants/colors.dart';
import 'package:aplicativodedoacoes/constants/values.dart';
import 'package:aplicativodedoacoes/pages/chat/components/lista_salas_bate_papo.dart';
import 'package:aplicativodedoacoes/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class SalasBatePapoPage extends StatefulWidget {
  const SalasBatePapoPage({super.key});

  @override
  State<SalasBatePapoPage> createState() => _SalasBatePapoPageState();
}

class _SalasBatePapoPageState extends State<SalasBatePapoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: const Color.fromARGB(255, 229, 229, 229), // Cor da borda
              width: 0.5, // Espessura da borda
            ),
          ),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(), // Cria o recorte para o FAB
          notchMargin: 8.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(
                  IconlyLight.home,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  IconlyBold.chat,
                  color: kColorApp,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  IconlyLight.profile,
                ),
                onPressed: () {
                  // Ação do botão de menu
                },
              ),
              IconButton(
                icon: Icon(
                  IconlyLight.setting,
                ),
                onPressed: () {
                  // Ação do botão de menu
                },
              ),
            ],
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: kValueDefaultPadding * 2,
                left: kValueDefaultPadding,
                right: kValueDefaultPadding,
              ),
              child: Text(
                "Salas de Bate Papo",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            ListaSalasBatePapo(),
          ],
        ),
      ),
    );
  }
}