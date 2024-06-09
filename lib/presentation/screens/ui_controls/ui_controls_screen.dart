import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlViewScreen(),
    );
  }
}

class _UiControlViewScreen extends StatefulWidget {
  const _UiControlViewScreen({super.key});

  @override
  State<_UiControlViewScreen> createState() => __UiControlViewScreenState();
}

enum Transportation { car, plane, boat, submarine }

class __UiControlViewScreenState extends State<_UiControlViewScreen> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;

  bool wantsBreakfast = false;
  bool wantsLaunch = true;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
        ),
        ExpansionTile(
          leading: const Icon(Icons.emoji_transportation_rounded),
          title: const Text('Vehiculo de transporte'),
          children: [
            RadioListTile(
              title: const Text('Auto'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.car;
                });
              },
            ),
            RadioListTile(
              title: const Text('Barco'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.boat;
                });
              },
            ),
            RadioListTile(
              title: const Text('Avion'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.plane;
                });
              },
            ),
            RadioListTile(
              title: const Text('Submarino'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.submarine;
                });
              },
            )
          ],
        ),
        CheckboxListTile(
          title: const Text('Desayuno ?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Almuerzo ?'),
          value: wantsLaunch,
          onChanged: (value) => setState(() {
            wantsLaunch = !wantsLaunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Cena ?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        )
      ],
    );
  }
}
