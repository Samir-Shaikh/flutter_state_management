import 'package:flutter/cupertino.dart';

class InheritedStateContainerWidget extends StatefulWidget{
  final Widget child;
  final int cartCounter;

  InheritedStateContainerWidget({@required this.child, this.cartCounter});

  static _InheritedStateContainerWidget of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<InheritedStateContainer>())
        .info;
  }
  @override
  _InheritedStateContainerWidget createState() => _InheritedStateContainerWidget();
}

class _InheritedStateContainerWidget extends State<InheritedStateContainerWidget> {
  int cartCounter;

  void updateCart(int count) {
   setState(() {
     cartCounter = count;
   });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedStateContainer(
      info: this,
      child: widget.child,
    );
  }
}

class InheritedStateContainer extends InheritedWidget {
  final _InheritedStateContainerWidget info;
  InheritedStateContainer({
    Key key,
    @required this.info,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}