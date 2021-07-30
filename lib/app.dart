import 'package:over_react/over_react.dart';
// import 'package:over_react/over_react_redux.dart';

part 'app.over_react.g.dart';

UiFactory<MyWidgetProps> MyWidget =
    castUiFactory(_$MyWidget); // ignore: undefined_identifier

mixin MyWidgetProps on UiProps {}

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
    return (Dom.div()
      ..style = {
        'color': 'crimson',
        'display': 'flex',
        'flexDirection': 'row',
        'justifyContent': 'center',
        'margin': '100px 0px'
      })((Dom.button()
      ..onClick = changeState
      ..style = {
        'border': '2px solid crimson',
        'backgroundColor': '#181818',
        'color': 'crimson',
        'height': '100px',
        'width': '150px',
        'borderRadius': '20px',
        'fontSize': '20px'
      })(state.isActive.toString()));
  }
}
