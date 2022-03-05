import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        // Cerrar el dialogo cuando se da click en la sombra
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Contenido de la alerta'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(size: 100),
              ],
            ),
            actions: [
              TextButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close),
                  label: Text('Cerrar')),
              TextButton(
                  child: const Text('Cancelar'),
                  onPressed: () => Navigator.pop(context))
            ],
          );
        });
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Contenido de la alerta'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(size: 100),
              ],
            ),
            actions: [
              TextButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close),
                  label: Text('Cerrar')),
              TextButton(
                  child: const Text('Cancelar', style: TextStyle( color: Colors.red),),
                  onPressed: () => Navigator.pop(context))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Mostrar Alerta Android',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              onPressed: () => displayDialogAndroid(context)),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: Text(
                  'Mostrar Alerta IOS',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              onPressed: () => displayDialogIOS(context)),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: Text(
                  'Mostrar Alerta device',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context)),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            // regresa a la pantalla anterior
            Navigator.pop(context);
          }),
    );
  }
}
