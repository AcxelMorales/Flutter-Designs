import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final _estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final _estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            this._crearImagen(),
            this._crearDesc(),
            this._crearIconos(),
            this._crearTexto(),
            this._crearTexto(),
            this._crearTexto(),
            this._crearBoton(context),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return FadeInImage(
      image: NetworkImage(
          'https://stmed.net/sites/default/files/chichen-itza-wallpapers-28506-6869693.jpg'),
      placeholder: AssetImage('assets/img/loading.gif'),
      fadeInDuration: Duration(milliseconds: 200),
      fit: BoxFit.cover,
    );
  }

  Widget _crearDesc() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Chichen Itza',
                    style: this._estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Yucatan, México',
                    style: this._estiloSubTitulo,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearIconos() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        this._accion(Icons.call, 'CALL'),
        this._accion(Icons.near_me, 'ROUTE'),
        this._accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String text) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.blueAccent,
            size: 40,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.blueAccent, fontSize: 15),
          )
        ],
      ),
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Anim et et qui exercitation. Eu ut mollit amet ex esse sint cillum aute. In commodo amet deserunt minim anim elit tempor ex. Sunt ut quis id et aute cillum incididunt consequat est nostrud. Laboris reprehenderit ullamco ut elit do. Duis ut do enim nisi. Duis minim do exercitation cupidatat consectetur nulla consectetur.',
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _crearBoton(BuildContext context) {
    return RaisedButton(
      child: Icon(Icons.arrow_forward),
      color: Colors.blueAccent,
      textColor: Colors.white,
      shape: StadiumBorder(),
      onPressed: () => Navigator.pushNamed(context, 'scroll')
    );
  }
}
