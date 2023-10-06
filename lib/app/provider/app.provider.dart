
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../core/notifiers/auth.notifier.dart';
import '../../core/notifiers/theme.notifier.dart';
import '../../core/utils/obscure.text.util.dart';

class AppProvider {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => ThemeNotifier()),
    ChangeNotifierProvider(create: (_) => AuthNotifer()),
    ChangeNotifierProvider(create: (_) => ObscureTextUtil()),
  ];
}
