import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  RxString imagePath = ''.obs; // Reactive String to store the image path

  Future<void> getImage() async {
    final ImagePicker picker = ImagePicker(); // Follow naming conventions

    try {
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        imagePath.value = image.path; // Directly assign the image path
      } else {
        print("No image selected.");
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }
}
