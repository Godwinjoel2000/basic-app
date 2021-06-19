import 'package:flutter/cupertino.dart';

class trans extends PageRouteBuilder {
  final Widget widget;

  trans({required this.widget})
      : super(
            transitionDuration: Duration(seconds: 2),
            reverseTransitionDuration: Duration(seconds: 2),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secanimation,
                Widget child) {
              //  animation =
              //     Tween<double>(begin: 0, end: 1).animate(animation);
              // secanimation =
              //    Tween<double>(begin: 0, end: 1).animate(secanimation);
              // CurvedAnimation(parent: animation, curve: Curves.easeInOut);
              return FadeTransition(
                // scale: animation,
                opacity: animation,

                child: child,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secanimation) {
              return widget;
            });
}
