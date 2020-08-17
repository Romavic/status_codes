/// Author: Romavic dos Anjos Kulipi Cornélio
/// Server Error Status: The server failed to fulfil an apparently valid request.
/// Link about it: https://en.wikipedia.org/wiki/List_of_HTTP_status_codes#5xx_Server_errors

var _statusCode = 0;

class ServerError {
  static int internalServerError() {
    _statusCode = 500;
    return _statusCode;
  }

  static int notImplemented() {
    _statusCode = 501;
    return _statusCode;
  }

  static int badGateway() {
    _statusCode = 502;
    return _statusCode;
  }

  static int serviceUnavailable() {
    _statusCode = 503;
    return _statusCode;
  }

  static int gatewayTimeout() {
    _statusCode = 504;
    return _statusCode;
  }

  static int httpVersionNotSupported() {
    _statusCode = 505;
    return _statusCode;
  }

  static int variantAlsoNegotiates() {
    _statusCode = 506;
    return _statusCode;
  }

  static int insufficientStorage() {
    _statusCode = 507;
    return _statusCode;
  }

  static int loopDetected() {
    _statusCode = 508;
    return _statusCode;
  }

  static int notExtended() {
    _statusCode = 510;
    return _statusCode;
  }

  static int networkAuthenticationRequired() {
    _statusCode = 511;
    return _statusCode;
  }
}
