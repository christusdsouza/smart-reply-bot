import 'package:flutter/material.dart';

class CAppBar extends PreferredSize{
  final size;
  final Widget widget;
  final alignCenter;

  CAppBar({
    @required this.widget,
    this.size = 200.0,
    this.alignCenter = true,
  });

  @override
  Size get preferredSize => Size.fromHeight(this.size);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(builder: (context) {
        return IconButton(
            icon: Icon(Icons.menu),
            splashRadius: 0.1,
            iconSize: 27.0,
            alignment: this.size == kToolbarHeight? Alignment.center: Alignment.topLeft,
            onPressed: () => Scaffold.of(context).openDrawer());
      },),
      backgroundColor: Color(0xFF2a728a),
      centerTitle: true,
      toolbarHeight: this.size,
      title: this.widget ?? Placeholder(),
    );
  }
}
