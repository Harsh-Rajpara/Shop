import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/constants.dart';

import 'components/categories.dart';
import 'components/new_arrival_products.dart';
import 'components/popular_products.dart';
import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        title: new Text('HR Shop'),
        backgroundColor: Colors.lightBlue,
        actions: [
        IconButton(onPressed: () {},
            icon:SvgPicture.asset("assets/icons/Notification.svg"),
        ),
      ],


      ),

      drawer: new Drawer(
        child: ListView(
          children: [

            new UserAccountsDrawerHeader(accountName:new Text('Harsh'), accountEmail:new Text('hrajpara@gmail.com'),
              currentAccountPicture: new CircleAvatar(backgroundColor: Colors.black26,child: new Text('H'),),
              otherAccountsPictures: [
                new CircleAvatar(backgroundColor: Colors.black26,child: new Text('M'),),
              ],
            ),
            new ListTile(title: new Text('Home'), trailing: new Icon(Icons.home_max_outlined),),
            new ListTile(title: new Text('Your Orders'), trailing: new Icon(Icons.favorite_border),),
            new ListTile(title: new Text('Balance'), trailing: new Icon(Icons.balance_outlined),),
            new ListTile(title: new Text('Contact Us'), trailing: new Icon(Icons.contact_phone_outlined),),
            new ListTile(title: new Text('settings'), trailing: new Icon(Icons.settings_accessibility_outlined),),


          ],
        ),
      ),


      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Buy Your Iteams",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text(
              "best Outfits for you",
              style: TextStyle(fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            const NewArrivalProducts(),
            const PopularProducts(),
          ],
        ),
      ),
    );
  }
}
