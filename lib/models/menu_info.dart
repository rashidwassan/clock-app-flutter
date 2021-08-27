import 'package:custom_painter_practice/constants/enums.dart';

class MenuInfo {
  final MenuType menuType;
  final String title;
  String imageSource;

  MenuInfo(this.menuType, {this.title = '', this.imageSource = ''});
}
