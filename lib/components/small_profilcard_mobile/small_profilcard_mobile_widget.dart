import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
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
