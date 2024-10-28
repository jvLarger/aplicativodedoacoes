import 'package:aplicativodedoacoes/constants/colors.dart';
import 'package:aplicativodedoacoes/constants/values.dart';
import 'package:aplicativodedoacoes/pages/chat/salas_bate_papo_page.dart';
import 'package:aplicativodedoacoes/pages/home/home_page.dart';
import 'package:aplicativodedoacoes/pages/perfil/perfil_page.dart';
import 'package:aplicativodedoacoes/pages/user/alterar_usuario_page.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ConfiguracoesPage extends StatefulWidget {
  const ConfiguracoesPage({super.key});

  @override
  State<ConfiguracoesPage> createState() => _ConfiguracoesPageState();
}

class _ConfiguracoesPageState extends State<ConfiguracoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color.fromARGB(255, 229, 229, 229), // Cor da borda
              width: 0.5, // Espessura da borda
            ),
          ),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(), // Cria o recorte para o FAB
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
                icon: const Icon(
                  IconlyLight.chat,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SalasBatePapoPage(),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  IconlyLight.profile,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PerfilPage(),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  IconlyBold.setting,
                  color: kColorApp,
                ),
                onPressed: () {
                  // Ação do botão de menu
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: kValueDefaultPadding * 2,
                left: kValueDefaultPadding,
                right: kValueDefaultPadding,
              ),
              child: Text(
                "Configurações",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: kValueDefaultPadding,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    "https://www.al.ce.gov.br//storage/deputado/57/foto/dl9oNUbDldKgAuBHrB1bVtP2g7LbRuaqMYSeH8f8.jpg",
                  ),
                )
              ],
            ),
            const SizedBox(
              height: kValueDefaultPadding / 2,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: kValueDefaultPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Maria Silva",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kValueDefaultPadding * 2,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AlterarUsuarioPage(),
                  ),
                );
              },
              title: const Text(
                "Alterar Informações",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: const Icon(IconlyLight.profile),
              trailing: const Icon(Icons.chevron_right),
            ),
            const ListTile(
              title: Text(
                "Sair",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              leading: Icon(
                IconlyLight.logout,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
