import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:noon_app/products_list_3.dart';
import 'package:noon_app/products_list_4.dart';
import 'package:noon_app/routes.dart';
import 'package:noon_app/views/products_list_2.dart';

void main() {
  Routes.createRoutes();

  runApp(MyApp());
}

List<String> productsList = [
  "appliances-deals",
  "at-top-picks-frag-ae",
  "at-top-picks-watches-ae",
  "athletic-17471",
  "baby-healthcare-ae",
  "bestselling-automotive",
  "build-your-own-gym",
  "games-puzzles",
  "handbags-34070",
  "health-measures-ae",
  "mobiles-promotion",
  "musical-instruments-24670",
  "weekend-10-sep-ae",
  "work-from-home-2020",
  "top_ea_ae"
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.sailor.generator(),
      navigatorKey: Routes.sailor.navigatorKey,
      home: ProductsPage(),
    );
  }
}

class ProductsPage extends StatefulWidget {
  ProductsPage({Key key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SvgPicture.network(
            'https://k.nooncdn.com/s/app/2019/noon-bigalog/d68060b77d9a014e6df090aa64841dde01a57bfb/static/images/noon_logo_black_english.svg'),
      ),
      body: ListView(
        children: [
          // ProductsListView2(
          //   topic: 'mobiles-promotion',
          // ),
          CarouselSlider(
            options: CarouselOptions(
              height: 100.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
            ),
            items: [
              'https://k.nooncdn.com/cms/pages/20200909/88199d166b81a4d2b6a4db5eac9a522d/en_banner-01-ksa.jpg',
              'https://k.nooncdn.com/cms/pages/20200906/fd8b1c483d4b44907817a22f1a6e2499/en_slider-01-ksa.gif',
              'https://k.nooncdn.com/cms/pages/20200910/1bbacdff6fa35c19e9e2c305d47a82c7/en_slider-01-ksa.gif',
              'https://k.nooncdn.com/cms/pages/20200909/e7b1594f737341b03d53d07d90777307/en_slider-01.jpg',
              'https://k.nooncdn.com/cms/pages/20200910/db72bf278a18252cab7661942f7dc356/en_banner-01.png',
              'https://k.nooncdn.com/cms/pages/20200902/d81e3dac0527cc808ed5f7196d4a11a2/en_slider-01.jpg',
              'https://k.nooncdn.com/cms/pages/20200803/89e335bb1c91652cc390914d59f8c5ea/en_slider-01.jpg',
            ].map((src) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Image.network(
                      src,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Container(height: 150, child: ProductsList4()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 90,
              child: Image.network(
                'https://k.nooncdn.com/cms/pages/20200810/c30fc07cb509c0e4412368d92a4e4b36/en_free-delivery-thin.gif',
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),
          for (String url in productsList)
            ConstrainedBox(
              constraints: BoxConstraints(minHeight: 400),
              child: ProductsListView3(
                topic: url,
              ),
            ),
          // ProductsListView3(
          //   topic: 'health-measures-ae',
          // ),
          // ProductsListView3(
          //   topic: 'bestselling-automotive',
          // ),
          // ProductsListView3(
          //   topic: 'health-measures-ae',
          // ),
          // ProductsListView3(
          //   topic: 'mobiles-promotion',
          // ),
          ProductsListView2(
            topic: 'games-puzzles',
          ),
          // ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: [],
          // )
        ],
      ),
    );
  }
}

//    "${hits['price]}"
