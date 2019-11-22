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
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2()
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

  Widget _cardTipo2(){
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://fondosdepantalla1080.files.wordpress.com/2014/08/3840x2160.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          /*Image(
            image: NetworkImage('https://fondosdepantalla1080.files.wordpress.com/2014/08/3840x2160.jpg'),
          ),*/
          Container(
            padding: EdgeInsets.all(10.0),
              child: Text("No tengo idea que poner"))
        ],
      ),
    );
  }
}
