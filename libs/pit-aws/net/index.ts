import {Api as api} from './api.interfaces'
import {Cognito as cognito} from './cognito.interfaces'
import {Jwt as jwt} from './jwt.token'

export declare namespace Net {
  export import Api = api;
  export import Cognito = cognito;
  export import Jwt = jwt;
}

export * from './response';
