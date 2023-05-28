import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Counter Screen',
    subTitle: 'Contador con Riverpod',
    link: '/counter',
    icon: Icons.list_alt_rounded,
  ),
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'ProgressIndicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars y Dialogs',
    subTitle: 'Dialogos en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated Container',
    subTitle: 'Widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItem(
    title: 'UI Control + Tiles',
    subTitle: 'Controles en Flutter',
    link: '/ui-control',
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItem(
    title: 'Tutorial',
    subTitle: 'Introducción a la App',
    link: '/tutorial',
    icon: Icons.accessible_forward,
  ),
  MenuItem(
    title: 'InfiniteScroll',
    subTitle: 'Listas infinitas y pull refresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),
  MenuItem(
    title: 'Theme Changer',
    subTitle: 'Dark or Ligth Mode',
    link: '/theme-changer',
    icon: Icons.color_lens_outlined,
  ),
];
