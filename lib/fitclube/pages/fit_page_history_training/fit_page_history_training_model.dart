import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/fitclube/components/fit_custom_navigation_bar/fit_custom_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'fit_page_history_training_widget.dart'
    show FitPageHistoryTrainingWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FitPageHistoryTrainingModel
    extends FlutterFlowModel<FitPageHistoryTrainingWidget> {
  ///  Local state fields for this page.

  String? dateSelected;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Model for Fit_Custom_Navigation_Bar component.
  late FitCustomNavigationBarModel fitCustomNavigationBarModel;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    fitCustomNavigationBarModel =
        createModel(context, () => FitCustomNavigationBarModel());
  }

  @override
  void dispose() {
    fitCustomNavigationBarModel.dispose();
  }
}
