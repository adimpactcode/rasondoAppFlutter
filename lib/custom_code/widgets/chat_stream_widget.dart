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

import 'dart:async';

/// Widget, das einen einzelnen Buchstaben mit Fade‑in animiert.
class FadingLetter extends StatefulWidget {
  final String letter;
  final TextStyle? style;
  final Duration fadeDuration;

  const FadingLetter({
    Key? key,
    required this.letter,
    this.style,
    this.fadeDuration = const Duration(milliseconds: 300),
  }) : super(key: key);

  @override
  _FadingLetterState createState() => _FadingLetterState();
}

class _FadingLetterState extends State<FadingLetter> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    // Startet die Animation nach dem ersten Frame.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          _opacity = 1.0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacity,
      duration: widget.fadeDuration,
      child: Text(widget.letter, style: widget.style),
    );
  }
}

/// Widget, das den übergebenen Text buchstabenweise aufbaut und
/// jeden neuen Buchstaben einzeln (mit Fade‑in) erscheinen lässt.
/// Die Wrap‑Variante sorgt dafür, dass der Text natürlich umbricht – wir
/// kapseln ihn zusätzlich in einen Container mit voller Breite.
class AnimatedTypingText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final Duration letterDelay;
  final Duration fadeDuration;

  const AnimatedTypingText({
    Key? key,
    required this.text,
    this.style,
    this.letterDelay = const Duration(milliseconds: 50),
    this.fadeDuration = const Duration(milliseconds: 300),
  }) : super(key: key);

  @override
  _AnimatedTypingTextState createState() => _AnimatedTypingTextState();
}

class _AnimatedTypingTextState extends State<AnimatedTypingText> {
  int _visibleLetters = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    _timer = Timer.periodic(widget.letterDelay, (timer) {
      if (_visibleLetters < widget.text.length) {
        setState(() {
          _visibleLetters++;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void didUpdateWidget(covariant AnimatedTypingText oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Falls der Text erweitert wurde, animiere nur die neuen Buchstaben.
    if (widget.text.length > _visibleLetters) {
      _timer?.cancel();
      _startAnimation();
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> letterWidgets = [];
    for (int i = 0; i < _visibleLetters; i++) {
      letterWidgets.add(FadingLetter(
        letter: widget.text[i],
        style: widget.style,
        fadeDuration: widget.fadeDuration,
      ));
    }
    // Container mit voller Breite, damit der Wrap den gesamten horizontalen Raum nutzt.
    return Container(
      width: double.infinity,
      child: Wrap(
        spacing: 0,
        runSpacing: 0,
        alignment: WrapAlignment.start,
        children: letterWidgets,
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

/// Widget für die pulsierenden Punkte im Typing-Bubble.
/// Jeder Punkt animiert sowohl seine Skalierung als auch seine Deckkraft.
class PulsatingDot extends StatefulWidget {
  final Duration delay;
  const PulsatingDot({Key? key, required this.delay}) : super(key: key);

  @override
  _PulsatingDotState createState() => _PulsatingDotState();
}

class _PulsatingDotState extends State<PulsatingDot>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    _opacityAnimation = Tween<double>(begin: 0.4, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    // Startet die Animation nach dem angegebenen Delay.
    Future.delayed(widget.delay, () {
      if (mounted) {
        _controller.repeat(reverse: true);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Opacity(
          opacity: _opacityAnimation.value,
          child: Transform.scale(
            scale: _scaleAnimation.value,
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
            ),
          ),
        );
      },
    );
  }
}

class ChatStreamWidget extends StatefulWidget {
  const ChatStreamWidget({
    super.key,
    this.width,
    this.height,
    required this.messages,
    required this.isTyping,
  });

  final double? width;
  final double? height;
  final List<MessagesStruct> messages;
  final bool isTyping;

  @override
  State<ChatStreamWidget> createState() => _ChatStreamWidgetState();
}

class _ChatStreamWidgetState extends State<ChatStreamWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      child: ListView.builder(
        controller: _scrollController,
        padding: EdgeInsets.all(16),
        itemCount: widget.messages.length + (widget.isTyping ? 1 : 0),
        itemBuilder: (context, index) {
          WidgetsBinding.instance
              .addPostFrameCallback((_) => _scrollToBottom());

          if (widget.isTyping && index == widget.messages.length) {
            return _buildTypingBubble();
          }

          final message = widget.messages[index];
          final isUserMessage = (message.role == 'user');

          // Basis-Container – alle Layout-Parameter bleiben wie gewünscht.
          final messageContainer = Container(
            constraints: BoxConstraints(
              maxWidth: isUserMessage
                  ? MediaQuery.of(context).size.width * 0.75
                  : MediaQuery.of(context).size.width * 0.85,
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            margin: EdgeInsets.only(
              bottom: 8,
              left: isUserMessage ? 50 : 8,
              right: isUserMessage ? 8 : 50,
            ),
            decoration: BoxDecoration(
              color: isUserMessage
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft:
                    isUserMessage ? Radius.circular(20) : Radius.circular(8),
                bottomRight:
                    isUserMessage ? Radius.circular(8) : Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: _buildMessageContent(message, isUserMessage),
          );

          // API-Nachrichten (über content) werden direkt angezeigt.
          return Align(
            alignment:
                isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
            child: messageContainer,
          );
        },
      ),
    );
  }

  /// Optimiertes Chunk-Merging für korrekte Worttrennung.
  String mergeChunks(List<String> chunks) {
    if (chunks.isEmpty) return "";
    final buffer = StringBuffer();
    for (int i = 0; i < chunks.length; i++) {
      String chunk = chunks[i];
      if (buffer.isNotEmpty) {
        if (buffer.toString().endsWith("-")) {
          buffer.write(chunk);
        } else if (!buffer.toString().endsWith(" ") &&
            !chunk.startsWith(" ") &&
            !RegExp(r'^[.,!?]').hasMatch(chunk)) {
          buffer.write(" $chunk");
        } else {
          buffer.write(chunk);
        }
      } else {
        buffer.write(chunk);
      }
    }
    return buffer.toString();
  }

  Widget _buildMessageContent(MessagesStruct message, bool isUserMessage) {
    final textStyle = TextStyle(
      color: isUserMessage
          ? Colors.white
          : FlutterFlowTheme.of(context).bodyMedium.color,
      fontSize: 16,
    );

    // API-Nachrichten (über content) unverändert.
    if (message.content != null && message.content!.isNotEmpty) {
      return SelectableText(
        message.content!,
        style: textStyle,
      );
    }
    // Streaming-Nachrichten (Chunks):
    else if (message.messages != null && message.messages!.isNotEmpty) {
      // Wenn nur ein Chunk vorliegt, wird er vollständig animiert.
      if (message.messages!.length == 1) {
        return AnimatedTypingText(
          key: ValueKey("animated_${message.hashCode}_chunk0"),
          text: message.messages!.first,
          style: textStyle,
          letterDelay: Duration(milliseconds: 50),
          fadeDuration: Duration(milliseconds: 300),
        );
      } else {
        // Bei mehreren Chunks: Alle bisherigen Chunks werden als statischer Text angezeigt,
        // und der letzte Chunk wird animiert.
        List<Widget> children = [];
        for (int i = 0; i < message.messages!.length - 1; i++) {
          children.add(Text(message.messages![i], style: textStyle));
        }
        children.add(AnimatedTypingText(
          key: ValueKey(
              "animated_${message.hashCode}_chunk_${message.messages!.length - 1}"),
          text: message.messages!.last,
          style: textStyle,
          letterDelay: Duration(milliseconds: 50),
          fadeDuration: Duration(milliseconds: 300),
        ));
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: children,
        );
      }
    }
    return SizedBox.shrink();
  }

  Widget _buildTypingBubble() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        margin: EdgeInsets.only(bottom: 8, left: 8, right: 50),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            PulsatingDot(delay: Duration(milliseconds: 0)),
            SizedBox(width: 4),
            PulsatingDot(delay: Duration(milliseconds: 200)),
            SizedBox(width: 4),
            PulsatingDot(delay: Duration(milliseconds: 400)),
          ],
        ),
      ),
    );
  }
}
