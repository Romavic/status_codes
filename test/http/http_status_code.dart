import 'package:flutter_test/flutter_test.dart';
import 'package:status_code/http/http_client_error.dart';
import 'package:status_code/http/http_informational.dart';
import 'package:status_code/http/http_redirection.dart';
import 'package:status_code/http/http_server_error.dart';
import 'package:status_code/http/http_success.dart';

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
    expect(ServerError.internalServerError(), 500);
    expect(ServerError.notImplemented(), 501);
    expect(ServerError.badGateway(), 502);
    expect(ServerError.serviceUnavailable(), 503);
    expect(ServerError.gatewayTimeout(), 504);
    expect(ServerError.httpVersionNotSupported(), 505);
    expect(ServerError.variantAlsoNegotiates(), 506);
    expect(ServerError.insufficientStorage(), 507);
    expect(ServerError.loopDetected(), 508);
    expect(ServerError.notExtended(), 510);
    expect(ServerError.networkAuthenticationRequired(), 511);
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
