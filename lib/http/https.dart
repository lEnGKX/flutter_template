import './HttpUtils.dart';
import './apiUrls.dart';

class Https {
  // 获取全部用户数据
  static getUsersTestDataAll() async {
    Map<String, dynamic> result =
        await DioUtils().get(ApiUrls.getUsersTestDataAllApi());
    return result;
  }
}
