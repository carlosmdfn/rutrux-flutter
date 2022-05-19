import 'package:flutter/material.dart';
import 'package:rutrux_app/widget/customDropDown.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SlidingUpPanel(
        renderPanelSheet: false,
        panel: _floatingPanel(),
        collapsed: _floatingCollapsed(),
        body: _body(),
      ),
    );
  }

  Widget _floatingCollapsed() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
        ),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                ),
              ],
            ),
          ],
        ));
  }

  Widget _floatingPanel() {
    List<String> items = ['carro', 'pastel', 'bubu', 'Chano', 'What'];
    String? _select;
    String _vista2 = "Seleccionar Linea";
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          boxShadow: [
            BoxShadow(
              blurRadius: 20.0,
              color: Colors.grey,
            ),
          ]),
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Column(
        children: [
          Container(
            child: CustomDropdownButton2(
              hint: "Seleccionar Empresa",
              dropdownItems: items,
              value: _select,
              onChanged: (v) {
                setState(() {
                  _select = v;
                });
              },
            ),
            margin: EdgeInsets.fromLTRB(0, 35, 0, 0),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomDropdownButton2(
                hint: "Seleccionar Linea",
                dropdownItems: items,
                value: _select,
                onChanged: (v) {
                  setState(() {
                    _select = v;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 76, 7, 230)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Text(
                'Buscar Ruta',
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget button(IconData icon) {
    return FloatingActionButton(
      onPressed: () => {},
      materialTapTargetSize: MaterialTapTargetSize.padded,
      child: Icon(
        icon,
        size: 25,
        color: Color.fromARGB(255, 76, 7, 230),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _body() {
    var lat = 123.0;
    var long = 123.0;
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(40.441589, -80.010948),
          zoom: 13,
          maxZoom: 15,
        ),
        layers: [
          TileLayerOptions(
              urlTemplate:
                  "https://maps.wikimedia.org/osm-intl/{z}/{x}/{y}.png"),
          MarkerLayerOptions(markers: [
            Marker(
                point: LatLng(40.441753, -80.011476),
                builder: (ctx) => Icon(
                      Icons.location_on,
                      color: Colors.blue,
                      size: 48.0,
                    ),
                height: 60),
          ]),
        ],
      ),
      floatingActionButton: (button(Icons.menu_sharp)),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
    );
  }
}
