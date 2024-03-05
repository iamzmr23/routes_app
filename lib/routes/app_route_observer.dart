import 'package:flutter/material.dart';

class AppRouteObservier extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    debugPrint("didPop");
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    debugPrint("didPush");
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    debugPrint("didRemove");
    super.didPop(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    debugPrint("didReplace");
  }
}
