import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/fitclube/components/fit_custom_navigation_bar/fit_custom_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'fit_profile_gym_widget.dart' show FitProfileGymWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FitProfileGymModel extends FlutterFlowModel<FitProfileGymWidget> {
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
