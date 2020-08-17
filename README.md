# StatusCodes
This is a package that allows you to spell out the status code status codes extensively.

**Done**
- [x] Http Status Codes
- [ ] FTP Status Codes
- [ ] SMTP Status Codes

**StatusCodes Package**

```Groovy
dependencies:
  status_codes: ^0.0.1
```

Class => HttpSuccess
```Dart
HttpSuccess.ok()
HttpSuccess.accepted()
//...and others SuccessfulStatusCode...
```

Class => HttpInformational
```Dart
HttpInformational.scContinue()
HttpInformational.processing()
//...and others InformationalStatusCode...
```

Class => HttpRedirection
```Dart
HttpRedirection.multipleChoices()
HttpRedirection.found()
//...and others RedirectionStatusCode...
```

Class => HttpClientError
```Dart
HttpClientError.badRequest()
HttpClientError.forbidden()
//...and others ClientErrorStatusCode...
```

Class => HttpServerError
```Dart
HttpServerError.internalServerError()
HttpServerError.gatewayTimeout()
//...and others ServerErrorStatusCode...
```

This example show how to use the package to your projects:
Is being used to check the status codes of the requisition at Api.

```Dart
 var status = "";

  void requestApi() async {
    var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';

    var response = await http.get(url);
    if (response.statusCode == HttpInformational.scContinue()) {
      setState(() {
        status = "Status Code: 100";
      });
    }
    if (response.statusCode == HttpSuccess.ok()) {
      var jsonResponse = convert.jsonDecode(response.body);
      var itemCount = jsonResponse['totalItems'];
      print('Number of books about http: $itemCount.');

      setState(() {
        status = "Status Code: 200";
      });
    }
    if (response.statusCode == HttpRedirection.multipleChoices()) {
      setState(() {
        status = "Status Code: 300";
      });
    }
    if (response.statusCode == HttpClientError.badRequest()) {
      setState(() {
        status = "Status Code: 400";
      });
    }
    if (response.statusCode == HttpServerError.internalServerError()) {
      setState(() {
        status = "Status Code: 500";
      });
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
```

```Dart

import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:status_codes/http/http_client_error.dart';
import 'package:status_codes/http/http_informational.dart';
import 'package:status_codes/http/http_redirection.dart';
import 'package:status_codes/http/http_server_error.dart';
import 'package:status_codes/http/http_success.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var status = "";

  void requestApi() async {
    var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';

    var response = await http.get(url);
    if (response.statusCode == HttpInformational.scContinue()) {
      setState(() {
        status = "Status Code: 100";
      });
    }
    if (response.statusCode == HttpSuccess.ok()) {
      var jsonResponse = convert.jsonDecode(response.body);
      var itemCount = jsonResponse['totalItems'];
      print('Number of books about http: $itemCount.');

      setState(() {
        status = "Status Code: 200";
      });
    }
    if (response.statusCode == HttpRedirection.multipleChoices()) {
      setState(() {
        status = "Status Code: 300";
      });
    }
    if (response.statusCode == HttpClientError.badRequest()) {
      setState(() {
        status = "Status Code: 400";
      });
    }
    if (response.statusCode == HttpServerError.internalServerError()) {
      setState(() {
        status = "Status Code: 500";
      });
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button, for to see the status information:',
              textAlign: TextAlign.center,
            ),
            Text(
              '$status',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: requestApi,
        tooltip: 'Increment',
        child: Icon(Icons.refresh),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
```

**Pacage Test**
All methods of the classes in the http package passed the tests with success. 
You can trust this package.
 

```Dart
import 'package:flutter_test/flutter_test.dart';
import 'package:status_codes/http/http_client_error.dart';
import 'package:status_codes/http/http_informational.dart';
import 'package:status_codes/http/http_redirection.dart';
import 'package:status_codes/http/http_server_error.dart';
import 'package:status_codes/http/http_success.dart';

void main() {

  test('Client Error', () {
    expect(HttpClientError.badRequest(), 400);
    expect(HttpClientError.unauthorized(), 401);
    expect(HttpClientError.paymentRequired(), 402);
    expect(HttpClientError.forbidden(), 403);
    expect(HttpClientError.notFound(), 404);
    expect(HttpClientError.methodNotAllowed(), 405);
    expect(HttpClientError.notAcceptable(), 406);
    expect(HttpClientError.proxyAuthenticationRequired(), 407);
    expect(HttpClientError.requestTimeout(), 408);
    expect(HttpClientError.conflict(), 409);
    expect(HttpClientError.gone(), 410);
    expect(HttpClientError.lengthRequired(), 411);
    expect(HttpClientError.preconditionFailed(), 412);
    expect(HttpClientError.payloadTooLarge(), 413);
    expect(HttpClientError.uriTooLong(), 414);
    expect(HttpClientError.unsupportedMediaType(), 415);
    expect(HttpClientError.rangeNotSatisfiable(), 416);
    expect(HttpClientError.expectationFailed(), 417);
    expect(HttpClientError.imATeapot(), 418);
    expect(HttpClientError.misdirectedRequest(), 421);
    expect(HttpClientError.unprocessableEntity(), 422);
    expect(HttpClientError.locked(), 423);
    expect(HttpClientError.failedDependency(), 424);
    expect(HttpClientError.tooEarly(), 425);
    expect(HttpClientError.upgradeRequired(), 426);
    expect(HttpClientError.preconditionRequired(), 428);
    expect(HttpClientError.tooManyRequest(), 429);
    expect(HttpClientError.requestHeaderFieldsTooLarge(), 431);
    expect(HttpClientError.unavailableForLegalReasons(), 451);
  });

  test('Informational', () {
    expect(HttpInformational.scContinue(), 100);
    expect(HttpInformational.switchingProtocols(), 101);
    expect(HttpInformational.processing(), 102);
    expect(HttpInformational.earlyHints(), 103);
  });

  test('Redirection', () {
    expect(HttpRedirection.multipleChoices(), 300);
    expect(HttpRedirection.movedPermanently(), 301);
    expect(HttpRedirection.found(), 302);
    expect(HttpRedirection.seeOther(), 303);
    expect(HttpRedirection.notModified(), 304);
    expect(HttpRedirection.useProxy(), 305);
    expect(HttpRedirection.switchProxy(), 306);
    expect(HttpRedirection.temporaryRedirect(), 307);
    expect(HttpRedirection.permanentRedirect(), 308);
  });

  test('Server Error', () {
    expect(HttpServerError.internalServerError(), 500);
    expect(HttpServerError.notImplemented(), 501);
    expect(HttpServerError.badGateway(), 502);
    expect(HttpServerError.serviceUnavailable(), 503);
    expect(HttpServerError.gatewayTimeout(), 504);
    expect(HttpServerError.httpVersionNotSupported(), 505);
    expect(HttpServerError.variantAlsoNegotiates(), 506);
    expect(HttpServerError.insufficientStorage(), 507);
    expect(HttpServerError.loopDetected(), 508);
    expect(HttpServerError.notExtended(), 510);
    expect(HttpServerError.networkAuthenticationRequired(), 511);
  });

  test('Success', () {
    expect(HttpSuccess.ok(), 200);
    expect(HttpSuccess.created(), 201);
    expect(HttpSuccess.accepted(), 202);
    expect(HttpSuccess.nonAuthoritativeInformational(), 203);
    expect(HttpSuccess.noContent(), 204);
    expect(HttpSuccess.resetContent(), 205);
    expect(HttpSuccess.partialContent(), 206);
    expect(HttpSuccess.multiStatus(), 207);
    expect(HttpSuccess.alreadyReported(), 208);
    expect(HttpSuccess.imUsed(), 226);
  });
}

```
