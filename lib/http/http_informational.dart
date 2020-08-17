/// Author: Romavic dos Anjos Kulipi Cornélio
/// Informational Status: The request was received, continuing process.
/// Link about it: https://en.wikipedia.org/wiki/List_of_HTTP_status_codes#1xx_Informational_response

var _statusCode = 0;

class HttpInformational {
  static int scContinue() {
    _statusCode = 100;
    return _statusCode;
  }

  static int switchingProtocols() {
    _statusCode = 101;
    return _statusCode;
  }

  static int processing() {
    _statusCode = 102;
    return _statusCode;
  }

  static int earlyHints() {
    _statusCode = 103;
    return _statusCode;
  }
}
