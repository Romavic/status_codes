/// Author: Romavic dos Anjos Kulipi Cornélio
/// Redirection Status: Further action needs to be taken in order to complete the request.
/// Link about it: https://en.wikipedia.org/wiki/List_of_HTTP_status_codes#3xx_Redirection

var _statusCode = 0;

class HttpRedirection {
  static int multipleChoices() {
    _statusCode = 300;
    return _statusCode;
  }

  static int movedPermanently() {
    _statusCode = 301;
    return _statusCode;
  }

  static int found() {
    _statusCode = 302;
    return _statusCode;
  }

  static int seeOther() {
    _statusCode = 303;
    return _statusCode;
  }

  static int notModified() {
    _statusCode = 304;
    return _statusCode;
  }

  static int useProxy() {
    _statusCode = 305;
    return _statusCode;
  }

  static int switchProxy() {
    _statusCode = 306;
    return _statusCode;
  }

  static int temporaryRedirect() {
    _statusCode = 307;
    return _statusCode;
  }

  static int permanentRedirect() {
    _statusCode = 308;
    return _statusCode;
  }
}
