
import 'package:local_common/common.dart';

class FormActionNavigation {
  final NavigationListener listener;

  const FormActionNavigation({required this.listener});

  void listen(FormAction? previous, FormAction next) {
    if (previous != next &&
        next.lifecyle == ActionLifeCycle.navigation &&
        next.navigationAction != null) {
      switch (next.navigationAction!) {
        case NavigationAction.home:
          listener.gotoHomePage();
          break;
        case NavigationAction.next:
          listener.gotoNextPage();
          break;
        case NavigationAction.previous:
          listener.gotoPreviousPage();
          break;
      }
      listener.updatePage(next);
    }
  }
}

abstract class NavigationListener {
  void gotoHomePage();
  void gotoNextPage();
  void gotoPreviousPage();
  void updatePage(FormAction action);
}
