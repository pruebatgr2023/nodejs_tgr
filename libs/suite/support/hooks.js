"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.page = void 0;
const basic_page_1 = require("../pages/basic.page");
const cucumber_1 = require("cucumber");
const page = new basic_page_1.BasicPage();
exports.page = page;
/* {"cookies":[{"name":"cookie", "value":"mundo", "domain":"nr-data.net", "url":"https://bbrr.env.tegere.info", "secure":true, "sameSite":"None" }, {"name":"cookie2", "value":"2", "domain":"nr-data.net", "url":"https://bbrr.env.tegere.info", "secure":true, "sameSite":"None"}]} */
(0, cucumber_1.setWorldConstructor)(class TestWorld {
    constructor({ parameters, attach }) {
        this.attach = attach;
        /* this.cookies = parameters.cookies
        this.name = parameters.name
        this.value = parameters.value
        this.domain = parameters.domain */
        this.bucketKey = parameters.bucketKey;
        this.executionID = parameters.executionID;
    }
});
(0, cucumber_1.Before)(async function () {
    await page.setHeaders(this.executionID, this.bucketKey);
    //await page.setCookies(this.name, this.value, this.domain);
});
(0, cucumber_1.BeforeAll)({ timeout: 1000 * 1000 }, async () => {
    await page.init();
});
/* istanbul ignore next */
(0, cucumber_1.After)(async function (scenario) {
    //console.log(this.cookies)
    //await page.setCookies(this.cookies);
    if (scenario.result.status === cucumber_1.Status.FAILED) {
        const name_img = scenario.pickle.name.split(" ").join("_") + "_" + new Date().getTime();
        await page.screenshot(name_img);
        this.attach(JSON.stringify({ screenshot_error: `${name_img}.png` }));
    }
});
(0, cucumber_1.AfterAll)({ timeout: 1000 * 1000 }, async () => {
    await page.close();
});
//6bagshqvei.execute-api.us-east-1.amazonaws.com
//# sourceMappingURL=hooks.js.map