import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Descricao01())),
                child: Image.network(
                    "https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Descricao02())),
                child: Image.network(
                    "https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Descricao03())),
                child: Image.network(
                    "https://images.pexels.com/photos/213783/pexels-photo-213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Descricao04())),
                child: Image.network(
                    "https://images.pexels.com/photos/213784/pexels-photo-213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Descricao05())),
                child: Image.network(
                    "https://images.pexels.com/photos/213785/pexels-photo-213785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Descricao06())),
                child: Image.network(
                    "https://images.pexels.com/photos/213786/pexels-photo-213786.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Descricao07())),
                child: Image.network(
                    "https://images.pexels.com/photos/213787/pexels-photo-213787.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Descricao08())),
                child: Image.network(
                    "https://images.pexels.com/photos/213788/pexels-photo-213788.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Descricao09())),
                child: Image.network(
                    "https://images.pexels.com/photos/213789/pexels-photo-213789.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Descricao01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NOVA YORK"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                child: Text(
                  'Nova york, EUA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(5, 90, 5, 2)),
            Expanded(
              child: Container(
                  child: Text(
                    'O Metropolitan Museum of Art (em português: Museu Metropolitano de Arte), conhecido informalmente como The Met, é um museu de arte localizado na cidade de Nova Iorque, Estados Unidos, sendo um dos mais visitados museus do planeta. Fundado em 13 de abril de 1870, foi aberto ao público em 20 de fevereiro de 1872. É um dos maiores e mais importantes museus do mundo e abriga uma importante coleção de pintura europeia dos séculos XII-XX e obras da arte antiga (grega, romana, egípcia e assírio-babilónica) e oriental.(Wikipédia)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 100, 5, 80)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'voltar',
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}

class Descricao02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Soleira"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                child: Text(
                  'Soleira',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(5, 90, 5, 2)),
            Expanded(
              child: Container(
                  child: Text(
                    'Soleira, em geologia, é uma massa de rocha ígnea de forma tabular, muitas vezes horizontal e que intruíu lateralmente por entre camadas mais antigas de rocha sedimentar, lava ou tufos vulcânicos ou até mesmo segundo a direcção de foliação em rochas metamórficas.(Wikipédia)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 100, 5, 80)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'voltar',
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}

class Descricao03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                child: Text(
                  'Praia',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(5, 90, 5, 2)),
            Expanded(
              child: Container(
                  child: Text(
                    'Uma praia (do latim tardio plagia) é uma formação geológica composta por partículas soltas de mineral ou rocha na forma de areia, cascalho, seixo ou calhaus ao longo da margem de um corpo de água (rio ou oceano), seja uma costa ou praia fluvial.(Wikipédia)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 100, 5, 80)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'voltar',
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}

class Descricao04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uádi"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                child: Text(
                  'Uádi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(5, 90, 5, 2)),
            Expanded(
              child: Container(
                  child: Text(
                    'Um uádi, uade, uédi[1] ou uede[2] (do árabe وادي‎; romaniz.: wádí, "águas mananciais, rio", plural de wád) é um leito seco de rio no qual as águas correm apenas na estação das chuvas. O termo é usado nas regiões desérticas da Norte da África e da Ásia e é muito comum em topônimos. Como exemplo, resta na toponímia de muitos rios do sul da Península Ibérica, como o Guadiana, o Guadalquivir, o Guadalete, o Guadalfeo ou o Guadarrama.(Wikipédia)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 100, 5, 80)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'voltar',
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}

class Descricao05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oswald West State Park "),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                child: Text(
                  'Oswald West State Park ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(5, 90, 5, 2)),
            Expanded(
              child: Container(
                  child: Text(
                    'Oswald West State Park faz parte do sistema de parques estaduais do estado de Oregon, nos Estados Unidos. Ele está localizado a cerca de 10 quilômetros ao sul da cidade de Cannon Beach, adjacente ao Arch Cape, no Oceano Pacífico.(Wikipédia)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 100, 5, 80)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'voltar',
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}

class Descricao06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loch "),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                child: Text(
                  'Loch',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(5, 90, 5, 2)),
            Expanded(
              child: Container(
                  child: Text(
                    'Loch é a palavra gaélica escocesa, escocesa e irlandesa para um lago ou enseada marítima. É cognato com o manx lough, cornish logh, e uma das palavras galesas para lago, llwch.(Wikipédia)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 100, 5, 80)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'voltar',
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}

class Descricao07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Smith Rock State Park "),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                child: Text(
                  'Smith Rock State Park',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(5, 90, 5, 2)),
            Expanded(
              child: Container(
                  child: Text(
                    'O Smith Rock State Park é um parque estadual localizado no alto deserto do Oregon, próximo às comunidades de Redmond e Terrebonne. A área de uso diário do parque está aberta diariamente do amanhecer ao anoitecer. O parque também possui uma área de camping que acomoda apenas barracas.(Wikipédia)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 100, 5, 80)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'voltar',
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}

class Descricao08 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Montanha "),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                child: Text(
                  'Montanha',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(5, 90, 5, 2)),
            Expanded(
              child: Container(
                  child: Text(
                    'Montanha ou monte (do latim montanea, de mons, montis) é uma forma de relevo. Uma sequência de montanhas denomina-se cordilheira. Uma montanha tem imponência e altitude superiores a uma colina, embora não exista uma altitude específica única para essa diferenciação. O adjetivo montano é usado para descrever áreas montanhosas e coisas relacionadas a elas. Assim, cada autoridade no assunto assume valores convenientes, embora a montanha seja tipicamente escarpada, de grande inclinação e com sobreposição de relevos.(Wikipédia)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 100, 5, 80)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'voltar',
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}

class Descricao09 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Matteuccia "),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                child: Text(
                  'Matteuccia',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(5, 90, 5, 2)),
            Expanded(
              child: Container(
                  child: Text(
                    'Matteuccia é um gênero de samambaias com uma espécie: Matteuccia struthiopteris. O epíteto da espécie struthiopteris deriva das palavras gregas antigas στρουθίων "avestruz" e πτερίς "samambaia".(Wikipédia)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 100, 5, 80)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'voltar',
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
