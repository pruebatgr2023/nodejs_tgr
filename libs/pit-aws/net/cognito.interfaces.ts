import {CognitoUserPoolTriggerEvent, Handler} from "aws-lambda";
import {Jwt} from "./jwt.token";

export namespace Cognito {

  import DecodedUser = Jwt.DecodedUser;

  export interface WithClaims {
    response: {
      claimsOverrideDetails: {
        claimsToAddOrOverride: DecodedUser
      }
    }
  }

  export type CUPTriggerEvent = CognitoUserPoolTriggerEvent & WithClaims;
  export type CUPTriggerHandler = Handler<CUPTriggerEvent>;
}
