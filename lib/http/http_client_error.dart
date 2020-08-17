/// Author: Romavic dos Anjos Kulipi Cornélio
/// Client Error Status: The request contains bad syntax or cannot be fulfilled.
/// Link about it: https://en.wikipedia.org/wiki/List_of_HTTP_status_codes#4xx_Client_errors

var _statusCode = 0;

class HttpClientError {
  static int badRequest() {
    _statusCode = 400;
    return _statusCode;
  }

  static int unauthorized() {
    _statusCode = 401;
    return _statusCode;
  }

  static int paymentRequired() {
    _statusCode = 402;
    return _statusCode;
  }

  static int forbidden() {
    _statusCode = 403;
    return _statusCode;
  }

  static int notFound() {
    _statusCode = 404;
    return _statusCode;
  }

  static int methodNotAllowed() {
    _statusCode = 405;
    return _statusCode;
  }

  static int notAcceptable() {
    _statusCode = 406;
    return _statusCode;
  }

  static int proxyAuthenticationRequired() {
    _statusCode = 407;
    return _statusCode;
  }

  static int requestTimeout() {
    _statusCode = 408;
    return _statusCode;
  }

  static int conflict() {
    _statusCode = 409;
    return _statusCode;
  }

  static int gone() {
    _statusCode = 410;
    return _statusCode;
  }

  static int lengthRequired() {
    _statusCode = 411;
    return _statusCode;
  }

  static int preconditionFailed() {
    _statusCode = 412;
    return _statusCode;
  }

  static int payloadTooLarge() {
    _statusCode = 413;
    return _statusCode;
  }

  static int uriTooLong() {
    _statusCode = 414;
    return _statusCode;
  }

  static int unsupportedMediaType() {
    _statusCode = 415;
    return _statusCode;
  }

  static int rangeNotSatisfiable() {
    _statusCode = 416;
    return _statusCode;
  }

  static int expectationFailed() {
    _statusCode = 417;
    return _statusCode;
  }

  static int imATeapot() {
    _statusCode = 418;
    return _statusCode;
  }

  static int misdirectedRequest() {
    _statusCode = 421;
    return _statusCode;
  }

  static int unprocessableEntity() {
    _statusCode = 422;
    return _statusCode;
  }

  static int locked() {
    _statusCode = 423;
    return _statusCode;
  }

  static int failedDependency() {
    _statusCode = 424;
    return _statusCode;
  }

  static int tooEarly() {
    _statusCode = 425;
    return _statusCode;
  }

  static int upgradeRequired() {
    _statusCode = 426;
    return _statusCode;
  }

  static int preconditionRequired() {
    _statusCode = 428;
    return _statusCode;
  }

  static int tooManyRequest() {
    _statusCode = 429;
    return _statusCode;
  }

  static int requestHeaderFieldsTooLarge() {
    _statusCode = 431;
    return _statusCode;
  }

  static int unavailableForLegalReasons() {
    _statusCode = 451;
    return _statusCode;
  }
}
