import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class PageSpaceWidget extends StatelessWidget {
  const PageSpaceWidget({super.key, required this.spaceText});

  final String spaceText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .3,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Builder(builder: (context) {
              return CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () => ZoomDrawer.of(context)!.toggle(),
                  icon: const Icon(Icons.menu),
                  color: Colors.black,
                ),
              );
            }),
          ),
          Text(
            spaceText,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: Color.fromARGB(255, 126, 5, 5),
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
