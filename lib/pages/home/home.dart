import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tajiryol_collector/app_settings.dart';
import 'tabs/tab1.dart';
import 'tabs/tab2.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xffeeeeee),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            centerTitle: false,
            title: Text(
              "Tajiryol Toplaýjy",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                  icon: Icon(Icons.logout, color: Colors.black54),
                  onPressed: () {}),
            ],
            bottom: TabBar(
              labelPadding: EdgeInsets.all(10),
              labelColor: Theme.of(context).primaryColor,
              labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              unselectedLabelColor: Colors.black.withOpacity(0.5),
              tabs: [
                Text('Sargalanlar'),
                Text('Kabul edilenler'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Tab1(size: size),
            Tab2(size: size),
          ],
        ),
        // CustomScrollView(
        //   slivers: [
        //     // PreferredSize(
        //   preferredSize: Size.fromHeight(100),
        //   child: AppBar(
        //     centerTitle: true,
        //     title: Text(
        //       "Işleriň sanawy".toUpperCase(),
        //       style: appTitle,
        //     ),
        //     bottom: TabBar(
        //       labelPadding: EdgeInsets.all(10),
        //       unselectedLabelColor: Colors.black.withOpacity(0.4),
        //       unselectedLabelStyle: unselectedTabText,
        //       tabs: [
        //         Text('Sargalanlar', style: selectedTabText),
        //         Text('Kabul edilenler', style: selectedTabText),
        //       ],
        //     ),
        //   ),
        // ),
        // SliverAppBar(
        //   expandedHeight: 110.0,
        //   floating: true,
        //   pinned: true,
        //   // snap: true,
        //   title: Container(
        //     height: 50,
        //     color: Colors.yellow,
        //     child: Center(
        //       child: Text('AppBar'),
        //     ),
        //   ),
        // ),
        // SliverList(
        //   // Use a delegate to build items as they're scrolled on screen.
        //   delegate: SliverChildBuilderDelegate(
        //     // The builder function returns a ListTile with a title that
        //     // displays the index of the current item.
        //     (context, index) => ListTile(title: Text('Item #$index')),
        //     // Builds 1000 ListTiles
        //     childCount: 1000,
        //   ),
        // ),
        //
        // ],
        // ),
      ),
    );
  }
}
