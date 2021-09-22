library daw_loadmore_widget;

import 'package:flutter/material.dart';

/// createdby Daewu Bintara
/// Tuesday, 3/23/21

class LoadMoreWidget extends StatelessWidget {
  final bool status;
  final Duration? duration;
  const LoadMoreWidget({Key? key, required this.status, this.duration}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration ?? Duration(milliseconds: 200),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return ScaleTransition(child: child, scale: animation);
      },
      child: status
          ? Container(
        key: UniqueKey(),
        height: 50,
        child: Center(
          child: SizedBox(
            key: UniqueKey(),
            height: 25,
            width: 25,
            child: CircularProgressIndicator(
              key: UniqueKey(),
              strokeWidth: 3,
            ),
          ),
        ),
      )
          : Container(height: 50.0),
    );
  }
}
