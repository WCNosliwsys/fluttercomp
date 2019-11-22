import 'package:flutter/material.dart';
class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body:ListView(
        children: <Widget>[
          _cardTipo1()
        ],
      ),
    );
  }
  Widget _cardTipo1(){
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album,color: Colors.blue,),
            title: Text('Soy el titulo de la tarjeta'),
            subtitle: Text('Aqui estamos con la descripción de esta primera tarjeta hecha en flutter de un curso online'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
            ],
          )
        ],
      ),
    );
  }
}
