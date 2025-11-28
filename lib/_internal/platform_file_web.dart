import 'package:cross_file/cross_file.dart';
import 'package:file_picker/src/platform_file.dart';
import 'package:web/web.dart' as web;

class PlatformFileWeb extends PlatformFile {
  PlatformFileWeb({
    required super.name,
    required super.size,
    web.File? file,
    super.path,
    super.bytes,
    super.readStream,
    super.identifier,
  }) : _file = file;

  final web.File? _file;

  @override
  XFile get xFile {
    final file = _file;
    return file == null ? super.xFile : XFile.fromHtmlFile(file);
  }
}
