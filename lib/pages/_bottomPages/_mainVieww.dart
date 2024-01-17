import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m_book/pages/_bottomPages/_catalog.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Column(
              children: [
                const SizedBox(
                  height: 45,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'M_BooK ',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Xush Kelibsiz ',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white54, fontSize: 20),
                  ),
                  trailing: CircleAvatar(
                      radius: 40,
                      // backgroundImage: AssetImage('assets/logo.JPG'),
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.person))),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 70),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100))),
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  itemDashBoard(
                      'C++', CupertinoIcons.book_circle, Colors.green),
                  itemDashBoard('C#', CupertinoIcons.book, Colors.blue),
                  itemDashBoard(
                      'C', CupertinoIcons.book_circle_fill, Colors.grey),
                  itemDashBoard(
                      'Java', CupertinoIcons.book_fill, Colors.yellow),
                  itemDashBoard('Java js', CupertinoIcons.book_circle_fill,
                      Colors.lightBlue),
                  itemDashBoard(
                      'Phton', CupertinoIcons.book_fill, Colors.purpleAccent),
                  itemDashBoard(
                      'Go', CupertinoIcons.add_circled_solid, Colors.red),
                  itemDashBoard(
                      'Dart', CupertinoIcons.book, Colors.lightBlueAccent),
                  itemDashBoard(
                      'Swift', CupertinoIcons.book_circle_fill, Colors.lime),
                  itemDashBoard(
                      'C++', CupertinoIcons.book_circle, Colors.green),
                  itemDashBoard('C#', CupertinoIcons.book, Colors.blue),
                  itemDashBoard(
                      'C', CupertinoIcons.book_circle_fill, Colors.grey),
                  itemDashBoard(
                      'Java', CupertinoIcons.book_fill, Colors.yellow),
                  itemDashBoard('Java js', CupertinoIcons.book_circle_fill,
                      Colors.lightBlue),
                  itemDashBoard(
                      'Phton', CupertinoIcons.book_fill, Colors.purpleAccent),
                  itemDashBoard(
                      'Go', CupertinoIcons.add_circled_solid, Colors.red),
                  itemDashBoard(
                      'Dart', CupertinoIcons.book, Colors.lightBlueAccent),
                  itemDashBoard(
                      'Swift', CupertinoIcons.book_circle_fill, Colors.lime),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  itemDashBoard(String title, IconData iconData, Color background) => Container(
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CatalogPage()));
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration:
                    BoxDecoration(color: background, shape: BoxShape.circle),
                child: Icon(
                  iconData,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
      );
}
