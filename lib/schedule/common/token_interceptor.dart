import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  TokenInterceptor();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    const token =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjY0OTIyMTYsImlhdCI6MTY5NDk1NjIxNiwidXNlcl9pZCI6Ijk5ODhiOTMwLTBkYzctNGYzYy05NmI3LTk5Y2VmNDkxYTcyYSJ9.u7QyvBXA-IXstmXrMNnhq67wzzacYNARns-53UEMA5w';

    options.headers.addAll(<String, dynamic>{'x-token': token});
    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
  }
}
