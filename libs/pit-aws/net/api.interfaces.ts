import {APIGatewayEvent, Callback, CognitoUserPoolTriggerEvent, Context, ProxyResult} from "aws-lambda";

export namespace Api {

  export interface PitLambdaEvent {
    headers: {
      [key: string]: string
    }
    body: {
      [key: string]: string | number | boolean | undefined
    }
    path: {
      [key: string]: string | number
    }
    querystring: {
      [key: string]: string | number | string[] | number[] | ''
    }
  }

  export type ApiCallback = Callback<any>;
  export type ApiContext = Context;
  export type ProxyEvent = APIGatewayEvent;
  export type ProxyHandler = (event: ProxyEvent, context: ApiContext, callback: ApiCallback) => void;
  export type ApiHandler<Entity> = (event: Entity, context: ApiContext, callback: ApiCallback) => void;
  export type ApiResponse = ProxyResult;
  export type CognitoHandler = (event: CognitoUserPoolTriggerEvent, context: ApiContext, callback: Callback<CognitoUserPoolTriggerEvent>) => void

  export interface ErrorResponseBody {
    code: string;
    message: string;
  }
}
