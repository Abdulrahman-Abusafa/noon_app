import 'package:flutter/material.dart';
import 'package:noon_app/moules/search_data.dart';
import 'package:noon_app/routes.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SearchData.getData('https://noon_api.surge.sh/appliances-deals'),
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
          height: 440,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: data.hits.length,
            itemBuilder: (BuildContext context, int index) {
              Hits hit = data.hits[index];
              return GestureDetector(
                onTap: () {
                  Routes.sailor.navigate('/Pages');
                },
                child: Container(
                  width: 200,
                  height: 300,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              'https://k.nooncdn.com/t_desktop-pdp-v1/${hit.imageKey}.jpg',
                              fit: BoxFit.cover,
                              width: 200,
                              height: 300,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  color: Colors.red[900],
                                  child: Text(
                                    hit?.catalogTag ?? "",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(hit?.name ?? ""),
                        ),
                      ),
                    ],
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
