import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyCurriculumPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyCurriculumPage extends StatelessWidget {
  const MyCurriculumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(Colors.green.shade800.value),
        title: Text(
          'Currículo',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CadastrarInfos()),
              );
            },
            icon: Icon(Icons.add_sharp, color: Colors.white),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 16.0),
          children: [
            CircleAvatar(
              radius: 200,
              backgroundImage: AssetImage('images/pedro.jpeg'),
            ),

            Text(
              'Olá, meu nome é Pedro Augusto, tenho 18 anos!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Escolaridade()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[800],
                fixedSize: Size(200, 50),
              ),
              child: Text(
                'Escolaridade',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            SizedBox(height: 5),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Projetos()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[800],
                fixedSize: Size(200, 50),
              ),
              child: Text(
                'Projetos',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            SizedBox(height: 5),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Recomendacoes(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[800],
                fixedSize: Size(200, 50),
              ),
              child: Text(
                'Recomendações',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Escolaridade extends StatefulWidget {
  const Escolaridade({super.key});

  @override
  State<Escolaridade> createState() => _EscolaridadeState();
}

class _EscolaridadeState extends State<Escolaridade> {
  List<String> escolaridade = [
    'Ensino Fundamental completo.',
    'Ensino Médio cursando.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(Colors.green.shade800.value),
        title: Text(
          'Escolaridade',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.fromLTRB(50.0, 30, 50.0, 16),
          itemCount: escolaridade.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                escolaridade[index],
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Projetos extends StatefulWidget {
  const Projetos({super.key});

  @override
  State<Projetos> createState() => _ProjetosState();
}

class _ProjetosState extends State<Projetos> {
  List<String> projetos = [
    'Projeto de Desenvolvimento de Aplicativo pra o Ambulatório da Dor.',
    'Projeto de Jogo da Velha triangular (python).',
    'Projeto de Jogo de Sudoku (python).',
    'Projeto de Campo Minado em Dart.',
    'Projeto de CinemaJS em JS.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(Colors.green.shade800.value),
        title: Text(
          'Projetos',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.fromLTRB(50.0, 30, 50.0, 16),
          itemCount: projetos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                projetos[index],
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Recomendacoes extends StatefulWidget {
  const Recomendacoes({super.key});

  @override
  State<Recomendacoes> createState() => _RecomendacoesState();
}

class _RecomendacoesState extends State<Recomendacoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(Colors.green.shade800.value),
        title: Text(
          'Recomendações',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(),
    );
  }
}

class CadastrarInfos extends StatefulWidget {
  const CadastrarInfos({super.key});

  @override
  State<CadastrarInfos> createState() => _CadastrarInfosState();
}

class _CadastrarInfosState extends State<CadastrarInfos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(Colors.green.shade800.value),
        title: Text(
          'Cadastrar Informações',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(),
    );
  }
}
