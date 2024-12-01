import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/message_limit_c_t_a_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_page_pro_model.dart';
export 'chat_page_pro_model.dart';

class ChatPageProWidget extends StatefulWidget {
  const ChatPageProWidget({
    super.key,
    required this.characterId,
    required this.userReference,
  });

  final DocumentReference? characterId;
  final DocumentReference? userReference;

  @override
  State<ChatPageProWidget> createState() => _ChatPageProWidgetState();
}

class _ChatPageProWidgetState extends State<ChatPageProWidget> {
  late ChatPageProModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatPageProModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.characterDoc = await queryCharactersMainRecordOnce(
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      FFAppState().userId = widget.userReference!.id;
      safeSetState(() {});
      FFAppState().characterId = widget.characterId!.id;
      safeSetState(() {});
      _model.doesChatExist = await queryChatsRecordOnce(
        queryBuilder: (chatsRecord) => chatsRecord
            .where(
              'user_id',
              isEqualTo: widget.userReference,
            )
            .where(
              'character_id',
              isEqualTo: widget.characterId,
            ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      if (_model.doesChatExist?.reference != null) {
        _model.oldMessages = await queryMessagesRecordOnce(
          parent: _model.doesChatExist?.reference,
          queryBuilder: (messagesRecord) =>
              messagesRecord.orderBy('created_at', descending: true),
          limit: 10,
        );
      } else {
        var chatsRecordReference = ChatsRecord.collection.doc();
        await chatsRecordReference.set(createChatsRecordData(
          userId: widget.userReference,
          characterId: widget.characterId,
        ));
        _model.newChatId = ChatsRecord.getDocumentFromData(
            createChatsRecordData(
              userId: widget.userReference,
              characterId: widget.characterId,
            ),
            chatsRecordReference);
      }

      _model.apiLlmPageload = await NovitaFunctionLLMCall.call(
        characterId: widget.characterId?.id,
        userId: widget.userReference?.id,
      );

      if ((_model.apiLlmPageload?.succeeded ?? true)) {
        if ((_model.oldMessages != null && (_model.oldMessages)!.isNotEmpty) ==
            false) {
          _model.addToMessage(MessagesStruct(
            role: 'assistant',
            content: NovitaFunctionLLMCall.startMessage(
              (_model.apiLlmPageload?.jsonBody ?? ''),
            ).toString(),
          ));
          safeSetState(() {});
        } else {
          _model.message = ((_model.apiLlmPageload?.jsonBody ?? '')
                  .toList()
                  .map<MessagesStruct?>(MessagesStruct.maybeFromMap)
                  .toList() as Iterable<MessagesStruct?>)
              .withoutNulls
              .take(10)
              .toList()
              .toList()
              .cast<MessagesStruct>();
          safeSetState(() {});
        }
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<ChatsRecord>>(
      stream: queryChatsRecord(
        queryBuilder: (chatsRecord) => chatsRecord
            .where(
              'user_id',
              isEqualTo: widget.userReference,
            )
            .where(
              'character_id',
              isEqualTo: widget.characterId,
            ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitPumpingHeart(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<ChatsRecord> chatPageProChatsRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final chatPageProChatsRecord = chatPageProChatsRecordList.isNotEmpty
            ? chatPageProChatsRecordList.first
            : null;

        return Title(
            title: 'chatPagePro',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                body: SafeArea(
                  top: true,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: 800.0,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: StreamBuilder<CharactersMainRecord>(
                            stream: CharactersMainRecord.getDocument(
                                widget.characterId!),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitPumpingHeart(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }

                              final rowCharactersMainRecord = snapshot.data!;

                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 4.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.safePop();
                                              },
                                              child: Icon(
                                                Icons.chevron_left_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 28.0,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 54.0,
                                            height: 54.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              rowCharactersMainRecord
                                                  .referenceImage,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              rowCharactersMainRecord.name,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily),
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed(
                                            'characterProfil',
                                            queryParameters: {
                                              'characterId': serializeParam(
                                                widget.characterId,
                                                ParamType.DocumentReference,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        text: '',
                                        icon: Icon(
                                          Icons.info_outline,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 34.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 34.0,
                                          height: 34.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 0.0, 0.0),
                                          color: const Color(0x00FE3D96),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                          elevation: 0.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 12.0)),
                                  ),
                                ].divide(const SizedBox(width: 20.0)),
                              );
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            constraints: const BoxConstraints(
                              maxWidth: 750.0,
                            ),
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: Builder(
                                    builder: (context) {
                                      final messages = _model.message.toList();

                                      return SingleChildScrollView(
                                        controller: _model.columnController,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: List.generate(
                                              messages.length, (messagesIndex) {
                                            final messagesItem =
                                                messages[messagesIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 10.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  if (messagesItem.role ==
                                                      'user')
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Flexible(
                                                          child: Text(
                                                            messagesItem
                                                                .content,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Poppins'),
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  if (messagesItem.role ==
                                                      'assistant')
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Flexible(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        8.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        8.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        8.0),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Text(
                                                                messagesItem
                                                                    .content,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Poppins'),
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                ].divide(
                                                    const SizedBox(height: 10.0)),
                                              ),
                                            );
                                          }),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Container(
                                            width: 42.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                              border: Border.all(
                                                width: 0.0,
                                              ),
                                            ),
                                            child: FlutterFlowIconButton(
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              borderRadius: 8.0,
                                              buttonSize: 40.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              icon: Icon(
                                                Icons.image_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 24.0,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    3.0, 4.0, 10.0, 4.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: SizedBox(
                                                    width: 200.0,
                                                    child: TextFormField(
                                                      controller:
                                                          _model.textController,
                                                      focusNode: _model
                                                          .textFieldFocusNode,
                                                      autofocus: true,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .sentences,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'i6zmahrb' /* Schreibe mir... */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily),
                                                                ),
                                                        enabledBorder:
                                                            const UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            const UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        errorBorder:
                                                            const UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        focusedErrorBorder:
                                                            const UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                      maxLines: 8,
                                                      minLines: 1,
                                                      keyboardType:
                                                          TextInputType
                                                              .multiline,
                                                      validator: _model
                                                          .textControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Builder(
                                                  builder: (context) =>
                                                      FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    icon: Icon(
                                                      Icons.send_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 24.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {
                                                      if ((valueOrDefault<bool>(
                                                                  currentUserDocument
                                                                      ?.isPremium,
                                                                  false) ==
                                                              true) ||
                                                          (valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.messagesSentCount,
                                                                  0) <=
                                                              15)) {
                                                        _model.addToMessage(
                                                            MessagesStruct(
                                                          role: 'user',
                                                          content: _model
                                                              .textController
                                                              .text,
                                                        ));
                                                        safeSetState(() {});
                                                        _model.userInput =
                                                            _model
                                                                .textController
                                                                .text;
                                                        _model.userId = widget
                                                            .userReference?.id;
                                                        _model.characterId =
                                                            widget.characterId
                                                                ?.id;
                                                        safeSetState(() {});

                                                        await widget
                                                            .userReference!
                                                            .update({
                                                          ...mapToFirestore(
                                                            {
                                                              'messages_sent_count':
                                                                  FieldValue
                                                                      .increment(
                                                                          1),
                                                            },
                                                          ),
                                                        });

                                                        var messagesRecordReference1 =
                                                            MessagesRecord.createDoc(
                                                                chatPageProChatsRecord!
                                                                    .reference);
                                                        await messagesRecordReference1
                                                            .set(
                                                                createMessagesRecordData(
                                                          role: 'user',
                                                          content: _model
                                                              .textController
                                                              .text,
                                                          createdAt:
                                                              getCurrentTimestamp,
                                                        ));
                                                        _model.currentUserMessage =
                                                            MessagesRecord
                                                                .getDocumentFromData(
                                                                    createMessagesRecordData(
                                                                      role:
                                                                          'user',
                                                                      content: _model
                                                                          .textController
                                                                          .text,
                                                                      createdAt:
                                                                          getCurrentTimestamp,
                                                                    ),
                                                                    messagesRecordReference1);
                                                        _model.apiResultmlu =
                                                            await NovitaFunctionLLMCall
                                                                .call(
                                                          characterId:
                                                              FFAppState()
                                                                  .characterId,
                                                          userId: FFAppState()
                                                              .userId,
                                                          userInput: _model
                                                              .textController
                                                              .text,
                                                        );

                                                        safeSetState(() {
                                                          _model.textController
                                                              ?.clear();
                                                        });
                                                        if ((_model.apiResultmlu
                                                                ?.succeeded ??
                                                            true)) {
                                                          _model.addToMessage(
                                                              MessagesStruct(
                                                            role: 'assistant',
                                                            content:
                                                                NovitaFunctionLLMCall
                                                                    .aiResponse(
                                                              (_model.apiResultmlu
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                          ));
                                                          safeSetState(() {});

                                                          await MessagesRecord
                                                                  .createDoc(
                                                                      chatPageProChatsRecord
                                                                          .reference)
                                                              .set(
                                                                  createMessagesRecordData(
                                                            role: 'assistant',
                                                            content:
                                                                NovitaFunctionLLMCall
                                                                    .aiResponse(
                                                              (_model.apiResultmlu
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                          ));
                                                        }
                                                        await _model
                                                            .columnController
                                                            ?.animateTo(
                                                          _model
                                                              .columnController!
                                                              .position
                                                              .maxScrollExtent,
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  100),
                                                          curve: Curves.ease,
                                                        );
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: const AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () =>
                                                                    FocusScope.of(
                                                                            dialogContext)
                                                                        .unfocus(),
                                                                child:
                                                                    const MessageLimitCTAWidget(),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      }

                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
