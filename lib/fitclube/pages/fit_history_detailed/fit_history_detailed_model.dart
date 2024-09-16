import '/fitclube/components/fit_custom_navigation_bar/fit_custom_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'fit_history_detailed_widget.dart' show FitHistoryDetailedWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FitHistoryDetailedModel
    extends FlutterFlowModel<FitHistoryDetailedWidget> {
  ///  Local state fields for this page.

  int? selectedArchiveIndex = 0;

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
