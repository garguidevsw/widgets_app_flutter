import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_contros_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation seletedTransportation = Transportation.car;

  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloper,
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Vehículo de transporte'),
          subtitle: Text('$seletedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar en automovil'),
              value: Transportation.car,
              groupValue: seletedTransportation,
              onChanged: (value) => setState(
                () {
                  seletedTransportation = Transportation.car;
                },
              ),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Viajar en avión'),
              value: Transportation.plane,
              groupValue: seletedTransportation,
              onChanged: (value) => setState(
                () {
                  seletedTransportation = Transportation.plane;
                },
              ),
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Viajar en bote'),
              value: Transportation.boat,
              groupValue: seletedTransportation,
              onChanged: (value) => setState(
                () {
                  seletedTransportation = Transportation.boat;
                },
              ),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Viajar en submarino'),
              value: Transportation.submarine,
              groupValue: seletedTransportation,
              onChanged: (value) => setState(
                () {
                  seletedTransportation = Transportation.submarine;
                },
              ),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('¿Con desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('¿Con comida?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('¿Con cens?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
