import 'dart:ffi';
import 'dart:io';

void main() {
  final dlExt = Platform.isLinux
      ? 'so'
      : Platform.isMacOS
          ? 'dylib'
          : Platform.isWindows
              ? 'dll'
              : throw UnimplementedError();
  final lib = DynamicLibrary.open('build/libLib.$dlExt');

  final throwException =
      lib.lookupFunction<Void Function(), void Function()>('throwException');
  throwException();
}
