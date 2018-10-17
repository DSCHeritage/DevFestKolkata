import 'package:devfest_18_kolkata/model/session.dart';
import 'package:devfest_18_kolkata/screens/organisers_details_screen/colorful_lower_border/colorful_bottom_border_provider.dart';
import 'package:flutter/material.dart';

class RightDisplayCard extends StatefulWidget {
  final Session session;
  final int index;

  const RightDisplayCard(
      {Key key, @required this.session, @required this.index})
      : super(key: key);

  @override
  _RightDisplayCardState createState() => _RightDisplayCardState();
}

class _RightDisplayCardState extends State<RightDisplayCard>
    with TickerProviderStateMixin {
  Session get _session => widget.session;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 1.6;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: AnimatedContainer(
        width: width,
        height: 60.0,
        duration: Duration(milliseconds: 300),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Center(
                child: Column(
              children: <Widget>[
                Text(_session.title),
                Text(
                  '${_session.fromTime}-${_session.toTime}',
                ),
              ],
            )),
            SizedBox(height: 10.0),
            bottomBorder(width: width),
          ],
        ),
      ),
    );
  }
}
