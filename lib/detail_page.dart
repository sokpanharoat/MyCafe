import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  var index;

  DetailPage(index) {
    this.index = index;
  }
  @override
  _DetailPageState createState() => _DetailPageState(index);
}

class _DetailPageState extends State<DetailPage> {
  var index;
  var m_about =
      'A cappuccino is an Italian coffee drink that is traditionally prepared with equal parts double espresso, steamed milk, and steamed milk foam on top. Cream may be used instead of milk. It is typically smaller in volume than a latte, and has a thicker layer of microfoam. Espresso is typically made with a dark roasted coffee and ground finely.';

  _DetailPageState(index) {
    this.index = index;
  }

  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Detail Page'),
        // ),
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 30),
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'CAPUCINO',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Recipe',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  Hero(
                    tag: index,
                    child: ClipPath(
                      clipper: BackgroupClipper(),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                              Colors.orange,
                              Colors.deepOrangeAccent
                            ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                        child: Text(
                          "About :",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                        child: Text(
                          m_about,
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                        child: Text(
                          "Ingredients :",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                        child: Text(
                          "For the Espresso\n- 2 tablespoons coffee\n- 4 ounces water\n\nFor the Foamed Milk\n- 4 ounces milk",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      ClipPath(
                        clipper: BackgroupClipper(),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                Color(hexColor('#02aab0')),
                                Color(hexColor('#00cdac')),
                              ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, top: 20),
                                  child: Text(
                                    "Step to Make It :",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                Card(
                                  child: const ListTile(
                                    leading: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange),
                                    ),
                                    title: Text('Gather the ingredients'),
                                  ),
                                ),
                                Card(
                                  child: const ListTile(
                                    leading: Text(
                                      "2",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange),
                                    ),
                                    title: Text(
                                        'Place the water into the boiler of your espresso machine.'),
                                  ),
                                ),
                                Card(
                                  child: const ListTile(
                                    leading: Text(
                                      "3",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange),
                                    ),
                                    title: Text(
                                        'Place the 2 tablespoons (2 shots) of ground espresso into the portafilter.'),
                                  ),
                                ),
                                Card(
                                  child: const ListTile(
                                    leading: Text(
                                      "4",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange),
                                    ),
                                    title: Text(
                                        'Tamp (press) the coffee down using a tamper. Do this two to three times to make sure the grounds are packed tightly.'),
                                  ),
                                ),
                                Card(
                                  child: const ListTile(
                                    leading: Text(
                                      "5",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange),
                                    ),
                                    title: Text(
                                        "Place the portafilter into your espresso machine's group head and lock in place by turning it to the right."),
                                  ),
                                ),
                                Card(
                                  child: const ListTile(
                                    leading: Text(
                                      "6",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange),
                                    ),
                                    title: Text(
                                        "Place a demitasse cup or the glass carafe that came with your espresso machine under the group head and pull the shot for 23 to 30 seconds, or until 2 ounces of espresso is yielded. Typically, there is a lever, switch, or button to start this process."),
                                  ),
                                ),
                                Card(
                                  child: const ListTile(
                                    leading: Text(
                                      "7",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange),
                                    ),
                                    title: Text(
                                        "Once the shot is pulled, foam the milk."),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class BackgroupClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = 30.0;
    var path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, roundnessFactor);
    path.quadraticBezierTo(size.width - roundnessFactor, 0, size.height / 3, 0);
    path.lineTo(size.width - roundnessFactor, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
