/// Author: Romavic dos Anjos Kulipi Cornélio
/// Successful Status: The request was successfully received, understood, and accepted.
/// Link about it: https://en.wikipedia.org/wiki/List_of_HTTP_status_codes#2xx_Success

var _statusCode = 0;

class HttpSuccess {
  static int ok() {
    _statusCode = 200;
    return _statusCode;
  }

  static int created() {
    _statusCode = 201;
    return _statusCode;
  }

  static int accepted() {
    _statusCode = 202;
    return _statusCode;
  }

  static int nonAuthoritativeInformational() {
    _statusCode = 203;
    return _statusCode;
  }

  static int noContent() {
    _statusCode = 204;
    return _statusCode;
  }

  static int resetContent() {
    _statusCode = 205;
    return _statusCode;
  }

  static int partialContent() {
    _statusCode = 206;
    return _statusCode;
  }

  static int multiStatus() {
    _statusCode = 207;
    return _statusCode;
  }

  static int alreadyReported() {
    _statusCode = 208;
    return _statusCode;
  }

  static int imUsed() {
    _statusCode = 226;
    return _statusCode;
  }
}
