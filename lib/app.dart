import 'package:over_react/over_react.dart';
// import 'package:over_react/over_react_redux.dart';

part 'app.over_react.g.dart'; //ignore:uri_has_not_been_generated

UiFactory<MyWidgetProps> MyWidget =
    castUiFactory(_$MyWidget); // ignore: undefined_identifier

mixin MyWidgetProps on UiProps {
  String MainColor;
}

mixin MyWidgetState on UiState {
  bool isActive;
}

class MyWidgetComponent
    extends UiStatefulComponent2<MyWidgetProps, MyWidgetState> {
  @override
  Map get initialState => (newState()..isActive = false);

  void changeState(SyntheticMouseEvent event) =>
      setState(newState()..isActive = !state.isActive);

  @override
  dynamic render() {
    return (Dom.div()..className = 'main-widget')((Dom.button()
      ..onClick = changeState
      ..style = {
        'border': '2px solid ${props.MainColor}',
        'color': '${props.MainColor}'
      })(state.isActive.toString()));
  }
}
