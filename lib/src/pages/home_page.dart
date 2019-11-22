import 'package:flutter/material.dart';
import 'package:flutter_components/src/pages/alert_page.dart';
import 'package:flutter_components/src/providers/menu_provider.dart';
import 'package:flutter_components/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Componentes"),),
      body: Widget_lista(),
    );
  }

  Widget_lista() {
   // menuprovider.cargarData();
    return FutureBuilder(
      future: menuprovider.cargarData(),
      initialData: [],
      builder: (context,AsyncSnapshot <List<dynamic>> snapshot){
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      }
    );

  }

  List<Widget> _listaItems(List<dynamic> data, context) {
   final List<Widget> opciones =[];
   data.forEach((opt){
     final widgetTemp = ListTile(
       title: Text(opt['texto']),
       leading: getIcon(opt['icon']),
       trailing: Icon(Icons.keyboard_arrow_right,color:Colors.blue),
       onTap: (){
         Navigator.pushNamed(context, opt['ruta']);
        /*  final route =MaterialPageRoute(
            builder: (context)=> AlertPage()
          );
          Navigator.push(context, route);*/
       },
     );
     opciones..add(widgetTemp)
              ..add(Divider());
   });
   return opciones;
    /* return [
      ListTile(title: Text("Hola mundo1")),
      ListTile(title: Text("Hola mundo3")),
      ListTile(title: Text("Hola mundo2"))
    ];*/
  }
}