import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SinglePlayer extends StatefulWidget {
  @override
  _SinglePlayerState createState() => _SinglePlayerState();
}

class _SinglePlayerState extends State<SinglePlayer> {
  double _value = 10;
  double _lowerValue = 0.0;
  double _upperValue = 100.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffDFEAFE), Color(0xffECF5FC)]),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 45.0,
                      width: 45.0,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            size: 18,
                            color: Color(0xff97A4B7),
                          )),
                      decoration: BoxDecoration(
                        color: Color(0xffE5F1FD),
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff97A4B7),
                              offset: new Offset(8.0, 10.0),
                              blurRadius: 25.0)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        "PLAYING NOW",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff97A4B7)),
                      ),
                    ),
                    Container(
                      height: 45.0,
                      width: 45.0,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            size: 18.0,
                            color: Color(0xff97A4B7),
                          )),
                      decoration: BoxDecoration(
                          color: Color(0xffE5F1FD),
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff97A4B7),
                                offset: new Offset(8.0, 10.0),
                                blurRadius: 25.0)
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  padding: EdgeInsets.all(7),
                  width: 280,
                  height: 280,
                  decoration: BoxDecoration(
                      color: Color(0xffE5F1FD),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff97A4B7),
                            offset: new Offset(8.0, 10.0),
                            blurRadius: 25.0)
                      ]),
                  child: Container(
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new AssetImage("assets/cover.png"))))),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 8.0),
                child: Text(
                  "Lose It",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff97A4B7)),
                ),
              ),
              Text(
                "Flume ft. Vlc Mensa",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff97A4B7)),
              ),
              Padding(
                padding: const EdgeInsets.only(top :20.0,left: 20.0,right: 20),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "1:21",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff97A4B7)),
                    ),
                    Text("3:46",style:TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff97A4B7)
                    ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.zero,
                child: FlutterSlider(
                  values: [300],
                  max: 500,
                  tooltip: FlutterSliderTooltip(
                    alwaysShowTooltip: false,
                    disabled: true,
                  ),
                  handler: FlutterSliderHandler(
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Color(0xff97B0EA), shape: BoxShape.circle),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffE5F1FD),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff97A4B7),
                              offset: new Offset(8.0, 10.0),
                              blurRadius: 25.0)
                        ],
                      )),
                  trackBar: FlutterSliderTrackBar(
                      activeTrackBarHeight: 5.0,
                      inactiveTrackBarHeight: 5.0,
                      activeTrackBar: BoxDecoration(
                          color: Color(0xff95AEDE),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0)))
                      /*    inactiveTrackColor: Color(0xffE5EDFD),
                    activeTrackColor: Color(0xff95AEDE),*/
                      ),
                  min: 0,
                  onDragging: (handlerIndex, lowerValue, upperValue) {
                    _lowerValue = lowerValue;
                    _upperValue = upperValue;
                    setState(() {});
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top : 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 70.0,
                      width: 70.0,
                      child: Center(
                        child: Icon(FontAwesomeIcons.backward,size : 15.0,color: Color(0xff9CADC0),),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffE5F1FD),
                          shape:BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff97A4B7),
                                offset: new Offset(8.0, 10.0),
                                blurRadius: 25.0)
                          ]
                      ),
                    ),
                    Container(
                      height: 70.0,
                      width: 70.0,
                      child: Center(
                        child: Icon(Icons.pause,color :Colors.white,),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xff557DEE),
                          shape:BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff97A4B7),
                                offset: new Offset(8.0, 10.0),
                                blurRadius: 25.0)
                          ]
                      ),
                    ),
                    Container(
                      height: 70.0,
                      width: 70.0,
                      child: Center(
                        child: Icon(FontAwesomeIcons.forward,size: 15.0,color: Color(0xff9CADC0)),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffE5F1FD),
                          shape:BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff97A4B7),
                                offset: new Offset(8.0, 10.0),
                                blurRadius: 25.0)
                          ]
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
