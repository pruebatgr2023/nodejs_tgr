import {AWSError, DynamoDB} from "aws-sdk";
import {Key} from "aws-sdk/clients/dynamodb";
import {PromiseResult} from "aws-sdk/lib/request";
import { Category } from '../../model';

export interface DynamoResult<E> {
  Items: E[],
  lastEvaluatedKey?: DynamoDB.DocumentClient.Key
}

export interface GetAll {
  id: string,
  lastEvaluatedKey?: DynamoDB.DocumentClient.Key
}

export interface GetTestCase {
  testCaseID?: string
  applicationID: string
  category: Category
  lastEvaluatedKey?: DynamoDB.DocumentClient.Key
}

export interface GetEnvironment {
  applicationID: string
  category?: Category
  name: string
  lastEvaluatedKey?: DynamoDB.DocumentClient.Key
}

export interface GetApplicationAndCategory {
  applicationID: string,
  category: Category
  lastEvaluatedKey?: DynamoDB.DocumentClient.Key
}

export interface DataGrouped {
  date: string
  count: number
  accumulated?: number
}

export interface ApplicationIDAndCertificationID {
  applicationID: string
  certificationID: string
  lastEvaluatedKey?: DynamoDB.DocumentClient.Key
}
export interface CertificationDetails {
  applicationID: string
  certificationID: string
  lastEvaluatedKey?: DynamoDB.DocumentClient.Key
}


const dynamoDBClient = new DynamoDB.DocumentClient({region: process.env.AWS_REGION});

export class Dynamo {
  private static async _getAllData(params: DynamoDB.DocumentClient.QueryInput, startKey?: Key): Promise<PromiseResult<DynamoDB.DocumentClient.QueryOutput, AWSError>> {
    if (startKey) {
      params.ExclusiveStartKey = startKey;
    }
    let result = await dynamoDBClient.query(params);
    return result.promise();
  }

  public static getData<E>(params: DynamoDB.DocumentClient.QueryInput, key?: DynamoDB.DocumentClient.Key): Promise<DynamoResult<E>> {
    return new Promise<DynamoResult<E>>((async (resolve, reject) => {
      let Items: E[] = [];
      try {
        do {
          const result: PromiseResult<DynamoDB.DocumentClient.QueryOutput, AWSError> = await this._getAllData(params, key);
          if (result.Items) {
            Items = Items.concat(<E[]>result.Items);
          }
          key = result.LastEvaluatedKey;
        } while (key);
        resolve({Items, lastEvaluatedKey: key});
      } catch (exception) {
        reject(exception);
      }
    }));
  };
}
