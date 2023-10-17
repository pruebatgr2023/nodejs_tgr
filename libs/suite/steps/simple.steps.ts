import { page } from '../support/hooks';
import { expect } from 'chai';
import { Given, Then, When, setDefaultTimeout } from 'cucumber';
// ./node_modules/cucumber/bin/cucumber-js suite/features/basic.feature --require suite/steps --require suite/pages --format json:cucumber_report.json
setDefaultTimeout(30 * 1000);

Given(/^que se encuentra en la url "([^"]*)"$/,
  async (url: string) => {
    await page.goto(url);
  });

// clicked Path
const clickedByPath = async (xpath: string) => {
  return await page.click$x(`//${xpath}`);
}
Given(/^que se cliquea el xpath "([^"]*)"$/,clickedByPath)

// clicked by text
const clickedByText = async (tag: string, tagText: string) => {
  return await page.click$x(`//${tag}[contains(., '${tagText}')]`);
}
Given(/^que se cliquea el elemento "([^"]*)" con el texto "([^"]*)"$/, clickedByText)
When(/^se cliquea el elemento "([^"]*)" con el texto "([^"]*)"$/,clickedByText)

// clicked by class
const clickedByClass = async (tag: string, tagClass: string) => {
  return await page.click(`${tag}.${tagClass}`);
}
Given(/^que se cliquea el elemento "([^"]*)" con la clase "([^"]*)"$/,clickedByClass)
When(/^se cliquea el elemento "([^"]*)" con la clase "([^"]*)"$/, clickedByClass)


const clickedByPage = async (tag: string) => {
  return await page.PageClick(tag);
}
Given(/^que se cliquea el elemento de la pagina "([^"]*)"$/,clickedByPage)
When(/^se cliquea el elemento de la pagina "([^"]*)"$/, clickedByPage)

// clicked by selector
const clickedBySelector = async (selector: string) => {
  return await page.click(selector);
}
Given(/^que se cliquea el selector "([^"]*)"$/,clickedBySelector)
When(/^se cliquea el selector "([^"]*)"$/, clickedBySelector)

// clicked by class and text
const clickedByClassText = async (tag: string, tagClass: string, tagText: string) => {
  return await page.click$x(`//${tag}.${tagClass}[contains(., '${tagText}')]`);
}
Given(/^que se cliquea el elemento "([^"]*)" con la clase "([^"]*)" con el texto "([^"]*)"$/,clickedByClassText)


// clicked by id
const clickedById = async (tag: string, tagId: string) => {
  return await page.click(`${tag}#${tagId}`);
}
Given(/^que se cliquea el elemento "([^"]*)" con la id "([^"]*)"$/,clickedById)
When(/^se cliquea el elemento "([^"]*)" con la id "([^"]*)"$/,clickedById)

// dbclicked by id
const dbclickedById = async (tag: string, tagId: string) => {
  return await page.dbclick(`${tag}#${tagId}`);
}
Given(/^que se cliquea dos veces el elemento "([^"]*)" con la id "([^"]*)"$/,dbclickedById)
When(/^se cliquea dos veces el elemento "([^"]*)" con la id "([^"]*)"$/,dbclickedById)

// clicked by id to value
const clickedByIdToValue = async (tag: string, tagId: string, tagValue: string) => {
  return await page.click(`${tag}#${tagId}[value="${tagValue}"]`);
}
Given(/^que se cliquea el elemento "([^"]*)" con la id "([^"]*)" con valor "([^"]*)"$/,clickedByIdToValue)
When(/^se cliquea el elemento "([^"]*)" con la id "([^"]*)" con valor "([^"]*)"$/,clickedByIdToValue)

// select by id
const selectById = async (tag: string, tagId: string, tagValue: string) => {
  return await page.select(`${tag}#${tagId}`, tagValue); 
}
Given(/^que en el elemento "([^"]*)" con la id "([^"]*)" se seleccionó la opción con el valor "(["]*)"$/,selectById)
When(/^en el elemento "([^"]*)" con la id "([^"]*)" se seleccionó la opción con el valor "([^"]*)"$/,selectById)

// select by selector
const selectSelector = async (tag: string, tagValue: string) => {
  return await page.select(`${tag}`, tagValue);
}
Given(/^que en el elemento "([^"]*)" se seleccionó la opción con el valor "(["]*)"$/,selectSelector)
When(/^en el elemento "([^"]*)" se seleccionó la opción con el valor "([^"]*)"$/,selectSelector)

// press a keyword
const pressKeyword = async (keyword: string) => {
  return await page.keyword(keyword);
}
Given(/^que se presionó la tecla "([^"]*)"$/,pressKeyword)
When(/^se presiona la tecla "([^"]*)" $/,pressKeyword)

// press a keyword down
const downKeyword = async (keyword: string) => {
  return await page.keywordDown(keyword);
}
Given(/^que se mantiene presionada la tecla "([^"]*)"$/,downKeyword)
When(/^se mantiene presionada la tecla "([^"]*)" $/,downKeyword)

// up a keyword
const upKeyword = async (keyword: string) => {
  return await page.keywordUp(keyword);
}
Given(/^que se soltó la tecla "([^"]*)"$/,upKeyword)
When(/^se suelta la tecla "([^"]*)" $/,upKeyword)
// search a element by attribute
const searchByAttribute =  async (tag: string, value: string) => {
  expect(await page.getAttribute(tag)).to.be.equal(value);
}
Given(/^que se encontró un elemento "([^"]*)" con el atributo value "([^"]*)"$/,searchByAttribute)
Then(/^se encuentra un elemento "([^"]*)" con el atributo value "([^"]*)"$/,searchByAttribute)
// search a element by text
const searchByText =  async (tag: string, tagText: string) => {
  expect(await page.getText(tag)).to.be.equal(tagText);
}
Given(/^que se encontró un elemento "([^"]*)" con el texto "([^"]*)"$/,searchByText)
Then(/^se encuentra un elemento "([^"]*)" con el texto "([^"]*)"$/,searchByText)

// search element by class
const searchByClass = async (tag: string, tagClass: string, tagText: string) => {
  expect(await page.getText(`${tag}.${tagClass}`)).to.be.equal(tagText);
}
Given(/^que se encontró un elemento "([^"]*)" con la clase "([^"]*)" con el texto "([^"]*)"$/,searchByClass)
Then(/^se encuentra un elemento "([^"]*)" con la clase "([^"]*)" con el texto "([^"]*)"$/,searchByClass)

// search element by id
const searchById = async (tag: string, tagId: string, tagText: string) => {
  expect(await page.getText(`${tag}#${tagId}`)).to.be.equal(tagText);
}
Given(/^que se encontró un elemento "([^"]*)" con id "([^"]*)" con el texto "([^"]*)"$/,searchById)
Then(/^se encuentra un elemento "([^"]*)" con id "([^"]*)" con el texto "([^"]*)"$/,searchById)

// search element by path
const searchByPath = async (xpath: string, xpathText: string) => {
  expect (await page.text$x(`//${xpath}`)).to.be.equal(xpathText);
}
Given(/^que se encontró el xpath "([^"]*)" con el texto "([^"]*)"$/, searchByPath)
Then(/^se encuentra el xpath "([^"]*)" con el texto "([^"]*)"$/, searchByPath)

// add text a element by id
const addTextById = async (tag: string, tagId: string, textIn: string) => {
  return await page.addText(textIn, `${tag}#${tagId}`);
}
Given(/^que en el elemento "([^"]*)" con id "([^"]*)" se ingresó el texto "([^"]*)"$/,addTextById)
When(/^en el elemento "([^"]*)" con id "([^"]*)" se ingresa el texto "([^"]*)"$/,addTextById)

// add text a element by class
const addTextByClass = async (tag: string, tagClass: string, docString: string) => {
  return await page.addTextElementClass(docString, tag, tagClass);
}
Given(/^que en el elemento "([^"]*)" con la clase "([^"]*)" se ingresó el texto$/,addTextByClass)

// add text a element by selector
const addTextBySelector = async (tag: string, textIn: string) => {
  return await page.addText(textIn, tag);
}
Given(/^que en el elemento "([^"]*)" se ingresó el texto "([^"]*)"$/,addTextBySelector)
When(/^en el elemento "([^"]*)" se ingresa el texto "([^"]*)"$/,addTextBySelector)

// delay
const delay = async (timer: string) => {
  return await page.delay(Number(timer) * 1000);
}
Given(/^que se esperó "([^"]*)" segundos$/, delay)
Then(/^se espera "([^"]*)" segundos$/, delay)

Given(/^que se hace foco a un elemento "([^"]*)" con la clase "([^"]*)"$/,
  async (tag: string, tagClass: string) => {
    await page.focus(`${tag}.${tagClass}`);
  })

// change tab page
const selectTabPage = async (index: string) => {
  return await page.gotoTab(Number(index))
}
Given(/^que se cambió a la pestaña "([^"]*)"$/, selectTabPage)
Then(/^se cambia a la pestaña "([^"]*)"$/, selectTabPage)

// checked value attribute
const valueCheckBox = async (selector: string, attribute :string, value: string) => {
  expect(await page.getAttributeSelector(selector, attribute)).to.be.equal(value)
}
Given(/^que en el elemento "([^"]*)" con el atributo "([^"]*)" obtuvo el valor "([^"]*)"$/, valueCheckBox)
Then(/^en el elemento "([^"]*)" con el atributo "([^"]*)" tiene el valor "([^"]*)"$/, valueCheckBox)
// checked value attribute by id
const valueCheckBoxById = async (selector: string, selectorId: string,attribute:string, value: string) => {
  expect(await page.getAttributeSelector(`${selector}#${selectorId}`, attribute)).to.be.equal(value)
}
Given(/^que en el elemento "([^"]*)" con la id "([^"]*)" con el atributo "([^"]*)" obtuvo el valor "([^"]*)"$/, valueCheckBoxById)
Then(/^en el elemento "([^"]*)" con la id "([^"]*)" con el atributo "([^"]*)" tiene el valor "([^"]*)"$/, valueCheckBoxById)
// get Text value attribute
const textFrameElement = async (selector: string, frame: string, textSelector: string) => {
  expect(await page.getTextElementByFrameSet(frame, selector)).to.be.equal(textSelector)
}
Given(/^que se encontró un elemento "([^"]*)" en el frame "([^"]*)" con el texto "([^"]*)"$/, textFrameElement)
//Then(/^en el elemento "([^"]*)" con la id "([^"]*)" con el atributo "([^"]*)" tiene el valor "([^"]*)"$/, textFrameElement)

// clicked a element in frame
const clickFrameElement = async ( selector: string, frame: string)=>{
  return await page.clickElementByFrameSet(frame, selector)
}
Given(/^que se cliquea el elemento "([^"]*)" en el frame "([^"]*)"$/, clickFrameElement)


const selectFrameElement = async ( selector: string, value: string, frame: string )=>{
  return await page.selectElementByFrameSet(frame, selector, value)
}
Given(/^que se cliquea el elemento "([^"]*)" se seleccionó la opción con el valor "([^"]*)" en el frame "([^"]*)"$/, selectFrameElement)


const addTextFrameElement = async ( selector: string, value: string, frame: string )=>{
  return await page.addTextElementByFrameSet(frame, selector, value)
}
Given(/^que en el elemento "([^"]*)" se ingresó el texto "([^"]*)" en el frame "([^"]*)"$/, addTextFrameElement)