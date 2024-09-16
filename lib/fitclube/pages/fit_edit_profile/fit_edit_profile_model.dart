import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'fit_edit_profile_widget.dart' show FitEditProfileWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class FitEditProfileModel extends FlutterFlowModel<FitEditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for NameEditTextField widget.
  FocusNode? nameEditTextFieldFocusNode;
  TextEditingController? nameEditTextFieldTextController;
  String? Function(BuildContext, String?)?
      nameEditTextFieldTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for PhoneNumbertextField widget.
  FocusNode? phoneNumbertextFieldFocusNode;
  TextEditingController? phoneNumbertextFieldTextController;
  final phoneNumbertextFieldMask =
      MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)?
      phoneNumbertextFieldTextControllerValidator;
  // State field(s) for AdressEditTextfield widget.
  FocusNode? adressEditTextfieldFocusNode;
  TextEditingController? adressEditTextfieldTextController;
  String? Function(BuildContext, String?)?
      adressEditTextfieldTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    nameEditTextFieldFocusNode?.dispose();
    nameEditTextFieldTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    phoneNumbertextFieldFocusNode?.dispose();
    phoneNumbertextFieldTextController?.dispose();

    adressEditTextfieldFocusNode?.dispose();
    adressEditTextfieldTextController?.dispose();

    textFieldFocusNode2?.dispose();
    passwordTextController?.dispose();
  }
}
