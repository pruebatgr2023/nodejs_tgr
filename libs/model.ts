export type Category = 'web' | 'service'

export interface ApplicationAndCategory {
  applicationID: string
  category: Category
}

export interface PathId {
  id: string
}

export interface BetweenDates {
  startDate: number
  endDate: number
  id?: string
  lastEvaluatedKey?: number
}

export interface Application {
  applicationName: string
  applicationDescription: string
  applicationID?: string
  available?: string
  createdByMail: string
  createdByName: string
  createdTime: string
  updateByMail?: string
  updateByName?: string
  updateTime?: string
}

export interface TestCase {
  testCaseID?: string
  testCaseName: string
  testCaseDescription: string
  testCaseCode: string
  applicationID: string
  createdByMail: string
  createdByName: string
  createdTime: string
  updateByMail?: string
  updateByName?: string
  updateTime?: string
  tags?: string[]
  available: string
  category: Category
}

interface TestCaseCategory {
  web: TestCase[]
  service: TestCase[]
}

export interface TestCaseGroup {
  applicationID: string
  applicationName?: string
  testCases: TestCaseCategory
}

export interface TestCaseUpdate {
  id: number
  body: TestCase
}

export type CertificationState = 'PENDING' | 'EXECUTED' | 'ERROR';
export interface TestCaseList {
  name: string
  id: string
  result: "Success" | "Fail" | "Error"
}

export interface Certification {
  certificationID?: string
  applicationID: string
  applicationName?: string
  category: Category
  createdByMail: string
  createdByName: string
  environment: string
  timeStart: string
  timeEnd?: string
  resultsTotal?: number
  resultsSuccess?: number
  resultsFailed?: number
  resultsError?: number
  state: CertificationState
  available: "true" | "false"
  tags: string[]
  ttlCertification?: number
  testCaseList: TestCaseList[]
}

export interface Execution {
  executionID?: string
  applicationID: string
  testCaseID: string
  testCaseName: string
  testCaseCode: string
  createdByMail: string
  createdByName: string
  certificationID: string
  environment: string
  timeStart: string
  timeEnd?: string
  state: "Running" | "passed" | "failed" | "undefined"
  resultExecution?: string
  available: "true" | "false"
  ttlExecution?: number
}

export interface ResultSuccess {
  cod: number
  description: string
}

export interface AuthUser {
  id: string
  email: string
  name: string
}

export interface AuthBodyIdRequest<E> {
  id?: string
  user: AuthUser
  body?: E
}

export interface AuthIdRequest {
  id: string
  user: AuthUser
}

export interface AuthBodyRequest<E> {
  user: AuthUser
  body: E
}


export interface CertificationGroup {
  applicationID: string
  applicationName?: string
  certifications: Certification[]
}

export interface CertificationGroupByCategory {
  category: Category
  certificationsGrouped: CertificationGroup[]
}

export interface iteratorTestCases {
  createdByMail: string
  createdByName: string
  applicationID: string
  testCaseID: string
  testCaseName: string
  certificationID: string
  certificationTimeStart: string
  executionID?: string
  state?: string
  environment: string
  category: Category
}

export interface WithApplicationTestCaseID {
  applicationID: string
  testCaseID: string
  category: Category
}


export interface CucumberReport {
  description: string
  keyword: string
  name: string
  line: number
  id: string
  tags: string[]
  uri: string
  elements: ElementsCucumberReport[]
  statusReport: CucumberStatus
}

export interface DataCreateExecution {
  testCaseID: string
  testCaseName: string
  applicationID: string
  certificationID: string
  createdByMail: string
  createdByName: string
  certificationTimeStart: string
  environment: string
  executionID?: string
  state?: string
  category: Category
}

export interface DataExecutionSaveDynamoDB {
  state: string
}

export interface ElementsCucumberReport {
  id: string
  keyword: string
  line: number
  name: string
  tags: string[]
  type: string
  steps: Object[]
}

export interface ElementsReport {
  duration: number
  status: CucumberStatus
  id: string
  keyword: string
  line: number
  name: string
  tags: string[]
  type: string
  steps: StepsReport[]
}

export interface ExecutionGroup {
  applicationID: string
  executions: Execution[]
};

export interface StepsReport {
  keyword: string
  hidden: boolean
  match: object
  result: {
    status: CucumberStatus
    duration: number
  }
}

export interface WithApplicationTestCaseID {
  applicationID: string
  testCaseID: string
}

export type CucumberStatus = "passed" | "failed" | "skipped" | "undefined";


export interface Environmentbody {
  feature: string
  applicationID: string
  name: string
}

export interface DataEnv {
  applicationID: string
  body: {
    name: string
    data: Object
  }
}

export interface CustomEnv {
  applicationID: string
  category: Category
  data: Object[]
  name: string
  available?: string
  createdTime?: string
  createdByName?: string
  createdByMail?: string
  updateTime?: string
  updateByName?: string
  updateByMail?: string
}

export interface EnvironmentVariable {
  tvariable: string
  tvalue: string
}
