import { Browser, Page, Cookie } from 'puppeteer';
import { Cookies } from 'suite/support/hooks';

const chromium = require('chrome-aws-lambda');

export class BasicPage {
  private _browser!: Browser;
  private _page!: Page;
  private _pages!: Page[];

  public async init() {
    try {
      this._browser = await chromium.puppeteer.launch({
        args: chromium.args,
        defaultViewport: { width: 1366, height: 768 },
        executablePath: await chromium.executablePath,
        headless: false, // antes de cualquier push dejar en true
        // slowMo: 100
      });
      //this._page = await this._browser.newPage();
      this._pages = await this._browser.pages();
      this._page = this._pages[0]
      await this._page.setUserAgent("Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10136");
      //await this._page.setViewport({ width: 1366, height: 768 })
    } catch (error) /* istanbul ignore next */ {
      throw new Error(toString());
    }
  }

  public async close() {
    try {
      await this._page.close(); // antes de cualquier push dejar descomentado
      await this._browser.close(); // antes de cualquier push dejar descomentado
    } catch (error) /* istanbul ignore next */ {
      throw new Error(toString());
    }
  }

  async goto(url: string) {
    this._page.waitForNavigation()
    return await this._page.goto(url);
  }

  async gotoTab(index: number) {
    this._pages = await this._browser.pages();
    this._page = this._pages[index]
  }

  async title() {
    return await this._page.title();
  }

  async keyword(key: string) {
    return await this._page.keyboard.press(key)
  }

  async keywordDown(key: string) {
    return await this._page.keyboard.down(key)
  }

  async keywordUp(key: string) {
    return await this._page.keyboard.up(key)
  }

  async getText(selector: string) {
    await this._page.waitForSelector(selector)
    return await this._page.$eval(selector, el => el.textContent);
  }

  async getAttribute(selector: string) {
    return await this._page.$(selector);
  }

  async addText(textIn: string, selector: string) {
    await this._page.waitForSelector(selector)
    await this._page.focus(selector)
    await this._page.click(selector)
    return await this._page.type(selector, textIn, { delay: 20 })
  }

  /*   async getTextSomeElement(tag: string) {
      const nodes = await this._page.$x(tag)
      this._page.
    } */

  async addTextElementClass(textIn: string, tag: string, tagClass: string) {
    //this._page.waitForNavigation()
    await this._page.waitForSelector(tag + '.' + tagClass)
    await this._page.focus(tag + '.' + tagClass)
    await this._page.click(tag + '.' + tagClass)
    return await this._page.type(tag + '.' + tagClass, textIn, { delay: 20 })
  }

  async focus(selector: string): Promise<void> {
    //TODO revisar porque no realiza ninguna funcionalidad
    return await this._page.focus(selector)
  }

  async click(selector: string) {
    await this._page.waitForSelector(selector)
    const element = await this._page.$(selector);
    if (element) {
      await element.click();
    }
  }
  async PageClick(selector:string){
    await this._page.waitForSelector(selector)
    await this._page.click(selector)
  }

  async dbclick(selector: string) {
    await this._page.waitForSelector(selector)
    const element = await this._page.$(selector);
    if (element) {
      await element.click({ clickCount: 2 });
    }
  }

  async click$x(xpath: string) {
    await this._page.waitForXPath(xpath);
    await this._page.$x(xpath).then(node => node[0].click());
  }

  async text$x(xpath: string) {
    //await this._page.waitFor(5000)
    await this._page.waitForXPath(xpath)
    const texts = await this._page.$x(xpath)
    const xpathTextContent = await texts[0].getProperty('textContent')
    const text = await xpathTextContent.jsonValue();
    return text;
  }

  async select(selector: string, value: string) {
    await this._page.waitForSelector(selector)
    return await this._page.select(selector, value)
  }

  async screenshot(img: string): Promise<Buffer> {
    return await this._page.screenshot({ path: "/tmp/" + img + ".png", fullPage: true });
  }

  async delay(time: number) {
    return await this._page.waitFor(time);
  }

  public async setCookies(cookies: Cookies[]) {
    //console.log(cookies)
    const client = await this._page.target().createCDPSession()
    await client.send('Network.enable')
    await this._page.setCookie(...cookies)
  }

  public async setHeaders(executionID: string, bucketKey: string) {
    this._page.setRequestInterception(true);
    this._page.on('request', request => {
      if (/http[s]?:\/\/[^\/]*(amazonaws.com|tgr.cl|tesoreria.cl|nr-data.net|tegere.info)/.test(request.url())) {
        const headers = request.headers();
        headers['tgr-ats-executionid'] = executionID;
        headers['tgr-ats-bucketkey'] = bucketKey;
        /* headers['TGR-ATS-ExecutionID'] = executionID;
        headers['TGR-ATS-BucketKey'] = bucketKey; */
        request.continue({ headers })
      } else {
        request.continue();
      }
    });
  }

  public async getAttributeSelector(selector:string, attr:string){
    await this._page.waitForSelector(selector)
    const value = await this._page.evaluate(`document.querySelector("${selector}").getAttribute("${attr}")`)
    return value
  }

  public async getTextElementByFrameSet(frameset:string, selector:string){
    await this._page.waitForSelector(frameset)
    const framesetMaster = await this._page.$(frameset)
    const frame = await framesetMaster?.contentFrame()
    await frame?.waitForSelector(selector)
    return await frame?.$eval(selector, selector => selector.textContent)
  }

  public async clickElementByFrameSet(frameset:string, selector:string){
    await this._page.waitForSelector(frameset)
    const framesetMaster = await this._page.$(frameset)
    const frame = await framesetMaster?.contentFrame()
    await frame?.waitForSelector(selector)
    const element = await frame?.$(selector)
    if (element)
      await element.click()
  }

  public async selectElementByFrameSet(frameset:string, selector:string, value: string){
    await this._page.waitForSelector(frameset)
    const framesetMaster = await this._page.$(frameset)
    const frame = await framesetMaster?.contentFrame()
    await frame?.waitForSelector(selector)
    await frame?.select(selector, value)
  }

  public async addTextElementByFrameSet(frameset:string, selector:string, value: string){
    await this._page.waitForSelector(frameset)
    const framesetMaster = await this._page.$(frameset)
    const frame = await framesetMaster?.contentFrame()
    await frame?.waitForSelector(selector)
    await frame?.type(selector, value, { delay: 20 })
  }

}
