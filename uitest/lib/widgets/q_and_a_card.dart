import 'package:flutter/material.dart';

class QandA extends StatelessWidget {
  final String number;
  final String title;
  final String description;

  const QandA({
    Key? key,
    required this.number,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(4.0),
        color: Colors.white,
        shadowColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: const BorderSide(color: Color(0xFFC1C1C1), width: 2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                  child: Align(
                    alignment: const Alignment(-0.8, 0.0),
                    child: Text(
                      number,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.normal,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: Align(
                    alignment: const Alignment(-0.8, 0.0),
                    child: Text(
                      title,
                      textAlign: TextAlign.start,
                      maxLines: 3,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: const Alignment(-0.8, 0.0),
                    child: Text(
                      description,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  }
}
