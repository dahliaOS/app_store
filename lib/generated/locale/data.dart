import 'package:yatl_gen/yatl_gen.dart';
part './data/en-US.g.dart';
part './data/hr-HR.g.dart';

class GeneratedLocales extends Locales {
  const GeneratedLocales()
      : super(
          locales: const [
            _$EnUSLocaleData._(),
            _$HrHRLocaleData._(),
          ],
        );
}
