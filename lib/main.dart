import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "My Home";

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
              centerTitle: true,
            ),
            body: GridView.count(
                crossAxisCount: 2,
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(choice: choices[index]),
                  );
                }))));
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;

  final IconData icon;
}

const List<Choice> choices = const [
  const Choice(title: 'Ruang Tamu', icon: Icons.weekend),
  const Choice(title: 'Bilik Tidur', icon: Icons.local_hotel),
  const Choice(title: 'Tandas', icon: Icons.bathtub),
  const Choice(title: 'Dapur', icon: Icons.kitchen),
  const Choice(title: 'Lampu Luar', icon: Icons.directions_car),
  const Choice(title: 'Lampu Pagar', icon: Icons.lightbulb),
  
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;

    return Card(
        color: Colors.white,
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child:
                        Icon(choice.icon, size: 50.0, color: textStyle.color,)),
                Text(choice.title, style: textStyle),
              ]),
        ));
  }
}