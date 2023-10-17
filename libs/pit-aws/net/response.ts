/**
 * Contains helper methods to generate a HTTP response.
 */
import {Api} from "./api.interfaces";

type ErrorCode = 'DYNAMO_TABLE_NOT_FOUND' | 'DYNAMO_ERROR' | 'LAMBDA_INVOCATION' | 'CUCUMBER_EXECUTION' |
  'CUCUMBER_READ_CODE' | 'CUCUMBER_GHERKIN_SYNTAX' | 'ENVIRONMENT_NOT_FOUND' | 'BODY_NOT_FOUND';

export class Response {

  public static error(code: ErrorCode, callback: Api.ApiCallback, details?: any): void {
    console.log(code, details)
    callback(code);
  }

  public static ok(result: any, callback: Api.ApiCallback): void {
    callback(undefined, result);
  }
}
