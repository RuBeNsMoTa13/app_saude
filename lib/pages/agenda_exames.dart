import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AgendaExamesPage extends StatefulWidget {
  const AgendaExamesPage({super.key});

  @override
  State<AgendaExamesPage> createState() => _AgendaExamesPageState();
}

class _AgendaExamesPageState extends State<AgendaExamesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ('Instituto De Saúde Especializado'),
        ),
        centerTitle: true,
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromRGBO(62, 124, 120, 1.0),
      ),
      body: Column(
        children: [
          Container(
            height: 125,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildCard(),
                SizedBox(width: 20),
                buildCard(),
                SizedBox(width: 20),
                buildCard(),
                SizedBox(width: 20),
                buildCard(),
                SizedBox(width: 20),
              ],
            ),
          ),
          SizedBox(height: 10), // dar um espaço entre o list view e grid
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        CupertinoIcons.calendar_badge_plus,
                        color: Colors.black,
                        size: 50,
                      ),
                      Text("Agendar Consulta"),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        CupertinoIcons.qrcode_viewfinder,
                        color: Colors.black,
                        size: 50,
                      ),
                      Text("Escanear Check-In"),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        CupertinoIcons.lab_flask,
                        color: Colors.black,
                        size: 50,
                      ),
                      Text("Agendar Exames"),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        CupertinoIcons.doc_on_clipboard,
                        color: Colors.black,
                        size: 50,
                      ),
                      Text("Lita De Médicos"),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        CupertinoIcons.exclamationmark_bubble_fill,
                        color: Colors.black,
                        size: 50,
                      ),
                      Text("Urgência"),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        CupertinoIcons.lab_flask_solid,
                        color: Colors.black,
                        size: 50,
                      ),
                      Text("Resultado De Exame"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard() => Container(
        width: 150,
        height: 100,
        color: Colors.red,
      );
}