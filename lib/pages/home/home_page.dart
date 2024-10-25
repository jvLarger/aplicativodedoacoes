import 'package:aplicativodedoacoes/components/custom_text_form_field.dart';
import 'package:aplicativodedoacoes/constants/colors.dart';
import 'package:aplicativodedoacoes/constants/values.dart';
import 'package:aplicativodedoacoes/pages/home/components/header_home.dart';
import 'package:aplicativodedoacoes/pages/home/components/lista_pedidos_doacao.dart';
import 'package:aplicativodedoacoes/pages/home/components/lista_pedidos_doacao_destaque.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                icon: Icon(
                  IconlyBold.home,
                  color: kColorApp,
                ),
                onPressed: () {
                  // Ação do botão de menu
                },
              ),
              IconButton(
                icon: Icon(
                  IconlyLight.chat,
                ),
                onPressed: () {
                  // Ação do botão de menu
                },
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ação do FAB
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, // Posiciona o FAB centralizado
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderHome(),
            const SizedBox(
              height: kValueDefaultPadding,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: kValueDefaultPadding,
              ),
              child: const CustomTextFormField(
                label: "Filtre por alguma informação",
                suffixIcon: Icon(
                  IconlyLight.search,
                  size: 18,
                ),
              ),
            ),
            const SizedBox(
              height: kValueDefaultPadding,
            ),
            const ListaPedidosDoacaoDestaque(),
            const SizedBox(
              height: kValueDefaultPadding,
            ),
            const ListaPedidosDoacao(),
          ],
        ),
      ),
    );
  }
}