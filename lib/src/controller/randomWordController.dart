import 'package:mvc_basic_pattern/src/model/_randowWordModel.dart';
import 'package:mvc_pattern/mvc_pattern.dart';


class RandomWordController extends ControllerMVC {
  static int get length => RandomWordModel.length;

  static void addAll(int count) => RandomWordModel.addAll(count);

  static String something(int index) => RandomWordModel.wordPair(index);

  static bool contains(String something) => RandomWordModel.contains(something);

  static void somethingHappens(String something) => RandomWordModel.save(something);

  static Iterable<ListTile> mapHappens<ListTile>(Function f) => RandomWordModel.saved(f);
}