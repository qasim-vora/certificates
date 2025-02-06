
import 'dart:io';

class FileModel {

  File file;
  String fileName;
  int fileType;
  String ext;
  double duration;

  FileModel({ required this.file, required this.fileName, required this.fileType, required this.ext, required this.duration});
}