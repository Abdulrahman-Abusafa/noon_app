import 'package:flutter/cupertino.dart';

class ProductsList4 extends StatelessWidget {
  const ProductsList4({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          // width: 100,
          // height: 100,
          child: Image.network(
            'https://k.nooncdn.com/cms/pages/20200328/b45d91889efe7dfa6788b75b43bd26c3/en_cat-module-02.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          // width: 100,
          // height: 100,
          child: Image.network(
            'https://k.nooncdn.com/cms/pages/20200507/61043ab74cd99ccfdea73e35a13bcdae/en_cat-module-01.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          // width: 100,
          // height: 100,
          child: Image.network(
            'https://k.nooncdn.com/cms/pages/20200328/b45d91889efe7dfa6788b75b43bd26c3/en_cat-module-10.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          // width: 100,
          // height: 100,
          child: Image.network(
            'https://k.nooncdn.com/cms/pages/20200328/b45d91889efe7dfa6788b75b43bd26c3/en_cat-module-05.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          // width: 100,
          // height: 100,
          child: Image.network(
            'https://k.nooncdn.com/cms/pages/20200328/b45d91889efe7dfa6788b75b43bd26c3/en_cat-module-03.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          // width: 100,
          // height: 100,
          child: Image.network(
            'https://k.nooncdn.com/cms/pages/20200328/b45d91889efe7dfa6788b75b43bd26c3/en_cat-module-11.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          // width: 100,
          // height: 100,
          child: Image.network(
            'https://k.nooncdn.com/cms/pages/20200827/1c95a1e9175a6612499b0dff7b4a0fa8/en_cat-module-01.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          // width: 100,
          // height: 100,
          child: Image.network(
            'https://k.nooncdn.com/cms/pages/20200414/c1e6b0eab70af60fc0b022984d56f016/en_mb-cat-module-13.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          // width: 100,
          // height: 100,
          child: Image.network(
            'https://k.nooncdn.com/cms/pages/20200909/8244db618cee6c5ef29cf61ad376452b/en_category-beauty.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          // width: 100,
          // height: 100,
          child: Image.network(
            'https://k.nooncdn.com/cms/pages/20200414/c1e6b0eab70af60fc0b022984d56f016/en_mb-cat-module-12.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          // width: 100,
          // height: 100,
          child: Image.network(
            'https://k.nooncdn.com/cms/pages/20200328/b45d91889efe7dfa6788b75b43bd26c3/en_cat-module-09.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          // width: 100,
          // height: 100,
          child: Image.network(
            'https://k.nooncdn.com/cms/pages/20200825/08b17504609ac3f5439b33f8ea7f411c/en_category-beauty-boutique.gif',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
