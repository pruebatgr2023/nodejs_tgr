# RELEASE
### V 0.1.0
This version implements the following methods:
* feature get: Returns the complete listing in the table.
* feature post: Returns data stored in DynamoDB
* feature / id GET: Returns the element specified in the id.
* feature / id PUT: Returns the confirmation of the update of the data specified in the id.
* feature / id DELETE: Returns the confirmation of the deletion in DynamoDB of the data.

### V 0.2.0
This version delete methods of V0.1.0, add the following methods:
* application get: Return array of proyect where availble = true.
* application post: Add model Application in tgr-ats_dev_Application
* application/{applicationID} put: Update application propierties in tgr-ats_dev_Application
* application/{applicationID} delete: Disable application, available = false.
* application/{applicationID}/testCase get: Return array of testCase where availble = true and applicationID = applicationID.
* application/{applicationID}/testCase post: Add model TestCase in tgr-ats_dev_TestCase
* application/{applicationID}/testCase/{testCaseID} put: Update application propierties in tgr-ats_dev_TestCase.
* application/{applicationID}/testCase/{testCaseID} delete: Disable testCase, available = false.
* application/{applicationID}/testCase/{testCaseID}/execution get: Return array of execution where testCaseID = testCaseID.
* application/{applicationID}/testCase/{testCaseID}/execution post: Add model execution in tgr-ats_dev_Execution.

#### V 0.2.1
* FIX table name for testCase in dynamoDB.
* Add method getID for application, testCase and execution.
* FIX repair variable "avaible" for "available".
* Refactor Delete branch "carlos" and "test".
* Refactor Change response lambda.
* ADD CI. 
* Refactor Rename Project with Application and UseCase with TestCase.

### V 0.3.0
* Add Cognito and Amplify.
* Add Gherkin code Execution of a test case.
* Add CI/CD.
* Remove CORS.
* Add Tags to test cases and executions.
* FIX return resultExecution in Execution GetID.
* REFACTOR Change 'status' for 'state'.
* REFACTOR CreateExecution change timeout to 900.

## V1.0.0
* Add Api's for Dashboard.
* Refactor to CucumbertReport.
* Add evidence screenshot.
* Save evidence in S3.
* Use moment.js.

#### V1.0.1
* Add new steps in basic.page.ts.
* Add new function in simple.step.ts.
* Change ID of Application, Certification, Execution and Test Cases to UUID.
* Date in format ISO.

### V1.1.0
* Add new steps in basic.page.ts.
* Add environment in testCases Web and testCases Service.
* Run testCase with newman.
* Use category in testcase, execution, certification and environment.
* Add TTL in table Dynamo for executions and certification.
