import 'package:flutter/material.dart';

class BlogPost extends StatelessWidget {
  final String title;
  final String description;

  const BlogPost({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.zero,
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Card(
        margin: const EdgeInsets.all(4.0),
        color: const Color.fromARGB(255, 184, 197, 161),
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
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: Align(
                    alignment: const Alignment(-0.8, 0.0),
                    child: Text(
                      title,
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
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
                      maxLines: 9,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
