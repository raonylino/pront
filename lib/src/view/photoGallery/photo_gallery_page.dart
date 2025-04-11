import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

import 'package:prime_pronta_resposta/src/constants/app_colors.dart';
import 'package:prime_pronta_resposta/src/constants/app_routers.dart';
import 'package:prime_pronta_resposta/src/constants/app_text_styles.dart';

class PhotoGalleryPage extends StatefulWidget {
  const PhotoGalleryPage({super.key});

  @override
  State<PhotoGalleryPage> createState() => _PhotoGalleryPageState();
}

class _PhotoGalleryPageState extends State<PhotoGalleryPage> {
  File? _imageFile;

  Future<void> _pickAndSaveImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      final Directory? appDir = await getExternalStorageDirectory();
      final String fileName = path.basename(image.path);
      final String newPath = path.join(appDir!.path, fileName);
      final File newImage = await File(image.path).copy(newPath);

      setState(() {
        _imageFile = newImage;
      });

      print('Imagem salva em: $newPath');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Galeria de Fotos',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.white,
            fontFamily: TextStyles.instance.primary,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        actionsIconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).popAndPushNamed(AppRouters.dateOperationPage);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton.icon(
              onPressed: _pickAndSaveImage,
              icon: const Icon(Icons.camera_alt_outlined),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
                minimumSize: Size(screenSize.width, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              label: const Text('Tirar foto'),
            ),
            const SizedBox(height: 20),
            if (_imageFile != null) Image.file(_imageFile!, height: 200),
          ],
        ),
      ),
    );
  }
}
