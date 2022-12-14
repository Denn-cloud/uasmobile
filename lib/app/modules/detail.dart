import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uas_mobile/app/models/topupmodel.dart';

import '../models/topupmodel.dart';

class DetailGame extends StatefulWidget {
  final TopupModel topup;
  const DetailGame({Key? key, required this.topup}) : super(key: key);

  @override
  State<DetailGame> createState() => _DetailGameState();
}

class _DetailGameState extends State<DetailGame> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 48, 91, 60),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 172, 145, 101)),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'TopUp',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 172, 145, 101),
              fontFamily: 'Poppins'),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          child: Stack(
            children: [
              Container(
                height: height * 0.55,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.topup.Poster),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: width,
                margin: EdgeInsets.only(top: height * 0.5),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.topup.Title,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 48, 91, 60),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),

                    Text(
                      widget.topup.Deskripsi,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Text('Description',style: TextStyle(
                    //   color: Colors.black,
                    //   fontSize: 16,
                    //   fontWeight: FontWeight.w400
                    // )
                    // ),
                    // SizedBox(height: 10,),
                    // Text(widget.kopi.description,
                    // style: TextStyle(
                    //   fontSize: 14,
                    //   color: Colors.grey,
                    //   fontWeight: FontWeight.normal,
                    //   letterSpacing: 0.5,
                    //   wordSpacing: 1.5
                    // ),
                    // ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              widget.topup.Count,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 48, 91, 60),
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              primary: Color.fromARGB(255, 48, 91, 60)),
                          child: Text(
                            'Chart',
                            style: TextStyle(
                                color: Color.fromARGB(255, 172, 145, 101),
                                fontSize: 18),
                          ),
                        )
                      ],
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
