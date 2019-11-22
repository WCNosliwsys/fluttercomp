import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget{
  final items=["uno","dos","tres","cuatro","cinco"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("mis componentes"),
      ),
      body: ListView(
        children: cargaritemcorto()
      ),
    );
  }

  List<Widget> cargaritems(){
    List<Widget> lista=List<Widget>();
    for(String item in items){
      final a=ListTile(title: Text(item),);
      lista..add(a)
           ..add(Divider());
    }
    return lista;
  }

  List<Widget> cargaritemcorto(){
    return items.map((item){
      return Column(
        children:<Widget>[
        ListTile(title: Text(item),
        subtitle: Text("cualquier cosa"),
        leading: Icon(Icons.ac_unit),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: (){},),
          Divider()
      ],);
    }).toList();
  }
}