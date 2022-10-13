import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

pickImage(ImageSource source) async {
  final ImagePicker imagepicker = ImagePicker();

  XFile? imageFile = await imagepicker.pickImage(source: source);
  if (imageFile != null) {
    return await imageFile.readAsBytes();
  }
  print('no image selected');
}

showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}
