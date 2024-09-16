import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/fitclube/components/fit_custom_navigation_bar/fit_custom_navigation_bar_widget.dart';
import '/fitclube/components/popus/fit_link_bracelet/fit_link_bracelet_widget.dart';
import '/fitclube/components/popus/fit_opcao_monitor/fit_opcao_monitor_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'fit_homepage_widget.dart' show FitHomepageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FitHomepageModel extends FlutterFlowModel<FitHomepageWidget> {
  ///  Local state fields for this page.

  bool conectBracelet = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - verificStudent] action in Fit_Homepage widget.
  bool? verificado;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
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
