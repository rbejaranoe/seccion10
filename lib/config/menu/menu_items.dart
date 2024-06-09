import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title, required this.subTitle, required this.link, required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicator',
      subTitle: 'Generales y Controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y Dialogos',
      subTitle: 'Indicadores en Pantalla',
      link: '/snackbars',
      icon: Icons.info_outline_rounded),
  MenuItem(
      title: 'Animated Container',
      subTitle: 'Stateful Widget Animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank),
  MenuItem(
      title: 'Controles UI',
      subTitle: 'Una seria de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.card_membership),
];
