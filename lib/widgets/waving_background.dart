import 'dart:math';
import 'package:flutter/material.dart';

/// WavingGradientBackground
/// - Put this as a background widget (wrap your page content as child).
/// - Light, academic colors and subtle motion.
class WavingGradientBackground extends StatefulWidget {
  final Widget? child;
  final Duration duration;

  const WavingGradientBackground({
    super.key,
    this.child,
    this.duration = const Duration(seconds: 8),
  });

  @override
  State<WavingGradientBackground> createState() =>
      _WavingGradientBackgroundState();
}

class _WavingGradientBackgroundState extends State<WavingGradientBackground>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(vsync: this, duration: widget.duration)
      ..repeat();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Use AnimatedBuilder so CustomPainter gets repainted every tick
    return AnimatedBuilder(
      animation: _ctrl,
      builder: (context, _) {
        return CustomPaint(
          painter: _WavesPainter(progress: _ctrl.value),
          child: widget.child ?? const SizedBox.expand(),
        );
      },
    );
  }
}

class _WavesPainter extends CustomPainter {
  final double progress; // 0..1

  _WavesPainter({required this.progress});

  // choose light, academic-friendly palettes
  final List<List<Color>> _palettes = [
    [Color(0xFFE8F4FF), Color(0xFFDFF6F0)], // pale sky -> pale mint
    [Color(0xFFF7F3FF), Color(0xFFEFF6FF)], // pale lavender -> pale blue
    [Color(0xFFFFFBF0), Color(0xFFF3FAFF)], // warm cream -> soft blue
  ];

  @override
  void paint(Canvas canvas, Size size) {
    // background base
    final rect = Offset.zero & size;
    final basePaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFFFFFFFF), Color(0xFFFCFDFF)],
      ).createShader(rect);
    canvas.drawRect(rect, basePaint);

    // draw multiple waves, back to front
    _drawWave(canvas, size, paletteIndex: 0, amplitude: size.height * 0.08, speed: 1.0, verticalOffset: size.height * 0.70, opacity: 0.85, phaseShift: progress * 2 * pi);
    _drawWave(canvas, size, paletteIndex: 1, amplitude: size.height * 0.06, speed: 1.4, verticalOffset: size.height * 0.78, opacity: 0.75, phaseShift: progress * 2 * pi * 1.2);
    _drawWave(canvas, size, paletteIndex: 2, amplitude: size.height * 0.05, speed: 0.9, verticalOffset: size.height * 0.86, opacity: 0.72, phaseShift: progress * 2 * pi * 0.8);
  }

  void _drawWave(
    Canvas canvas,
    Size size, {
    required int paletteIndex,
    required double amplitude,
    required double speed,
    required double verticalOffset,
    required double opacity,
    required double phaseShift,
  }) {
    final palette = _palettes[paletteIndex % _palettes.length];
    final rect = Offset.zero & size;

    // gradient for the wave
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          palette[0].withValues(alpha: opacity),
          palette[1].withValues(alpha: opacity * 0.95),
        ],
      ).createShader(rect);

    final path = Path();
    const int steps = 128; // more steps = smoother wave; 128 is reasonable
    final double twoPi = 2 * pi;

    // start at left bottom
    path.moveTo(0, size.height);
    path.lineTo(0, verticalOffset);

    // build wave
    for (int i = 0; i <= steps; i++) {
      final t = i / steps;
      final x = t * size.width;
      // frequency controls number of wave cycles across width
      final freq = 1.0 + speed * 0.4; // slight variance
      final sine = sin((t * twoPi * freq) + phaseShift * speed);
      final y = verticalOffset + sine * amplitude * (0.6 + 0.4 * sin(phaseShift)); // subtle breathing
      path.lineTo(x, y);
    }

    // close shape to bottom right
    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_WavesPainter old) => old.progress != progress;
}
