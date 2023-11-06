"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.BasicPage = void 0;
const chromium = require('chrome-aws-lambda');
class BasicPage {
    async init() {
        try {
            this._browser = await chromium.puppeteer.launch({
                args: chromium.args,
                defaultViewport: { width: 1920, height: 1080 },
                executablePath: await chromium.executablePath,
                headless: true, // antes de cualquier push dejar en true
                // slowMo: 100
            });
            //this._page = await this._browser.newPage();
            this._pages = await this._browser.pages();
            this._page = this._pages[0];
            await this._page.setUserAgent("Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10136");
            //await this._page.setViewport({ width: 1366, height: 768 })
        }
        catch (error) /* istanbul ignore next */ {
            throw new Error(toString());
        }
    }
    async close() {
        try {
            await this._page.close(); // antes de cualquier push dejar descomentado
            await this._browser.close(); // antes de cualquier push dejar descomentado
        }
        catch (error) /* istanbul ignore next */ {
            throw new Error(toString());
        }
    }
    async goto(url) {
        this._page.waitForNavigation();
        return await this._page.goto(url);
    }
    async gotoTab(index) {
        this._pages = await this._browser.pages();
        this._page = this._pages[index];
    }
    async title() {
        return await this._page.title();
    }
    async keyword(key) {
        return await this._page.keyboard.press(key);
    }
    async keywordDown(key) {
        return await this._page.keyboard.down(key);
    }
    async keywordUp(key) {
        return await this._page.keyboard.up(key);
    }
    async getText(selector) {
        await this._page.waitForSelector(selector);
        return await this._page.$eval(selector, el => el.textContent);
    }
    async getAttribute(selector) {
        return await this._page.$(selector);
    }
    async addText(textIn, selector) {
        await this._page.waitForSelector(selector);
        await this._page.focus(selector);
        await this._page.click(selector);
        return await this._page.type(selector, textIn, { delay: 20 });
    }
    /*   async getTextSomeElement(tag: string) {
        const nodes = await this._page.$x(tag)
        this._page.
      } */
    async addTextElementClass(textIn, tag, tagClass) {
        //this._page.waitForNavigation()
        await this._page.waitForSelector(tag + '.' + tagClass);
        await this._page.focus(tag + '.' + tagClass);
        await this._page.click(tag + '.' + tagClass);
        return await this._page.type(tag + '.' + tagClass, textIn, { delay: 20 });
    }
    async focus(selector) {
        //TODO revisar porque no realiza ninguna funcionalidad
        return await this._page.focus(selector);
    }
    async click(selector) {
        await this._page.waitForSelector(selector);
        const element = await this._page.$(selector);
        if (element) {
            await element.click();
        }
    }
    async PageClick(selector) {
        await this._page.waitForSelector(selector);
        await this._page.click(selector);
    }
    async dbclick(selector) {
        await this._page.waitForSelector(selector);
        const element = await this._page.$(selector);
        if (element) {
            await element.click({ clickCount: 2 });
        }
    }
    async click$x(xpath) {
        await this._page.waitForXPath(xpath);
        await this._page.$x(xpath).then(node => node[0].click());
    }
    async text$x(xpath) {
        //await this._page.waitFor(5000)
        await this._page.waitForXPath(xpath);
        const texts = await this._page.$x(xpath);
        const xpathTextContent = await texts[0].getProperty('textContent');
        const text = await xpathTextContent.jsonValue();
        return text;
    }
    async select(selector, value) {
        await this._page.waitForSelector(selector);
        return await this._page.select(selector, value);
    }
    async screenshot(img) {
        return await this._page.screenshot({ path: "/tmp/" + img + ".png", fullPage: true });
    }
    async delay(time) {
        return await this._page.waitFor(time);
    }
    async setCookies(cookies) {
        //console.log(cookies)
        const client = await this._page.target().createCDPSession();
        await client.send('Network.enable');
        await this._page.setCookie(...cookies);
    }
    async setHeaders(executionID, bucketKey) {
        this._page.setRequestInterception(true);
        this._page.on('request', request => {
            if (/http[s]?:\/\/[^\/]*(amazonaws.com|tgr.cl|tesoreria.cl|nr-data.net|tegere.info)/.test(request.url())) {
                const headers = request.headers();
                headers['tgr-ats-executionid'] = executionID;
                headers['tgr-ats-bucketkey'] = bucketKey;
                /* headers['TGR-ATS-ExecutionID'] = executionID;
                headers['TGR-ATS-BucketKey'] = bucketKey; */
                request.continue({ headers });
            }
            else {
                request.continue();
            }
        });
    }
    async getAttributeSelector(selector, attr) {
        await this._page.waitForSelector(selector);
        const value = await this._page.evaluate(`document.querySelector("${selector}").getAttribute("${attr}")`);
        return value;
    }
    async getTextElementByFrameSet(frameset, selector) {
        await this._page.waitForSelector(frameset);
        const framesetMaster = await this._page.$(frameset);
        const frame = await (framesetMaster === null || framesetMaster === void 0 ? void 0 : framesetMaster.contentFrame());
        await (frame === null || frame === void 0 ? void 0 : frame.waitForSelector(selector));
        return await (frame === null || frame === void 0 ? void 0 : frame.$eval(selector, selector => selector.textContent));
    }
    async clickElementByFrameSet(frameset, selector) {
        await this._page.waitForSelector(frameset);
        const framesetMaster = await this._page.$(frameset);
        const frame = await (framesetMaster === null || framesetMaster === void 0 ? void 0 : framesetMaster.contentFrame());
        await (frame === null || frame === void 0 ? void 0 : frame.waitForSelector(selector));
        const element = await (frame === null || frame === void 0 ? void 0 : frame.$(selector));
        if (element)
            await element.click();
    }
    async selectElementByFrameSet(frameset, selector, value) {
        await this._page.waitForSelector(frameset);
        const framesetMaster = await this._page.$(frameset);
        const frame = await (framesetMaster === null || framesetMaster === void 0 ? void 0 : framesetMaster.contentFrame());
        await (frame === null || frame === void 0 ? void 0 : frame.waitForSelector(selector));
        await (frame === null || frame === void 0 ? void 0 : frame.select(selector, value));
    }
    async addTextElementByFrameSet(frameset, selector, value) {
        await this._page.waitForSelector(frameset);
        const framesetMaster = await this._page.$(frameset);
        const frame = await (framesetMaster === null || framesetMaster === void 0 ? void 0 : framesetMaster.contentFrame());
        await (frame === null || frame === void 0 ? void 0 : frame.waitForSelector(selector));
        await (frame === null || frame === void 0 ? void 0 : frame.type(selector, value, { delay: 20 }));
    }
}
exports.BasicPage = BasicPage;
//# sourceMappingURL=basic.page.js.map