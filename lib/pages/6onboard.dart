import 'package:flutter/material.dart';
import 'package:projetofruit/widgets/onboard_page/4linkpularinstrucao_onboard.dart';
import 'package:projetofruit/widgets/onboard_page/2paginator_onboard.dart';
import 'package:projetofruit/widgets/onboard_page/1slider_onboard.dart';
import 'package:projetofruit/widgets/onboard_page/3buttomcontinue_onboard.dart';

class Onboard extends StatefulWidget {
  Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  final PageController _controller = PageController();

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.deepOrange.shade400,
              Colors.orange.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            top: false,
            child: Stack(
              children: [
              PageView(
                controller: _controller,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                physics: ClampingScrollPhysics(),
                children: [
                  CustomSlider(
                      imagem: 'assets/prancheta.png',
                      titulo: 'Na palma da mão',
                      texto: 'Dificuldades em controlar todas as calorias diárias presentes em sua dieta?'),
                  CustomSlider(
                      imagem: 'assets/orange-board.png',
                      titulo: 'Benefícios do APP',
                      texto: 'Aqui você não precisa de um papelzinho no bolso para anotar todo alimento ingerido no dia.'),
                  CustomSlider(
                      imagem: 'assets/apple-board2.png',
                      titulo: 'Controle sua dieta',
                      texto: 'A maneira mais eficiente de você controlar a sua dieta, apresenta dados calóricos, quantidade de açucares, e muito mais.'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomPaginator(page: _currentPage),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BottomContinue(
                      titulo: _currentPage == 2 ? 'QUERO ENTRAR' : 'CONTINUAR',
                      irParaPaginaInicial:
                          _currentPage == 2 ? irParaPaginaInicial : proximoCard,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomLink(titulo: 'Pular instruções', irParaPaginaInicial: irParaPaginaInicial),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  irParaPaginaInicial() {
    Navigator.of(context).pushReplacementNamed('/loginpage');
  }

  proximoCard() {
    _controller.nextPage(duration: Duration(seconds: 1), curve: Curves.easeIn);
  }
}
