import * as jwt from 'jsonwebtoken';

export namespace Jwt {

  export const ROLE_USER = 'board';
  export const ROLE_ADMIN = 'admin';

  export type Role = typeof ROLE_USER
    | typeof ROLE_ADMIN;

  export interface DecodedUser {
    id: number
    role: Role
    email: string
    name: string
  }

  export class TokenInformation {
    public static get(token: string): DecodedUser {
      const decodedToken = jwt.decode(token, {complete: true, json: true}) as { payload: any };
      return {
        id: +decodedToken.payload.id,
        role: decodedToken.payload.role,
        email: decodedToken.payload.email,
        name: decodedToken.payload.name
      };
    }
  }
}
