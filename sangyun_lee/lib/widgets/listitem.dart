import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String _title;
  final String _description;
  final IconData _iconData;
  final Color _iconColor;
  const ListItem(
      {super.key,
      required String title,
      required String description,
      required IconData iconData,
      required Color iconColor})
      : _title = title,
        _description = description,
        _iconData = iconData,
        _iconColor = iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.blueAccent.withOpacity(0.5),
              blurRadius: 20.0,
              spreadRadius: 0.5,
            )
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration:
                BoxDecoration(color: _iconColor, shape: BoxShape.circle),
            width: 50,
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              _iconData,
              color: Colors.white,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 20),
                ),
                Text(
                  _description,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.chevron_right,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
