import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItems>[
  MenuItems(
      title: 'Counter RiverPod',
      subTitle: 'Contador con RiverPod',
      link: '/counter',
      icon: Icons.countertops_outlined),
  MenuItems(
      title: 'Botones',
      subTitle: 'Varios Botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItems(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItems(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItems(
      title: 'Snackbars and Dialog',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItems(
      title: 'Animated Container',
      subTitle: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItems(
      title: 'UI Controls + Tiles',
      subTitle: 'Una serie de controles en Flutter',
      link: '/ui_controls',
      icon: Icons.car_rental_outlined),
  MenuItems(
      title: 'Introduccion to aplication',
      subTitle: 'Introducción a la Aplicación',
      link: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItems(
      title: 'InifiniteScroll and Pull',
      subTitle: 'Lista infinita y refrescar',
      link: '/infinite',
      icon: Icons.list_alt_rounded),
  MenuItems(
      title: 'Changed Theme',
      subTitle: 'Cambiar Tema',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
