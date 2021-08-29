import 'package:flutter/material.dart';

class JobsPage extends StatefulWidget {
  JobsPage({Key? key}) : super(key: key);
  @override
  _JobsPageState createState() => _JobsPageState();
}

class Trampos {
  final nomeProj;
  final assetImg;
  final info;
  Trampos(this.nomeProj, this.assetImg, this.info);
}

class _JobsPageState extends State<JobsPage> {
  final trampos = <Trampos>[
    Trampos('Calculadora Imc', 'lib/assets/images/CalcImc.png',
        'Calculadora básica de Imc em ReactNative'),
    Trampos('Calculadora Native', 'lib/assets/images/CalcNative.png',
        'Calculadora básica em ReactNative'),
    Trampos('Site Lucas', 'lib/assets/images/SiteLucas.png',
        'Site para o Nutricionista Lucas Cardoso'),
    Trampos('App SoulMili', 'lib/assets/images/SoulMili.gif',
        'Banco que dá dinheiro a mais'),
    Trampos('App MotoTaxi', 'lib/assets/images/MotoTaxi.gif',
        'App para mototaxistas em ReactNative'),
    Trampos('App Jojo', 'lib/assets/images/JoJo.gif',
        'App para treino de navegação em flutter'),
  ];

  Widget _buildPage(String text, String asset, String info) {
    return Container(
      child: Container(
        child: Text(
          '$text \n $info',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Color.fromRGBO(0, 0, 0, 0.5),
          ),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
        color: Colors.black26,
      ),
      decoration: BoxDecoration(
          color: Colors.black54,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(asset),
          )),
    );
  }
// ListView.builder(
  //   itemCount: trampos.length,
  //   itemBuilder: (BuildContext context, int index) {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Rodrigo\'s Portfolio'),
        ),
        body: PageView.builder(
          itemBuilder: (BuildContext context, int index) {
            Trampos trampo = trampos[index];
            return _buildPage(trampo.nomeProj, trampo.assetImg, trampo.info);
          },
          itemCount: trampos.length,
        ));
  }
}
