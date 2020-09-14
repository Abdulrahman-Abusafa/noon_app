import 'package:flutter/material.dart';

Widget widget1() {
  return Image.network(
      'https://k.nooncdn.com/cms/pages/20200824/e872fd24ccfc92150f08473c4a83c2e5/en_free-delivery-PDP.png');
}

Widget imageContainer() {
  return Container(
    color: Colors.white,
    width: double.infinity,
    height: 1000,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            child: Text(
              'Flat 150 off use code:GET150',
              style: TextStyle(color: Colors.white),
            ),
            decoration: BoxDecoration(
                color: Colors.red[700], borderRadius: BorderRadius.circular(3)),
            height: 20,
            width: 130,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8.0),
            child: CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: Icon(Icons.access_alarm)),
          ),
        ]),
        Transform.translate(
          offset: Offset(0, -90),
          child: Container(
            width: double.infinity,
            height: 500,
            child: Image.network(
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone11-purple-select-2019?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1566960958082',
              fit: BoxFit.contain,
            ),
          ),
        ),
        Center(
            child: Transform.translate(
                offset: Offset(0, -90), child: widgetcircls())),
        Transform.translate(
            offset: Offset(0, -100),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Apple',
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
            )),
        Transform.translate(
            offset: Offset(0, -100),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'iPhone 11 With FaceTime Purple 128GB 4G LTE - KSA Specs',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            )),
        Transform.translate(
            offset: Offset(0, -100),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10),
              child: Text(
                'Model Number: MWM52AH/A',
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
            )),
        Transform.translate(
          offset: Offset(0, -90),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        child: Center(
                          child: Text(
                            '4.5',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        width: 30.0,
                        height: 16.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.0),
                          color: const Color(0xfff3a436),
                        ),
                      ),
                      Text(
                        '(7220 reviews)',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Product Detail',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(20, 0),
                child: Container(
                  height: 20,
                  child: Image.network(
                    'https://k.nooncdn.com/s/app/2019/noon-schmatalog/189cf69445f5bc598bf849108bb7d3edd597b252/static/images/noon-express-en.png',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  child: Icon(
                    Icons.gamepad,
                    color: Colors.grey,
                  ),
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(44.0, 44.0)),
                    color: const Color(0xffffffff),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: Offset(0, -90),
          child: Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'was:',
                        style: TextStyle(color: Colors.grey[350], fontSize: 13),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'SAR 3249',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'now:',
                        style: TextStyle(color: Colors.grey[350], fontSize: 13),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Text(
                          'SAR 2983.00',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        '(Inclusive of VAT)',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Saving:',
                        style: TextStyle(color: Colors.grey[350], fontSize: 13),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'SAR 266',
                          style:
                              TextStyle(color: Colors.grey[800], fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(0, -80),
          child: InkWell(
            onTap: () {},
            child: Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0, right: 8),
                    child: Container(
                      color: Colors.indigo,
                      height: 50,
                      child: Center(
                        child: Text(
                          'ADD TO CART',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.grey,
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Text(
            'ADD TO CART',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          height: 50,
          width: 50,
        ),
      ],
    ),
  );
}

Widget widgetcircls() {
  return Container(
      height: 80,
      width: 80,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 5,
              backgroundColor: Colors.grey,
            ),
            Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(44.0, 44.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
            Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(44.0, 44.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
            Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(44.0, 44.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
            Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(44.0, 44.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
            Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(44.0, 44.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ],
        ),
      ));
}
