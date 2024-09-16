import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'fit_page_registration_widget.dart' show FitPageRegistrationWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class FitPageRegistrationModel
    extends FlutterFlowModel<FitPageRegistrationWidget> {
  ///  Local state fields for this page.

  bool? termsandprivacy = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for fullnameTextField widget.
  FocusNode? fullnameTextFieldFocusNode;
  TextEditingController? fullnameTextFieldTextController;
  String? Function(BuildContext, String?)?
      fullnameTextFieldTextControllerValidator;
  // State field(s) for birthdayTextField widget.
  FocusNode? birthdayTextFieldFocusNode;
  TextEditingController? birthdayTextFieldTextController;
  final birthdayTextFieldMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      birthdayTextFieldTextControllerValidator;
  // State field(s) for MailTextField widget.
  FocusNode? mailTextFieldFocusNode;
  TextEditingController? mailTextFieldTextController;
  String? Function(BuildContext, String?)? mailTextFieldTextControllerValidator;
  // State field(s) for InviteCode widget.
  FocusNode? inviteCodeFocusNode;
  TextEditingController? inviteCodeTextController;
  String? Function(BuildContext, String?)? inviteCodeTextControllerValidator;
  // State field(s) for passwordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  // State field(s) for VerifipasswordTextField widget.
  FocusNode? verifipasswordTextFieldFocusNode;
  TextEditingController? verifipasswordTextFieldTextController;
  late bool verifipasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      verifipasswordTextFieldTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    passwordTextFieldVisibility = false;
    verifipasswordTextFieldVisibility = false;
  }

  @override
  void dispose() {
    fullnameTextFieldFocusNode?.dispose();
    fullnameTextFieldTextController?.dispose();

    birthdayTextFieldFocusNode?.dispose();
    birthdayTextFieldTextController?.dispose();

    mailTextFieldFocusNode?.dispose();
    mailTextFieldTextController?.dispose();

    inviteCodeFocusNode?.dispose();
    inviteCodeTextController?.dispose();

    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();

    verifipasswordTextFieldFocusNode?.dispose();
    verifipasswordTextFieldTextController?.dispose();
  }
}
