import 'package:flutter/material.dart';
import 'package:m_book/model/modelItem.dart';

Widget Itemss(BuildContext context, ModelBook item) {
  return Container(
    decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
        offset: const Offset(0, 5),
        color: Theme.of(context).primaryColor.withOpacity(.2),
        spreadRadius: 2,
        blurRadius: 5,
      )
    ]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          // onTap: () {
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => CatalogPage()));
          // },
          child: Container(
              padding: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: item.color, shape: BoxShape.circle),
              child: Image.asset(item.image)),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          item.text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    ),
  );
}
