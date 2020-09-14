import 'package:flutter/material.dart';
import 'package:noon_app/moules/search_data.dart';
import 'package:noon_app/routes.dart';

class ProductsListView2 extends StatelessWidget {
  const ProductsListView2({
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
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: data.hits.length,
            itemBuilder: (BuildContext context, int index) {
              Hits hit = data.hits[index];
              return GestureDetector(
                onTap: () {
                  Routes.sailor.navigate('/Pages');
                },
                child: CircleAvatar(
                  radius: radiusCA1,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: radiusCA2,
                    backgroundImage: NetworkImage(
                      'https://k.nooncdn.com/t_desktop-pdp-v1/${hit.imageKey}.jpg',
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
