import 'package:flutter/material.dart';
 
class HomePageAlternativo extends StatelessWidget {

  final opciones = [
    {"title": "Uno", "description": "Description 1", "leading": Icons.card_travel_rounded, "trailing": Icons.adjust_rounded, "estilo": Colors.green.shade100},
    {"title": "Dos", "description": "Description 2", "leading": Icons.airplanemode_active_rounded, "trailing": Icons.arrow_forward_ios_rounded, "estilo": Colors.green.shade200},
    {"title": "Tres", "description": "Description 3", "leading": Icons.airport_shuttle_rounded, "trailing": Icons.arrow_right_rounded, "estilo": Colors.green.shade500},
    {"title": "Cuatro", "description": "Description 4", "leading": Icons.anchor_rounded, "trailing": Icons.check_circle_outline_rounded, "estilo": Colors.green.shade600},
    {"title": "Cinco", "description": "Description 5", "leading": Icons.beach_access_rounded, "trailing": Icons.done_outline_rounded, "estilo": Colors.green.shade800}
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('listTile'),
      ),
      body: ListView(children: _crearItemsCorto()),
    );
  }

  /* List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (var opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      //lista.add(tempWidget);
      //lista.add(Divider());
      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  } */

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text((item['title']), style: TextStyle(color: (item['estilo']),  fontSize: 20.0, fontWeight: FontWeight.w500)),
            subtitle: Text(item['description'], style: TextStyle(color: Colors.grey.shade700, fontSize: 15.0, fontWeight: FontWeight.w200)),
            leading: Icon(item['leading']),
            trailing: Icon(item['trailing']),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}