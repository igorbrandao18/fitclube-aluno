import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/fitclube/components/fit_custom_navigation_bar/fit_custom_navigation_bar_widget.dart';
import '/fitclube/components/popus/fit_check_in/fit_check_in_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'fit_page_check_in_widget.dart' show FitPageCheckInWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FitPageCheckInModel extends FlutterFlowModel<FitPageCheckInWidget> {
  ///  Local state fields for this page.

  String? dateToday;

  int numVagas = 0;

  ///  State fields for stateful widgets in this page.

  // Model for Fit_Custom_Navigation_Bar component.
  late FitCustomNavigationBarModel fitCustomNavigationBarModel;

  @override
  void initState(BuildContext context) {
    fitCustomNavigationBarModel =
        createModel(context, () => FitCustomNavigationBarModel());
  }

  @override
  void dispose() {
    fitCustomNavigationBarModel.dispose();
  }
}
