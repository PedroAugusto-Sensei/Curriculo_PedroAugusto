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
            SizedBox(
              height: 400,
              child: FittedBox(
                fit: BoxFit.contain,
                child: CircleAvatar(
                  radius: 200,
                  backgroundImage: AssetImage('images/pedro.jpeg'),
                ),
              ),
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
  static List<String> escolaridade = [
    'Ensino Fundamental completo.',
    'Ensino Médio cursando.',
  ];

  static List<String> descricao_escolaridade = [
    'Ensino Fundamental realizado na Escola Básica Municipal Imigrantes.',
    'Ensino Médio Técnico em Informática para Internet cursando no Instituto Federal Catarinese - Campus Concórdia.',
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
            return Dismissible(
              key: Key(escolaridade[index]),
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.delete, color: Colors.white),
              ),
              onDismissed: (direction) => setState(() {
                _EscolaridadeState.escolaridade.removeAt(index);
                _EscolaridadeState.descricao_escolaridade.removeAt(index);
              }),
              child: ListTile(
                title: Text(
                  escolaridade[index],
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  descricao_escolaridade[index],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
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
  static List<String> projetos = [
    'Projeto de Desenvolvimento de Aplicativo pra o Ambulatório da Dor.',
    'Projeto de Jogo da Velha triangular (python).',
    'Projeto de Jogo de Sudoku (python).',
    'Projeto de Campo Minado em Dart.',
    'Projeto de CinemaJS em JS.',
  ];

  static List<String> descricao_projetos = [
    'Segredo profissional.',
    'Desenvolvimento de um jogo da velha triangular utilizando a linguagem Python. O jogo apresenta uma variação do tradicional jogo da velha, onde os jogadores competem em um tabuleiro triangular em vez do formato quadrado. O projeto envolveu a implementação da lógica do jogo, a criação de uma interface gráfica utilizando a biblioteca Pygame e a adição de recursos como pontuação e níveis de dificuldade. O jogo foi projetado para ser divertido e desafiador, proporcionando uma experiência única aos jogadores.',
    'Desenvolvimento de um jogo de Sudoku utilizando a linguagem Python. O jogo apresenta um tabuleiro 9x9 onde os jogadores devem preencher os números de 1 a 9 sem repetir em cada linha, coluna e região 3x3. O projeto envolveu a implementação da lógica do jogo, a criação de uma interface gráfica terminal e a adição de recursos como geração aleatória de tabuleiros, dicas para os jogadores e diferentes níveis de dificuldade. O jogo foi projetado para ser desafiador e envolvente, proporcionando horas de entretenimento aos jogadores.',
    'Desenvolvimento de um jogo de Campo Minado utilizando a linguagem Dart. O jogo apresenta um tabuleiro onde os jogadores devem encontrar as minas escondidas sem detoná-las. O projeto envolveu a implementação da lógica do jogo, a criação de uma interface gráfica utilizando o framework Flutter e a adição de recursos como diferentes tamanhos de tabuleiro, contagem regressiva e pontuação. O jogo foi projetado para ser divertido e desafiador, proporcionando uma experiência emocionante aos jogadores.',
    'Desenvolvimento do CinemaJS, um sistema de gerenciamento de poltrons de um Cinema. O CinemaJS foi desenvolvido utilizando tecnologias como HTML, CSS e JavaScript, proporcionando uma interface intuitiva para os usuários. O projeto envolveu também a amostragem de filmes em cartaz.',
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
          padding: EdgeInsets.fromLTRB(30.0, 30, 30.0, 16),
          itemCount: projetos.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(projetos[index]),
              child: ListTile(
                title: Text(
                  projetos[index],
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  descricao_projetos[index],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
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
  static List<String> recomendacoes = [
    'Recomendação do Professor de Programação I.',
  ];
  static List<String> descricao_recomendacao = [
    'O professor de Programação I, Professor Mazzutti, recomendou o Pedro por sua dedicação e interesse em aprender. Ele destacou que o Pedro é um aluno comprometido, sempre participando ativamente das aulas e buscando entender os conceitos de programação. O professor também mencionou que o Pedro tem um bom raciocínio lógico e é capaz de resolver problemas de forma eficiente. Ele acredita que o Pedro tem um grande potencial para se destacar na área de tecnologia e recomenda fortemente sua contratação.',
  ];

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
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.fromLTRB(50.0, 30, 50.0, 16),
          itemCount: recomendacoes.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(recomendacoes[index]),
              child: ListTile(
                title: Text(
                  recomendacoes[index],
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),

                subtitle: Text(
                  descricao_recomendacao[index],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class CadastrarInfos extends StatefulWidget {
  const CadastrarInfos({super.key});

  @override
  State<CadastrarInfos> createState() => _CadastrarInfosState();
}

class _CadastrarInfosState extends State<CadastrarInfos> {
  Color bgcolor1 = Colors.green[800]!;
  Color txtcolor1 =
      Colors.white; // =====================================================
  Color bgcolor2 =
      Colors.white; // Variáveis para controlar as cores dos botões e textos
  Color txtcolor2 = Colors
      .green[800]!; // =====================================================
  Color bgcolor3 = Colors.white;
  Color txtcolor3 = Colors.green[800]!;

  String selectedInfo =
      'Escolaridade'; // Variável para armazenar a informação selecionada DEFAULT -> Escolaridade

  final TextEditingController titleController =
      TextEditingController(); // Controlador para o campo de título
  final TextEditingController descriptionController =
      TextEditingController(); // Controlador para o campo de descrição

  @override
  void dispose() {
    titleController.dispose(); // Liberar recursos do controlador de título
    descriptionController
        .dispose(); // Liberar recursos do controlador de descrição
    super.dispose();
  }

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
      body: ListView(
        padding: EdgeInsets.fromLTRB(50.0, 30, 50.0, 16),
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                bgcolor1 = Colors.green[800]!;
                txtcolor1 = Colors.white;
                bgcolor2 = Colors.white;
                txtcolor2 = Colors.green[800]!;
                bgcolor3 = Colors.white;
                txtcolor3 = Colors.green[800]!;

                selectedInfo = 'Escolaridade';
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: bgcolor1,
              fixedSize: Size(180, 20),
            ),
            child: Text(
              'Escolaridade',
              style: TextStyle(color: txtcolor1, fontSize: 16),
            ),
          ),

          SizedBox(width: 10),

          ElevatedButton(
            onPressed: () {
              setState(() {
                bgcolor2 = Colors.green[800]!;
                txtcolor2 = Colors.white;
                bgcolor1 = Colors.white;
                txtcolor1 = Colors.green[800]!;
                bgcolor3 = Colors.white;
                txtcolor3 = Colors.green[800]!;

                selectedInfo = 'Projetos';
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: bgcolor2,
              fixedSize: Size(180, 20),
            ),
            child: Text(
              'Projetos',
              style: TextStyle(color: txtcolor2, fontSize: 16),
            ),
          ),

          SizedBox(width: 10),

          ElevatedButton(
            onPressed: () {
              setState(() {
                bgcolor3 = Colors.green[800]!;
                txtcolor3 = Colors.white;
                bgcolor1 = Colors.white;
                txtcolor1 = Colors.green[800]!;
                bgcolor2 = Colors.white;
                txtcolor2 = Colors.green[800]!;

                selectedInfo = 'Recomendações';
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: bgcolor3,
              fixedSize: Size(180, 20),
            ),
            child: Text(
              'Recomendações',
              style: TextStyle(color: txtcolor3, fontSize: 16),
            ),
          ),

          SizedBox(height: 32),

          Text(
            'Cadastrar informações sobre ${selectedInfo}',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 32),

          Text(
            'Título:',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
          ),
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              hintText: 'Digite o título da informação',
            ),
          ),

          SizedBox(height: 16.0),

          Text(
            'Descrição:',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
          ),
          TextField(
            maxLines: 5,
            controller: descriptionController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              hintText: 'Digite a descrição da informação',
            ),
          ),

          SizedBox(height: 32),

          ElevatedButton(
            onPressed: () {
              if (selectedInfo == 'Escolaridade') {
                _EscolaridadeState.escolaridade.add(titleController.text);
                _EscolaridadeState.descricao_escolaridade.add(
                  descriptionController.text,
                );
                titleController.clear();
                descriptionController.clear();
              } else if (selectedInfo == 'Projetos') {
                _ProjetosState.projetos.add(titleController.text);
                _ProjetosState.descricao_projetos.add(
                  descriptionController.text,
                );
                titleController.clear();
                descriptionController.clear();
              } else if (selectedInfo == 'Recomendações') {
                _RecomendacoesState.recomendacoes.add(titleController.text);
                _RecomendacoesState.descricao_recomendacao.add(
                  descriptionController.text,
                );
                titleController.clear();
                descriptionController.clear();
              }
            },

            child: Text(
              'Salvar',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green[800],
              fixedSize: Size(150, 40),
            ),
          ),
        ],
      ),
    );
  }
}
