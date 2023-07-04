import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 1, 0, 5),
                child: Align(
                  alignment: Alignment.center,
                  child: TextField(
                    controller: TextEditingController(),
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 12,
                      color: Color(0xff000000),
                    ),
                    decoration: const InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(3.0),
                            bottomLeft: Radius.circular(3.0)),
                        borderSide: BorderSide(
                            color: Color(0xffffffff), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(3.0),
                            bottomLeft: Radius.circular(3.0)),
                        borderSide: BorderSide(
                            color: Color(0xffffffff), width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(3.0),
                            bottomLeft: Radius.circular(3.0)),
                        borderSide: BorderSide(
                            color: Color(0xffffffff), width: 1),
                      ),
                      hintText: "search",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12,
                        color: Color(0xfffbfbfc),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: true,
                      contentPadding:
                          EdgeInsets.fromLTRB(12, 8, 12, 8),
                      prefixIcon: Icon(Icons.search,
                          color: Color(0xfffefeff), size: 24),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-0.0, 0.0),
              child: MaterialButton(
                onPressed: () {},
                color: const Color(0xff00ff43),
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(3.0),
                      bottomLeft: Radius.circular(3.0)),
                  side: BorderSide(
                      color: Color(0xff808080), width: 1),
                ),
                padding: const EdgeInsets.all(0),
                textColor: const Color(0xff000000),
                height: 46,
                child: const Text(
                  "OK",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: const [
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.location_on,
                color: Color(0xffffffff),
                size: 24,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 5, 5),
              child: Text(
                "Choose recommended location",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 12,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}