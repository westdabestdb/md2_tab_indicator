# md2_tab_indicator / MD2 Tab Indicator

MD2TabIndicator is a tab indicator influenced by Google's Material Design 2 tab indicator design and developed by [westdabestdb](https://www.instagram.com/westdabestdb/).

<img src="https://i.imgur.com/uKuSnZT.png" width="400px"/>

![](https://media.giphy.com/media/PPhIdGzHV12zYdmOUk/giphy.gif)
## Getting Started
Add this to your package's `pubspec.yaml` file:
```
...
dependencies:
  md2_tab_indicator: ^1.0.0
```

Now in your Dart code, you can use:
```
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
```

## Usage
```
TabBar(
  labelStyle: TextStyle( //up to your taste
    fontWeight: FontWeight.w700
  ),
  indicatorSize: TabBarIndicatorSize.label, //makes it better
  labelColor: Color(0xff1967d2), //Google's sweet blue
  unselectedLabelColor: Color(0xff5f6368), //niceish grey
  isScrollable: true, //up to your taste
  indicator: MD2Indicator( //it begins here
    indicatorHeight: 3,
    indicatorColor: Color(0xff1967d2),
  ),
  tabs: <Widget>[
    Tab(
      text: "Home",
    ),
    Tab(
      text: "Personal info",
    ),
    Tab(
      text: "Data & personalization",
    ),
    Tab(
      text: "Security",
    )
  ],
),
```
