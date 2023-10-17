# tgr-automated-test-suite-backend
---
## REQUIREMENTS
* **Install** NodeJS [Download from official page](https://nodejs.org/es/download/)
* **Install** GIT [Download from official page](https://git-scm.com/downloads)

install the following libraries globally

* **Install** Typescript
```
npm install -g typescript
```

* **Install** claudia
```
npm install -g claudia
```

* **Install** AWS CLI V2 [Official reference AWS](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

* **Install** AWS SAM CLI [Official reference AWS](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html)

---

## CONFIGURE
* **Configure** AWS CLI [Official reference AWS](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html#cli-quick-configuration)
```
aws configure
```
Replace them with your own values as described in the following sections.
```
AWS Access Key ID [None]: ****************
AWS Secret Access Key [None]: ****************
Default region name [None]: us-east-1
Default output format [None]: json
```

---
## DEPLOY

### Development environment 
To deploy in development environment.

```bash
bash deploy.sh ${STACK_NAME} ${BUCKET_FRONT} ${S3_BUCKET}
```
where:
* ${STACK_NAME} This is the stack name, along with the initials of the developed (example: DV-tgr-automated-test-suite-backend)
* ${BUCKET_FRONT} This is the bucket where the front is hosted, by default: tgr-s3-front-example.
* ${S3_BUCKET} This is the bucket where the front is hosted, by default: pit-cf-templates

### Production environment 
To deploy in production environment.

```bash
bash deploy.sh ${STACK_NAME} ${BUCKET_FRONT} ${S3_BUCKET}
```
where:
* ${STACK_NAME} This is the stack name (example: tgr-automated-test-suite-backend)
* ${BUCKET_FRONT} This is the bucket where the front is hosted, by default: tgr-s3-front-example.
* ${S3_BUCKET} This is the bucket where the front is hosted, by default: pit-cf-templates

## Local Use
* go to src folder and run 
```
npm install
```
* go to src/libs folder and run 
```
npm install
```
