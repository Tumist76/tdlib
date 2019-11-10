part of '../tdapi.dart';

class GetRemoteFile extends TdFunction {
  String remoteFileId;
  var fileType;
  dynamic extra;

  /// Returns information about a file by its remote ID; this is an offline request. Can be used to register a URL as a file for further uploading, or sending as a message. Even the request succeeds, the file can be used only if it is still accessible to the user.. For example, if the file is from a message, then the message must be not deleted and accessible to the user. If a file database is disabled, then the corresponding object with the file must be preloaded by the client.
  ///[remoteFileId] Remote identifier of the file to get .
  /// [fileType] File type, if known
  GetRemoteFile({this.remoteFileId, this.fileType});

  /// Parse from a json
  GetRemoteFile.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "remote_file_id": this.remoteFileId,
      "file_type": this.fileType.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getRemoteFile";

  @override
  String getConstructor() => CONSTRUCTOR;
}
