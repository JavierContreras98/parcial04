import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _PosicionInicial = CameraPosition(target: LatLng(13.667554933393438, -89.09969785186831),zoom: 9);

  Set<Marker> _marcador ={};

  void _onMapCreated(GoogleMapController controller){
    
    setState(() {
      _marcador.add(
        Marker(
          markerId: MarkerId('id-01'), 
          position: LatLng(13.720, -89.360),
          infoWindow: InfoWindow(
            title: 'Encomiendas SV, Sucursal Lourdes, La Libertad',
            snippet: 'Sucursal de Encomiendas SV ubicada en Lourdes, en La libertad'
          )
        ),
      );

      _marcador.add(
        Marker(
          markerId: MarkerId('id-02'), 
          position: LatLng(13.578, -89.177),
          infoWindow: InfoWindow(
            title: 'Encomiendas SV, Sucursal Merliot, La Libertad',
            snippet: 'Sucursal de Encomiendas SV ubicada en Merliot , en La Libertad'
          )
        ),
      );

      _marcador.add(
        Marker(
          markerId: MarkerId('id-03'), 
          position: LatLng(13.670, -89.285),
          infoWindow: InfoWindow(
            title: 'Encomiendas SV, Sucursal Santa Tecla, La Libertad',
            snippet: 'Sucursal de Encomiendas SV ubicada en Santa Tecla , en La Libertad'
          )
        ),
      );

      _marcador.add(
        Marker(
          markerId: MarkerId('id-04'), 
          position: LatLng(13.635, -88.780),
          infoWindow: InfoWindow(
            title: 'Encomiendas SV, Sucursal San Vicente, San Vicente',
            snippet: 'Sucursal de Encomiendas SV ubicada en San Vicente , en San Vicente'
          )
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GoogleMap(onMapCreated: _onMapCreated,

        markers: _marcador,

        initialCameraPosition: _PosicionInicial,),
    );
  }
}