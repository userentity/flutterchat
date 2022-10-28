import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/const/ui.dart';
import '../../../core/utils/margin.dart';

class AvatarInput extends StatefulWidget {
  const AvatarInput({
    Key? key,
    required this.size,
    required this.onSuccess,
  }) : super(key: key);

  final double size;

  final Function(String url) onSuccess;

  @override
  State<AvatarInput> createState() => _AvatarInputState();
}

class _AvatarInputState extends State<AvatarInput> {
  String? _imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size,
      width: widget.size,
      margin: const Margin.bottom(UI.padding * 1.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: UI.blueBorderColor,
        ),
      ),
      child: InkWell(
        onTap: () => _pickImage(),
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.size / 2),
        ),
        child: Center(
          child: ClipOval(
            child: Container(
              width: widget.size * 0.9,
              height: widget.size * 0.9,
              decoration: const BoxDecoration(
                color: UI.darkBcgColor,
              ),
              child: _imagePath != null
                  ? Image.asset(
                      _imagePath!,
                      fit: BoxFit.cover,
                    )
                  : Icon(
                      CupertinoIcons.photo_camera,
                      color: UI.whiteColor,
                      size: widget.size / 2.75,
                    ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      widget.onSuccess(image.path);
      setState(() {
        _imagePath = image.path;
      });
    }
  }
}
