import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fit_update_bracelete_model.dart';
export 'fit_update_bracelete_model.dart';

class FitUpdateBraceleteWidget extends StatefulWidget {
  const FitUpdateBraceleteWidget({
    super.key,
    required this.idDeviceQueue,
  });

  final DocumentReference? idDeviceQueue;

  @override
  State<FitUpdateBraceleteWidget> createState() =>
      _FitUpdateBraceleteWidgetState();
}

class _FitUpdateBraceleteWidgetState extends State<FitUpdateBraceleteWidget> {
  late FitUpdateBraceleteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FitUpdateBraceleteModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await queryDeviceRecordOnce(
        queryBuilder: (deviceRecord) => deviceRecord
            .where(
              'company_id',
              isEqualTo: currentUserDocument?.companyId,
            )
            .where(
              'isAvailable',
              isEqualTo: false,
            ),
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: 430.0,
                    height: 932.0,
                    decoration: BoxDecoration(
                      color: Color(0x48B0B0B0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 1.0),
          child: StreamBuilder<DeviceQueueRecord>(
            stream: DeviceQueueRecord.getDocument(widget!.idDeviceQueue!),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }

              final containerDeviceQueueRecord = snapshot.data!;

              return Container(
                height: 330.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 66.0,
                          height: 3.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).borderColor,
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Alterar  Monitor',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF0E1726),
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Text(
                                  'Escolha um monitor disponível e conecte-se utilizando sua identificação.',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF0E1726),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(SizedBox(height: 10.0)),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Color(0xFF0E1726),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 10.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Monitor Cardíaco:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Container(
                                            height: 44.0,
                                            decoration: BoxDecoration(),
                                            child: AuthUserStreamWidget(
                                              builder: (context) =>
                                                  StreamBuilder<
                                                      List<DeviceRecord>>(
                                                stream: queryDeviceRecord(
                                                  queryBuilder:
                                                      (deviceRecord) =>
                                                          deviceRecord
                                                              .where(
                                                                'isAvailable',
                                                                isEqualTo:
                                                                    false,
                                                              )
                                                              .where(
                                                                'company_id',
                                                                isEqualTo:
                                                                    currentUserDocument
                                                                        ?.companyId,
                                                              ),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<DeviceRecord>
                                                      deviceSelectedDeviceRecordList =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .deviceSelectedValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options:
                                                        deviceSelectedDeviceRecordList
                                                            .map((e) =>
                                                                e.deviceId)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .deviceSelectedValue =
                                                            val),
                                                    width: 150.0,
                                                    height: 56.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'Selecione',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      StreamBuilder<DeviceRecord>(
                                        stream: DeviceRecord.getDocument(
                                            containerDeviceQueueRecord
                                                .deviceId!),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }

                                          final rowDeviceRecord =
                                              snapshot.data!;

                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  Navigator.pop(context);
                                                },
                                                text: 'Cancelar',
                                                options: FFButtonOptions(
                                                  width: 120.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF0E1726),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF0E1726),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                              StreamBuilder<List<DeviceRecord>>(
                                                stream: queryDeviceRecord(
                                                  queryBuilder:
                                                      (deviceRecord) =>
                                                          deviceRecord.where(
                                                    'device_id',
                                                    isEqualTo: _model
                                                        .deviceSelectedValue,
                                                  ),
                                                  singleRecord: true,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<DeviceRecord>
                                                      buttonDeviceRecordList =
                                                      snapshot.data!;
                                                  final buttonDeviceRecord =
                                                      buttonDeviceRecordList
                                                              .isNotEmpty
                                                          ? buttonDeviceRecordList
                                                              .first
                                                          : null;

                                                  return FFButtonWidget(
                                                    onPressed: () async {
                                                      await rowDeviceRecord
                                                          .reference
                                                          .update(
                                                              createDeviceRecordData(
                                                        isAvailable: false,
                                                      ));

                                                      await widget!
                                                          .idDeviceQueue!
                                                          .update(
                                                              createDeviceQueueRecordData(
                                                        status:
                                                            QueueStatus.pending,
                                                        type: DeviceQueueType
                                                            .update,
                                                        deviceId:
                                                            buttonDeviceRecord
                                                                ?.reference,
                                                      ));

                                                      await buttonDeviceRecord!
                                                          .reference
                                                          .update(
                                                              createDeviceRecordData(
                                                        isAvailable: true,
                                                      ));
                                                      Navigator.pop(context);
                                                    },
                                                    text: 'Confirmar',
                                                    options: FFButtonOptions(
                                                      width: 120.0,
                                                      height: 40.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  24.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: Color(0xFFFF7500),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ].divide(SizedBox(height: 20.0)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 10.0)),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
