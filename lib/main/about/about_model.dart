import '/flutter_flow/flutter_flow_util.dart';
import 'about_widget.dart' show AboutWidget;
import 'package:flutter/material.dart';

class AboutModel extends FlutterFlowModel<AboutWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
