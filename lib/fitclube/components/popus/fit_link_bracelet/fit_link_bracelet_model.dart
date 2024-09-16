import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'fit_link_bracelet_widget.dart' show FitLinkBraceletWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FitLinkBraceletModel extends FlutterFlowModel<FitLinkBraceletWidget> {
  ///  Local state fields for this component.

  String? dayWeek;

  ///  State fields for stateful widgets in this component.

  // State field(s) for deviceSelected widget.
  String? deviceSelectedValue;
  FormFieldController<String>? deviceSelectedValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
