import 'package:flutter/material.dart';

class ResepCard extends StatelessWidget {
  final String title;
  final String rating;
  final String coockTime;
  final String thumbnailUri;

  const ResepCard(
      {required this.title,
      required this.rating,
      required this.coockTime,
      required this.thumbnailUri});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 130,
      child: Card(
        shadowColor: Colors.black.withOpacity(0.7),
        color: Color.fromARGB(255, 255, 175, 175),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        offset: Offset(0.0, 10.0),
                        blurRadius: 10.0,
                        spreadRadius: -6.0)
                  ],
                  image: DecorationImage(
                      opacity: 50,
                      image: NetworkImage(thumbnailUri),
                      fit: BoxFit.cover)),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(15)),
                          child: InkWell(
                            onTap: () => {},
                            child: Row(
                              children: [SizedBox(width: 5), Text('4 Porsi  ')],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.schedule,
                                color: Colors.yellow,
                                size: 18,
                              ),
                              SizedBox(width: 7),
                              Text(coockTime)
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
