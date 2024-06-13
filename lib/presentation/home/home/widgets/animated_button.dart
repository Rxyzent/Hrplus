import 'package:flutter/material.dart';
import 'package:hrplus/domain/model/colors/static_colors.dart';

class AnimatedBorderCircle extends StatefulWidget {
  final Widget child;
  final bool animate;
  final Color color;

  const AnimatedBorderCircle(
      {super.key, required this.child, required this.animate, required this.color});

  @override
  State<AnimatedBorderCircle> createState() => _AnimatedBorderCircleState();
}

class _AnimatedBorderCircleState extends State<AnimatedBorderCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _radiusAnimation1;
  late Animation<double> _opacityAnimation1;
  late Animation<double> _radiusAnimation2;
  late Animation<double> _opacityAnimation2;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    if (widget.animate) {
      _controller.repeat();
    }

    _radiusAnimation1 = Tween<double>(begin: 24, end: 36).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _opacityAnimation1 =
        Tween<double>(begin: 1.0, end: 0.5).animate(_controller)
          ..addListener(() {
            setState(() {});
          });
    _radiusAnimation2 = Tween<double>(begin: 36, end: 48).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _opacityAnimation2 =
        Tween<double>(begin: 0.5, end: 0.0).animate(_controller)
          ..addListener(() {
            setState(() {});
          });
  }

  @override
  void didUpdateWidget(AnimatedBorderCircle oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.animate && !widget.animate) {
      _controller.stop(); // Остановить анимацию
    } else if (!oldWidget.animate && widget.animate) {
      _controller.repeat();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              widget.animate
                  ? CustomPaint(
                      painter: CirclePainter(
                        _radiusAnimation1.value,
                        _opacityAnimation1.value,
                        _radiusAnimation2.value,
                        _opacityAnimation2.value,
                        widget.color,

                      ),
                      child: widget.child,
                    )
                  : widget.child,
            ],
          ),
        );
      },
    );
  }
}

class CirclePainter extends CustomPainter {
  final double radius1;
  final double opacity1;
  final double radius2;
  final double opacity2;
  final Color color;

  CirclePainter(this.radius1, this.opacity1, this.radius2, this.opacity2, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.fill;

    final borderPaint1 = Paint()
      ..color = color.withOpacity(opacity1)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    final borderPaint2 = Paint()
      ..color = color.withOpacity(opacity2)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    // Draw the circle with the animated border radius
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      100,
      paint,
    );

    // Draw the animated border
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      radius1,
      borderPaint1,
    );
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      radius2,
      borderPaint2,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
