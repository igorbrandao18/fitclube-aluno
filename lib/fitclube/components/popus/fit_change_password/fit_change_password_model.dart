import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'fit_change_password_widget.dart' show FitChangePasswordWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FitChangePasswordModel extends FlutterFlowModel<FitChangePasswordWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for SenhaAtualTextField widget.
  FocusNode? senhaAtualTextFieldFocusNode;
  TextEditingController? senhaAtualTextFieldTextController;
  late bool senhaAtualTextFieldVisibility;
  String? Function(BuildContext, String?)?
      senhaAtualTextFieldTextControllerValidator;
  // State field(s) for NovaSenhaTextField widget.
  FocusNode? novaSenhaTextFieldFocusNode;
  TextEditingController? novaSenhaTextFieldTextController;
  late bool novaSenhaTextFieldVisibility;
  String? Function(BuildContext, String?)?
      novaSenhaTextFieldTextControllerValidator;
  // State field(s) for ConfirmarNovaSenhaTextField widget.
  FocusNode? confirmarNovaSenhaTextFieldFocusNode;
  TextEditingController? confirmarNovaSenhaTextFieldTextController;
  late bool confirmarNovaSenhaTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmarNovaSenhaTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaAtualTextFieldVisibility = false;
    novaSenhaTextFieldVisibility = false;
    confirmarNovaSenhaTextFieldVisibility = false;
  }

  @override
  void dispose() {
    senhaAtualTextFieldFocusNode?.dispose();
    senhaAtualTextFieldTextController?.dispose();

    novaSenhaTextFieldFocusNode?.dispose();
    novaSenhaTextFieldTextController?.dispose();

    confirmarNovaSenhaTextFieldFocusNode?.dispose();
    confirmarNovaSenhaTextFieldTextController?.dispose();
  }
}
