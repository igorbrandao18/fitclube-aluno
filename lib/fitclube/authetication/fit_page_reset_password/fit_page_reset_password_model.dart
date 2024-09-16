import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'fit_page_reset_password_widget.dart' show FitPageResetPasswordWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FitPageResetPasswordModel
    extends FlutterFlowModel<FitPageResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RedefinepasswordTextField widget.
  FocusNode? redefinepasswordTextFieldFocusNode;
  TextEditingController? redefinepasswordTextFieldTextController;
  String? Function(BuildContext, String?)?
      redefinepasswordTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    redefinepasswordTextFieldFocusNode?.dispose();
    redefinepasswordTextFieldTextController?.dispose();
  }
}
