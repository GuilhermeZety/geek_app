import 'package:geek_app/app/core/common/services/requests/request_result.dart';

abstract class RequestService {
  Future<RequestResult> get(String url, {Object data, Map<String, dynamic>? headers});
  Future<RequestResult> post(String url, {Object data, Map<String, dynamic>? headers});
  Future<RequestResult> put(String url, {Object data, Map<String, dynamic>? headers});
  Future<RequestResult> patch(String url, {Object data, Map<String, dynamic>? headers});
  Future<RequestResult> delete(String url, {Object data, Map<String, dynamic>? headers});
}
