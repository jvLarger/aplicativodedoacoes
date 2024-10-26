import 'package:aplicativodedoacoes/constants/colors.dart';
import 'package:aplicativodedoacoes/constants/values.dart';
import 'package:aplicativodedoacoes/pages/chat/salas_bate_papo_page.dart';
import 'package:aplicativodedoacoes/pages/home/home_page.dart';
import 'package:aplicativodedoacoes/pages/perfil/components/lista_meus_pedidos_abertos.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> with TickerProviderStateMixin {
  TabController? _tabController;
  int _indexTabAtiva = 0;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
    super.initState();
  }

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
                icon: Icon(
                  IconlyBold.profile,
                  color: kColorApp,
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
      body: SingleChildScrollView(
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
                "Perfil",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: kValueDefaultPadding,
            ),
            Row(
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
            SizedBox(
              height: kValueDefaultPadding / 2,
            ),
            Padding(
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: kValueDefaultPadding),
              child: Column(
                children: [
                  TabBar(
                    unselectedLabelColor: Colors.black,
                    labelColor: kColorApp,
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Urbanist',
                    ),
                    onTap: (value) {
                      _indexTabAtiva = value;
                      setState(() {});
                    },
                    tabs: const [
                      Tab(
                        text: 'Abertos',
                      ),
                      Tab(
                        text: 'Concluídos',
                      )
                    ],
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                  _indexTabAtiva == 0
                      ? ListaMeusPedidosAbertos()
                      : ListaMeusPedidosAbertos()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
