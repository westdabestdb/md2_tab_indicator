library md2_tab_indicator;

import 'package:flutter/widgets.dart';
//*THIS Initial but working null safety update
enum MD2IndicatorSize {
  tiny,
  normal,
  full,
}

class MD2Indicator extends Decoration {
  final double indicatorHeight;
  final Color indicatorColor;
  final MD2IndicatorSize indicatorSize;

  const MD2Indicator(
      {required this.indicatorHeight,
      required this.indicatorColor,
      required this.indicatorSize});

  @override
  _MD2Painter createBoxPainter([VoidCallback? onChanged]) {
    return _MD2Painter(this, onChanged!);
  }
}

class _MD2Painter extends BoxPainter {
  final MD2Indicator? decoration;

  _MD2Painter(this.decoration, VoidCallback onChanged) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);

    Rect rect = Offset(1.0, 2.0) & const Size(3.0, 4.0);
    if (decoration!.indicatorSize == MD2IndicatorSize.full) {
      rect = Offset(
              offset.dx,
              (configuration.size!.height -
                  decoration!.indicatorHeight.toDouble())) &
          Size(configuration.size!.width, decoration!.indicatorHeight);
    } else if (decoration!.indicatorSize == MD2IndicatorSize.normal) {
      rect = Offset(offset.dx + 6,
              (configuration.size!.height - decoration!.indicatorHeight)) &
          Size(configuration.size!.width - 12, decoration!.indicatorHeight);
    } else if (decoration!.indicatorSize == MD2IndicatorSize.tiny) {
      rect = Offset(offset.dx + configuration.size!.width / 2 - 8,
              (configuration.size!.height - decoration!.indicatorHeight)) &
          Size(16, decoration!.indicatorHeight);
    }

    final Paint paint = Paint();
    paint.color = decoration?.indicatorColor ?? Colors.blue;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndCorners(rect,
            topRight: Radius.circular(8), topLeft: Radius.circular(8)),
        paint);
  }
}
