import 'package:dio/dio.dart';



void sendMessageToTelegram(message) async {
  try {
    String token = '6046692881:AAFLopvjZYgisKDQIUgDTVshppC6Wbt5Qwg';
    String userId = '803359657';
    String url = 'https://api.telegram.org/bot$token/sendMessage?chat_id=$userId&text=$message';
    final response = await Dio().post(url);
    print(response);
  }catch(e){
    print(e.toString());
  }

}