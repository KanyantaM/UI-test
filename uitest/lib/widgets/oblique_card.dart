import 'package:flutter/material.dart';
import 'package:uitest/widgets/location.dart';

class ObliqueCard extends StatelessWidget {
  const ObliqueCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(4, 4, 30, 4),
      color: const Color(0xbef0eeee),
      shadowColor: const Color(0xff000000),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: const BorderSide(color: Color(0x4d9e9e9e), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "Get your hair products delivered",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 32,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Choose your address and start ordering",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 12,
                  color: Color(0xfff6f6f7),
                ),
              ),
            ),
          ),
          const Location(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: const [
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "1200+",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 5, 5),
                child: Text(
                  "People trust us",
                  textAlign: TextAlign.start,
                  maxLines: 3,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 11,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Divider(
                color: Color(0xffffffff),
                height: 16,
                thickness: 2,
                indent: 0,
                endIndent: 0,
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "500+",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Text(
                "Deliveries",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 12,
                  color: Color(0xffffffff),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
