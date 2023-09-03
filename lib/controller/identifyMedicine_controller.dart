import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

// make function to convert image to base64
String convertBase64(XFile image) {
  final bytes = File(image.path).readAsBytesSync();
  // String base64Image = "data:image/png;base64,${base64Encode(bytes)}";
  String base64Image = base64Encode(bytes);
  print("img_pan : $base64Image");

  return "";
  // List<int> imageBytes = File(image.path).readAsBytesSync();
  // String base64Image = base64Encode(imageBytes);
  // return base64Image;
}

Future<void> sendImageToServer(XFile image_) async {
  File image = File(image_.path);
  // 이미지 압축
  File compressedImage = await compressImage(image);

  final baseUrl = dotenv.env['BASE_URL']!;

  // url 생성
  final uri = Uri.parse("$baseUrl/medicines/identify");

  var client = http.Client();
  try {
    // MultipartFile 생성
    final file = await http.MultipartFile.fromPath("files", compressedImage.path);

    // MultipartRequest 생성
    final request = http.MultipartRequest('POST', uri);
    request.files.add(file);

    // 서버로 요청 보내기
    final response = await request.send();

    if (response.statusCode == 200) {
      // 성공적으로 요청이 완료됨
      final responseBody = await http.Response.fromStream(response);
      print(responseBody.body);
    } else {
      // 요청 실패
      print("Request failed with status: ${response.statusCode}.");
    }
  } catch (e) {
    Exception(e);
  } finally {
    client.close();
  }
}

Future<File> compressImage(File file) async {
  final result = await FlutterImageCompress.compressAndGetFile(
    file.absolute.path,
    "${file.absolute.path}.temp.jpg",
    quality: 88, // 품질을 조정하여 이미지 크기를 줄입니다.
    minWidth: 400, // 최소 가로 크기
    minHeight: 300, // 최소 세로 크기
    format: CompressFormat.jpeg, // 출력 형식
  );

  File resultImage = File(result!.path);
  return resultImage;
}

Future getImageFromCamera() async {
  final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

  if (pickedFile != null) {
    sendImageToServer(pickedFile);
  } else {
    print('사진을 선택하지 않았습니다.');
  }
  // setState(() {
  //   if (pickedFile != null) {
  //     _image = File(pickedFile.path);
  //   } else {
  //     print('사진을 선택하지 않았습니다.');
  //   }
  // });
}
