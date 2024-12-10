import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'small_profilcard_mobile_model.dart';
export 'small_profilcard_mobile_model.dart';

class SmallProfilcardMobileWidget extends StatefulWidget {
  const SmallProfilcardMobileWidget({super.key});

  @override
  State<SmallProfilcardMobileWidget> createState() =>
      _SmallProfilcardMobileWidgetState();
}

class _SmallProfilcardMobileWidgetState
    extends State<SmallProfilcardMobileWidget> {
  late SmallProfilcardMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SmallProfilcardMobileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
