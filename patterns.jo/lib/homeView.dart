import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return ListView(
            children: <Widget>[
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                runSpacing: 10.0,
                spacing: 10.0,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                        Image.asset(
                          "aa.png",
                          height: 100.0,
                          width: 150.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Patterns',
                            style: GoogleFonts.quicksand(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 60.0,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Comfotrable texture for less",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Container(child: Row(children: <Widget>[])),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            bottom: 10.0,
                            left: 20.0,
                            right: 20.0,
                          ),
                          child: Text(
                            "Patterns an online store based in Amman-Jordan ... With Patterns ... ...",
                            textAlign: TextAlign.center,
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 20.0,
                                      height: 1.8,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextButton(
                              onPressed: () {
                                //getMap();
                                // addFieldsToDb();
                                // getKeysValuesFromMap(themap);
                                // js.context.callMethod("open", [
                                //   "https://play.google.com/store/apps/details?id=com.stevapps.venda"
                                // ]);
                              },
                              child: Image.asset(
                                "playstore.png",
                                height: 100.0,
                                width: 170.0,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                //  getMap();
                                // getKeysValuesFromMap(themap);
                                // addFieldsToDb();

                                _scaffoldKey.currentState!.showSnackBar(
                                    new SnackBar(
                                        content: new Text("Coming Soon")));
                              },
                              child: Image.asset(
                                "appstore.png",
                                height: 100.0,
                                width: 150.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              _buildFeatureOne(),
              _buildFeatureTwo(orientation),
              _buildFeatureThree(),
              _buildFeatureFour(orientation),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    Image.asset(
                      "aa.png",
                      height: 100.0,
                      width: 150.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Patterns',
                        style: GoogleFonts.quicksand(
                          textStyle:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 60.0,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Comfotrable texture for less",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.grey),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {
                            // js.context.callMethod("open", [
                            //   "https://play.google.com/store/apps/details?id=com.stevapps.venda"
                            // ]);
                          },
                          child: Image.asset(
                            "playstore.png",
                            height: 100.0,
                            width: 170.0,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            _scaffoldKey.currentState!.showSnackBar(
                                new SnackBar(content: new Text("Coming Soon")));
                          },
                          child: Image.asset(
                            "appstore.png",
                            height: 100.0,
                            width: 150.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "2021 ",
//                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Icon(
                            Icons.copyright,
                            size: 16.0,
                          ),
                          Text(
                            " Patterns",
//                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Terms",
//                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Privacy",
//                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildFeatureOne() {
    return Container(
      color: Colors.yellow,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        runSpacing: 10.0,
        spacing: 10.0,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "ENABLE LOCATION",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 15.0, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Discover businesses nearby",
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Find it from the nearest shop around you and get the products and services you need in a snapshot. Venda always shows you the way",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 18.0,
                            height: 1.8,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'homescreenshot.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.height * 0.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureTwo(Orientation orientation) {
    return orientation == Orientation.portrait
        ? Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            runSpacing: 10.0,
            spacing: 10.0,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.height * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "BUY OR SELL",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 15.0, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Get more customers",
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Become a vendor and boost your business. Earn from selling products and services. From services to listings and offers, give customers reasons to always choose you",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 18.0,
                                    height: 1.8,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'profilescreenshot.png',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
            ],
          )
        : Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            runSpacing: 10.0,
            spacing: 10.0,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'profilescreenshot.png',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.height * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "BUY OR SELL",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 15.0, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Get more customers",
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Become a vendor and boost your business. Earn from selling products and services. From services to listings and offers, give customers reasons to always choose you",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 18.0,
                                    height: 1.8,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
  }

  Widget _buildFeatureThree() {
    return Container(
      color: Colors.yellow,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        runSpacing: 10.0,
        spacing: 10.0,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "FEEDBACK",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 15.0, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Review and rate",
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Review or rate our products and let others know our reputation. It always builds trust and honesty",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 18.0,
                            height: 1.8,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'reviewscreenshot.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.height * 0.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureFour(Orientation orientation) {
    return orientation == Orientation.portrait
        ? Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            runSpacing: 10.0,
            spacing: 10.0,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.height * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "QUICK RESPONSE",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 15.0, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "More ways to reach Patterns team",
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "With the platforms, you love through WhatsApp and Calls. Patterns lets you contact our delivery team easily and quickly",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 18.0,
                                    height: 1.8,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'contactscreenshot.png',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
            ],
          )
        : Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            runSpacing: 10.0,
            spacing: 10.0,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'contactscreenshot.png',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.height * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "QUICK RESPONSE",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 15.0, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "More ways to reach Patterns team",
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "With the platforms, you love through WhatsApp and Calls. Patterns lets you contact our delivery team easily and quickly",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 18.0,
                                    height: 1.8,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}
