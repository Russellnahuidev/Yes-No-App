import 'package:dio/dio.dart';
import 'package:yes_no_app/src/domain/entities/message.dart';
import 'package:yes_no_app/src/infrastucture/models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();
  }
}
