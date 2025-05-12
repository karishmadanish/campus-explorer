import '/flutter_flow/flutter_flow_util.dart';
import 'version_widget.dart' show VersionWidget;
import 'package:flutter/material.dart';

class VersionModel extends FlutterFlowModel<VersionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
