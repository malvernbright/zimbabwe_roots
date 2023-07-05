import 'package:flutter/material.dart';
import 'package:zimbabwe_roots/widgets/menu_items.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key, this.currentItem, this.onSelected});

  final CustomMenuItem? currentItem;
  final ValueChanged<CustomMenuItem>? onSelected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: CustomMenuItems.all.map(buildMenuItem).toList(),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(CustomMenuItem menuItem) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selectedColor: Colors.black26,
          selected: currentItem == menuItem,
          minLeadingWidth: 20,
          leading: Icon(menuItem.icon),
          title: Text(
            menuItem.title,
            style: const TextStyle(color: Colors.white),
          ),
          onTap: () => onSelected!(menuItem),
        ),
      );
}
