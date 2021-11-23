import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Carrossel(),
        routes: {
          Descricao.caminho: (_) => Descricao(),
        },
      ),
    );

class Carrossel extends StatefulWidget {
  @override
  CarrosselState createState() => CarrosselState();
}

class CarrosselState extends State<Carrossel> {
  int indice = 0;

  List<Map> imagens = [
    {
      'arquivo': 'img/nova.jpeg',
      'titulo': 'Nova York',
      'descricao':
          'O Metropolitan Museum of Art (em português: Museu Metropolitano de Arte), conhecido informalmente como The Met, é um museu de arte localizado na cidade de Nova Iorque, Estados Unidos, sendo um dos mais visitados museus do planeta. Fundado em 13 de abril de 1870, foi aberto ao público em 20 de fevereiro de 1872. É um dos maiores e mais importantes museus do mundo e abriga uma importante coleção de pintura europeia dos séculos XII-XX e obras da arte antiga (grega, romana, egípcia e assírio-babilónica) e oriental.(Wikipédia)',
    },
    {
      'arquivo': 'img/soleira.jpeg',
      'titulo': 'Soleira',
      'descricao':
          'Soleira, em geologia, é uma massa de rocha ígnea de forma tabular, muitas vezes horizontal e que intruíu lateralmente por entre camadas mais antigas de rocha sedimentar, lava ou tufos vulcânicos ou até mesmo segundo a direcção de foliação em rochas metamórficas.(Wikipédia)',
    },
    {
      'arquivo': 'img/praia.jpeg',
      'titulo': 'Praia',
      'descricao':
          'Uma praia (do latim tardio plagia) é uma formação geológica composta por partículas soltas de mineral ou rocha na forma de areia, cascalho, seixo ou calhaus ao longo da margem de um corpo de água (rio ou oceano), seja uma costa ou praia fluvial.(Wikipédia)',
    },
    {
      'arquivo': 'img/uadi.jpeg',
      'titulo': 'Uádi',
      'descricao':
          'Um uádi, é um leito seco de rio no qual as águas correm apenas na estação das chuvas. O termo é usado nas regiões desérticas da Norte da África e da Ásia e é muito comum em topônimos. Como exemplo, resta na toponímia de muitos rios do sul da Península Ibérica, como o Guadiana, o Guadalquivir, o Guadalete, o Guadalfeo ou o Guadarrama.(Wikipédia)',
    },
  ];
  void anterior() => setState(() => indice = (indice - 1) % imagens.length);

  void posterior() => setState(() => indice = (indice + 1) % imagens.length);

  InkWell imagem() => InkWell(
        child: Stack(
          children: [
            Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                  image: AssetImage(imagens[indice]['arquivo']),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 5,
                  )
                ],
              ),
            ),
            Positioned(
              top: 375,
              left: 25,
              right: 25,
              child: PainelPontos(
                numeroPontos: imagens.length,
                indice: indice,
              ),
            ),
          ],
        ),
        onTap: () {
          Navigator.pushNamed(
            context,
            Descricao.caminho,
            arguments: ArgumentosDaRota(
                imagens[indice]['titulo'], imagens[indice]['descricao']),
          );
        },
      );
  Row cursor() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              child: Icon(Icons.arrow_left),
              onPressed: anterior,
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(13),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              child: Icon(Icons.arrow_right),
              onPressed: posterior,
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(13),
              ),
            ),
          ),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrossel'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imagem(),
          cursor(),
        ],
      ),
    );
  }
}

class PainelPontos extends StatelessWidget {
  final int? numeroPontos;
  final int? indice;
  PainelPontos({this.numeroPontos, this.indice});
  Widget fotoInativa() {
    return Padding(
      padding: EdgeInsets.only(left: 3, right: 3),
      child: Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.3,
              blurRadius: 3,
            )
          ],
        ),
      ),
    );
  }

  Widget fotoAtiva() {
    return Padding(
      padding: EdgeInsets.only(left: 3, right: 3),
      child: Container(
          height: 11,
          width: 11,
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.orangeAccent,
                  spreadRadius: 0.3,
                  blurRadius: 3,
                )
              ])),
    );
  }

  List<Widget> gerarPainelPontos() {
    List<Widget> pontos = [];
    for (int i = 0; i < this.numeroPontos!; i++)
      pontos.add(i == indice ? fotoAtiva() : fotoInativa());
    return pontos;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: this.gerarPainelPontos(),
      ),
    );
  }
}

class Descricao extends StatelessWidget {
  static const caminho = '/descricao';
  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.titulo),
      ),
      body: Center(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 150, 8, 10),
          child: Text(
            argumentos.titulo,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 150, 8, 10),
          child: Text(
            argumentos.descricao,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}

class ArgumentosDaRota {
  String titulo;
  String descricao;
  ArgumentosDaRota(this.titulo, this.descricao);
}
