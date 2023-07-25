import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../../model/universal_data.dart';

UniversalData handleHttpErrors(http.Response response) {
  switch (response.statusCode) {
    case HttpStatus.badRequest:
      {
        return UniversalData(
          error: "Bad request exception",
          statusCode: response.statusCode,
        );
      }
    case HttpStatus.unauthorized:
      {
        return UniversalData(
          error: jsonDecode(response.body)["message"],
          statusCode: response.statusCode,
        );
      }
    case HttpStatus.forbidden:
      {
        return UniversalData(
          error: jsonDecode(response.body)["message"],
          statusCode: response.statusCode,
        );
      }
    case HttpStatus.notFound:
      {
        return UniversalData(
          error: jsonDecode(response.body)["message"],
          statusCode: response.statusCode,
        );
      }
    case HttpStatus.methodNotAllowed:
      {
        return UniversalData(
          error: jsonDecode(response.body)["message"],
          statusCode: response.statusCode,
        );
      }
    case HttpStatus.notAcceptable:
      {
        return UniversalData(
          error: jsonDecode(response.body)["message"],
          statusCode: response.statusCode,
        );
      }
    case HttpStatus.proxyAuthenticationRequired:
      {
        return UniversalData(
          error: "Proxy authentication required",
          statusCode: response.statusCode,
        );
      }
    case HttpStatus.requestTimeout:
      {
        return UniversalData(
          error: "Request timeout",
          statusCode: response.statusCode,
        );
      }
    case HttpStatus.conflict:
      {
        return UniversalData(
          error: jsonDecode(response.body)["message"],
          statusCode: response.statusCode,
        );
      }
    case HttpStatus.gone:
      {
        return UniversalData(
          error: jsonDecode(response.body)["message"],
          statusCode: response.statusCode,
        );
      }
    case HttpStatus.lengthRequired:
      {
        return UniversalData(
          error: "Length required",
          statusCode: response.statusCode,
        );
      }
    case HttpStatus.preconditionFailed:
      {
        return UniversalData(
          error: "Precondition failed",
          statusCode: response.statusCode,
        );
      }
    case HttpStatus.requestEntityTooLarge:
      {
        return UniversalData(
          error: "Request entity too large",
          statusCode: response.statusCode,
        );
      }
      default:
        return UniversalData(error: "mavjud bo'lgan error",data: response.statusCode.toString());
  }

}
