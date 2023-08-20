import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  TokenInterceptor();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    const token =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTE0NDM1NzgsImlhdCI6MTY3OTkwNzU3OCwidXNlcl9pZCI6IjFjNWJiNTZjLWZiZjYtNDA2MC1hZmExLWJhMGQ4N2M2YmZiNSJ9.gHnueCkhLnMpcVXjQl736LpNPP9PWecx8Z7CYF7XVtw';

    options.headers.addAll(<String, dynamic>{'x-token': token});
    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
  }
}
