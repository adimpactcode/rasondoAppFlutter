// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class ChatWidget extends StatefulWidget {
  const ChatWidget({
    super.key,
    this.width,
    this.height,
    this.messages,
    this.isStreaming = false,
  });

  final double? width;
  final double? height;
  final List<MessagesStruct>? messages;
  final bool isStreaming;

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  late ScrollController _scrollController;
  List<MessagesStruct> get messages => widget.messages ?? <MessagesStruct>[];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    // Scrollt automatisch zum Ende, sobald der Frame aufgebaut ist
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
  }

  @override
  void didUpdateWidget(covariant ChatWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Nach Updates erneut scrollen
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      child: Column(
        children: [
          // Chatverlauf
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final msg = messages[index];
                return ChatBubble(message: msg);
              },
            ),
          ),
          // Anzeige der Tipp-/Ladeanimation während des Streamings
          if (widget.isStreaming)
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: FlutterFlowTheme.of(context).primary,
                    child: const Icon(Icons.android,
                        color: Colors.white, size: 16),
                  ),
                  const SizedBox(width: 8),
                  TypingIndicator(),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final MessagesStruct message;
  const ChatBubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAssistant = message.role == 'assistant';
    final bubbleColor = isAssistant
        ? FlutterFlowTheme.of(context).primaryBackground
        : FlutterFlowTheme.of(context).secondaryBackground;
    final alignment =
        isAssistant ? Alignment.centerLeft : Alignment.centerRight;
    final borderRadius = isAssistant
        ? const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          )
        : const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          );

    Widget contentWidget;
    // Wenn eine vollständige Nachricht vorhanden ist:
    if (message.content != null && message.content!.isNotEmpty) {
      contentWidget = Text(
        message.content!,
        style: FlutterFlowTheme.of(context).bodyText1,
      );
    }
    // Wenn Streaming-Chunks vorhanden sind, füge sie horizontal zusammen:
    else if (message.messages != null && message.messages!.isNotEmpty) {
      final combinedText = message.messages!.join('');
      contentWidget = Text(
        combinedText,
        style: FlutterFlowTheme.of(context)
            .bodyText1
            .copyWith(fontStyle: FontStyle.italic),
      );
    } else {
      contentWidget = const SizedBox.shrink();
    }

    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: bubbleColor,
          borderRadius: borderRadius,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            )
          ],
        ),
        child: contentWidget,
      ),
    );
  }
}

class TypingIndicator extends StatefulWidget {
  const TypingIndicator({Key? key}) : super(key: key);

  @override
  State<TypingIndicator> createState() => _TypingIndicatorState();
}

class _TypingIndicatorState extends State<TypingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _dotAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..repeat(reverse: true);
    _dotAnimation = Tween<double>(begin: 0.3, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildDot(int delay) {
    return FadeTransition(
      opacity:
          DelayTween(begin: 0.3, end: 1.0, delay: delay).animate(_controller),
      child: Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primary,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildDot(0),
        const SizedBox(width: 4),
        _buildDot(200),
        const SizedBox(width: 4),
        _buildDot(400),
      ],
    );
  }
}

class DelayTween extends Tween<double> {
  final int delay;
  DelayTween({required double begin, required double end, this.delay = 0})
      : super(begin: begin, end: end);

  @override
  double lerp(double t) {
    double adjustedT = ((t * 1000) - delay) / 800;
    adjustedT = adjustedT.clamp(0.0, 1.0);
    return super.lerp(adjustedT);
  }
}
