import 'package:flutter/material.dart';
import 'package:noon_app/moules/search_data.dart';
import 'package:noon_app/routes.dart';

class ProductsListView3 extends StatelessWidget {
  const ProductsListView3({
    Key key,
    this.radiusCA1 = 55,
    this.radiusCA2 = 48,
    this.topic = 'appliances-deals',
  }) : super(key: key);

  final double radiusCA1;
  final double radiusCA2;
  final String topic;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SearchData.getData('https://noon_api.surge.sh/$topic'),
      // initialData: InitialData,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return Center(
            child: CircularProgressIndicator(),
          );

        SearchData data = snapshot.data;
        if (data == null)
          return Center(
            child: CircularProgressIndicator(),
          );
        return Container(
          height: 380,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: data.hits.length,
            itemBuilder: (BuildContext context, int index) {
              Hits hit = data.hits[index];
              int percentage = ((hit.salePrice / hit?.price) * 100).floor();
              return GestureDetector(
                  onTap: () {
                    Routes.sailor.navigate('/Pages');
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 0, left: 8, right: 8),
                        child: Container(
                          height: 250,
                          width: 190,
                          child: Stack(
                            children: [
                              Image.network(
                                'https://k.nooncdn.com/t_desktop-pdp-v1/${hit.imageKey}.jpg',
                                width: 190,
                                fit: BoxFit.cover,
                                // height: 100,
                              ),
                              hit.catalogTag != null
                                  ? Container(
                                      color: Colors.red.shade800,
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        hit?.catalogTag ?? "",
                                        style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8, left: 8.0),
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                color: Colors.white,
                                child: Text(
                                  hit?.name ?? '',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 11),
                                ),
                                width: 190,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 8,
                                  ),
                                  getPriceWidget(hit)
                                  // Text("SAR ${hit?.price ?? 0}"),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, bottom: 16),
                                child: Row(
                                  children: [
                                    hit.isBuyable
                                        ? Image.network(
                                            'https://k.nooncdn.com/s/app/2019/noon-bigalog/d68060b77d9a014e6df090aa64841dde01a57bfb/static/images/noon-express-en.png',
                                            width: 80,
                                          )
                                        : Container(),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    percentage > 0
                                        ? Container(
                                            color: Colors.green[100],
                                            padding: EdgeInsets.all(3),
                                            child: Text(
                                              "$percentage% OFF",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 11),
                                            ),
                                          )
                                        : Container()
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ));
            },
          ),
        );
      },
    );
  }

  RichText getPriceWidget(Hits hit) {
    if (hit.salePrice == 0)
      return RichText(
        text: TextSpan(
          text: 'SAR',
          style: TextStyle(
              // fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 13),
          children: [
            TextSpan(
              text: " ${hit?.price} ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 15),
            ),
          ],
        ),
      );

    return RichText(
      text: TextSpan(
        text: 'SAR',
        style: TextStyle(
            // fontWeight: FontWeight.bold,
            color: Colors.grey,
            fontSize: 13),
        children: [
          TextSpan(
            text: " ${hit?.salePrice} ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 15),
          ),
          TextSpan(
            text: "SAR ${hit?.price ?? 0}",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.lineThrough,
                color: Colors.grey,
                fontSize: 10),
          )
        ],
      ),
    );
  }
}
