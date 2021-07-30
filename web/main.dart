import 'dart:html';

import 'package:over_react/over_react.dart';
import 'package:over_react/react_dom.dart' as react_dom;

import 'package:over_react/over_react_redux.dart';
import 'package:dart_application_1/app.dart';

void main(List<String> args) => react_dom.render(
    (MyWidget()..MainColor = 'crimson')(), querySelector('#root'));
