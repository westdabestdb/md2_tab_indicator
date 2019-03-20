library md2_tab_indicator;

import 'package:flutter/widgets.dart';

class MD2Indicator extends Decoration {
  final double indicatorHeight;
  final Color indicatorColor;

  const MD2Indicator(
      {@required this.indicatorHeight, @required this.indicatorColor});

  @override
  _MD2Painter createBoxPainter([VoidCallback onChanged]) {
    return new _MD2Painter(this, onChanged);
  }
}

class _MD2Painter extends BoxPainter {
  final MD2Indicator decoration;

  _MD2Painter(this.decoration, VoidCallback onChanged)
      : assert(decoration != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);

    final Rect rect = Offset(offset.dx + 4,
            (configuration.size.height - decoration.indicatorHeight ?? 3)) &
        Size(configuration.size.width - 8, decoration.indicatorHeight ?? 3);

    final Paint paint = Paint();
    paint.color = decoration.indicatorColor ?? Color(0xff1967d2);
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndCorners(rect,
            topRight: Radius.circular(8), topLeft: Radius.circular(8)),
        paint);
  }
}