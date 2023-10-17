import {BasicPage} from "../pages/basic.page";
import {After, AfterAll, BeforeAll, Status, setWorldConstructor, Before} from "cucumber";

const page: BasicPage = new BasicPage();


export interface Cookies {
  name:string
  value:string
  domain:string
  url:string
  secure:boolean
  sameSite:"Strict" | "Lax"
}
interface WorldProps {
  parameters: {
    /* cookies: Cookies[]
    name:string
    value:string
    domain:string */
    executionID:string
    bucketKey:string
  },
  attach:any
}
/* {"cookies":[{"name":"cookie", "value":"mundo", "domain":"nr-data.net", "url":"https://bbrr.env.tegere.info", "secure":true, "sameSite":"None" }, {"name":"cookie2", "value":"2", "domain":"nr-data.net", "url":"https://bbrr.env.tegere.info", "secure":true, "sameSite":"None"}]} */

setWorldConstructor(
  class TestWorld {
    attach:any
    /* cookies:Cookies[]
    name:string
    value:string
    domain:string */
    executionID:string
    bucketKey:string

    constructor({parameters, attach}: WorldProps) {
      this.attach = attach
      /* this.cookies = parameters.cookies
      this.name = parameters.name
      this.value = parameters.value
      this.domain = parameters.domain */
      this.bucketKey = parameters.bucketKey
      this.executionID = parameters.executionID
    }
  }
)

Before(async function () {
  await page.setHeaders(this.executionID, this.bucketKey)
  //await page.setCookies(this.name, this.value, this.domain);
});

BeforeAll({timeout: 1000 * 1000}, async () => {
  await page.init();
});

/* istanbul ignore next */
After(async function (scenario) {
  //console.log(this.cookies)
  //await page.setCookies(this.cookies);
  if (scenario.result.status === Status.FAILED) {
    const name_img: string = scenario.pickle.name.split(" ").join("_") + "_"+ new Date().getTime()
    await page.screenshot(name_img);
    this.attach(JSON.stringify({screenshot_error: `${name_img}.png`}));
  }
});

AfterAll({timeout: 1000 * 1000}, async () => {
  await page.close();
});

/**
 * export the instance of the page
 */
export {page};

//6bagshqvei.execute-api.us-east-1.amazonaws.com
