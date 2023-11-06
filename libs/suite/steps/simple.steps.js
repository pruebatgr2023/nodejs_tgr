"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const hooks_1 = require("../support/hooks");
const chai_1 = require("chai");
const cucumber_1 = require("cucumber");
// ./node_modules/cucumber/bin/cucumber-js suite/features/basic.feature --require suite/steps --require suite/pages --format json:cucumber_report.json
(0, cucumber_1.setDefaultTimeout)(30 * 1000);
(0, cucumber_1.Given)(/^que se encuentra en la url "([^"]*)"$/, async (url) => {
    await hooks_1.page.goto(url);
});
// clicked Path
const clickedByPath = async (xpath) => {
    return await hooks_1.page.click$x(`//${xpath}`);
};
(0, cucumber_1.Given)(/^que se cliquea el xpath "([^"]*)"$/, clickedByPath);
// clicked by text
const clickedByText = async (tag, tagText) => {
    return await hooks_1.page.click$x(`//${tag}[contains(., '${tagText}')]`);
};
(0, cucumber_1.Given)(/^que se cliquea el elemento "([^"]*)" con el texto "([^"]*)"$/, clickedByText);
(0, cucumber_1.When)(/^se cliquea el elemento "([^"]*)" con el texto "([^"]*)"$/, clickedByText);
// clicked by class
const clickedByClass = async (tag, tagClass) => {
    return await hooks_1.page.click(`${tag}.${tagClass}`);
};
(0, cucumber_1.Given)(/^que se cliquea el elemento "([^"]*)" con la clase "([^"]*)"$/, clickedByClass);
(0, cucumber_1.When)(/^se cliquea el elemento "([^"]*)" con la clase "([^"]*)"$/, clickedByClass);
const clickedByPage = async (tag) => {
    return await hooks_1.page.PageClick(tag);
};
(0, cucumber_1.Given)(/^que se cliquea el elemento de la pagina "([^"]*)"$/, clickedByPage);
(0, cucumber_1.When)(/^se cliquea el elemento de la pagina "([^"]*)"$/, clickedByPage);
// clicked by selector
const clickedBySelector = async (selector) => {
    return await hooks_1.page.click(selector);
};
(0, cucumber_1.Given)(/^que se cliquea el selector "([^"]*)"$/, clickedBySelector);
(0, cucumber_1.When)(/^se cliquea el selector "([^"]*)"$/, clickedBySelector);
// clicked by class and text
const clickedByClassText = async (tag, tagClass, tagText) => {
    return await hooks_1.page.click$x(`//${tag}.${tagClass}[contains(., '${tagText}')]`);
};
(0, cucumber_1.Given)(/^que se cliquea el elemento "([^"]*)" con la clase "([^"]*)" con el texto "([^"]*)"$/, clickedByClassText);
// clicked by id
const clickedById = async (tag, tagId) => {
    return await hooks_1.page.click(`${tag}#${tagId}`);
};
(0, cucumber_1.Given)(/^que se cliquea el elemento "([^"]*)" con la id "([^"]*)"$/, clickedById);
(0, cucumber_1.When)(/^se cliquea el elemento "([^"]*)" con la id "([^"]*)"$/, clickedById);
// dbclicked by id
const dbclickedById = async (tag, tagId) => {
    return await hooks_1.page.dbclick(`${tag}#${tagId}`);
};
(0, cucumber_1.Given)(/^que se cliquea dos veces el elemento "([^"]*)" con la id "([^"]*)"$/, dbclickedById);
(0, cucumber_1.When)(/^se cliquea dos veces el elemento "([^"]*)" con la id "([^"]*)"$/, dbclickedById);
// clicked by id to value
const clickedByIdToValue = async (tag, tagId, tagValue) => {
    return await hooks_1.page.click(`${tag}#${tagId}[value="${tagValue}"]`);
};
(0, cucumber_1.Given)(/^que se cliquea el elemento "([^"]*)" con la id "([^"]*)" con valor "([^"]*)"$/, clickedByIdToValue);
(0, cucumber_1.When)(/^se cliquea el elemento "([^"]*)" con la id "([^"]*)" con valor "([^"]*)"$/, clickedByIdToValue);
// select by id
const selectById = async (tag, tagId, tagValue) => {
    return await hooks_1.page.select(`${tag}#${tagId}`, tagValue);
};
(0, cucumber_1.Given)(/^que en el elemento "([^"]*)" con la id "([^"]*)" se seleccionó la opción con el valor "(["]*)"$/, selectById);
(0, cucumber_1.When)(/^en el elemento "([^"]*)" con la id "([^"]*)" se seleccionó la opción con el valor "([^"]*)"$/, selectById);
// select by selector
const selectSelector = async (tag, tagValue) => {
    return await hooks_1.page.select(`${tag}`, tagValue);
};
(0, cucumber_1.Given)(/^que en el elemento "([^"]*)" se seleccionó la opción con el valor "(["]*)"$/, selectSelector);
(0, cucumber_1.When)(/^en el elemento "([^"]*)" se seleccionó la opción con el valor "([^"]*)"$/, selectSelector);
// press a keyword
const pressKeyword = async (keyword) => {
    return await hooks_1.page.keyword(keyword);
};
(0, cucumber_1.Given)(/^que se presionó la tecla "([^"]*)"$/, pressKeyword);
(0, cucumber_1.When)(/^se presiona la tecla "([^"]*)" $/, pressKeyword);
// press a keyword down
const downKeyword = async (keyword) => {
    return await hooks_1.page.keywordDown(keyword);
};
(0, cucumber_1.Given)(/^que se mantiene presionada la tecla "([^"]*)"$/, downKeyword);
(0, cucumber_1.When)(/^se mantiene presionada la tecla "([^"]*)" $/, downKeyword);
// up a keyword
const upKeyword = async (keyword) => {
    return await hooks_1.page.keywordUp(keyword);
};
(0, cucumber_1.Given)(/^que se soltó la tecla "([^"]*)"$/, upKeyword);
(0, cucumber_1.When)(/^se suelta la tecla "([^"]*)" $/, upKeyword);
// search a element by attribute
const searchByAttribute = async (tag, value) => {
    (0, chai_1.expect)(await hooks_1.page.getAttribute(tag)).to.be.equal(value);
};
(0, cucumber_1.Given)(/^que se encontró un elemento "([^"]*)" con el atributo value "([^"]*)"$/, searchByAttribute);
(0, cucumber_1.Then)(/^se encuentra un elemento "([^"]*)" con el atributo value "([^"]*)"$/, searchByAttribute);
// search a element by text
const searchByText = async (tag, tagText) => {
    (0, chai_1.expect)(await hooks_1.page.getText(tag)).to.be.equal(tagText);
};
(0, cucumber_1.Given)(/^que se encontró un elemento "([^"]*)" con el texto "([^"]*)"$/, searchByText);
(0, cucumber_1.Then)(/^se encuentra un elemento "([^"]*)" con el texto "([^"]*)"$/, searchByText);
// search element by class
const searchByClass = async (tag, tagClass, tagText) => {
    (0, chai_1.expect)(await hooks_1.page.getText(`${tag}.${tagClass}`)).to.be.equal(tagText);
};
(0, cucumber_1.Given)(/^que se encontró un elemento "([^"]*)" con la clase "([^"]*)" con el texto "([^"]*)"$/, searchByClass);
(0, cucumber_1.Then)(/^se encuentra un elemento "([^"]*)" con la clase "([^"]*)" con el texto "([^"]*)"$/, searchByClass);
// search element by id
const searchById = async (tag, tagId, tagText) => {
    (0, chai_1.expect)(await hooks_1.page.getText(`${tag}#${tagId}`)).to.be.equal(tagText);
};
(0, cucumber_1.Given)(/^que se encontró un elemento "([^"]*)" con id "([^"]*)" con el texto "([^"]*)"$/, searchById);
(0, cucumber_1.Then)(/^se encuentra un elemento "([^"]*)" con id "([^"]*)" con el texto "([^"]*)"$/, searchById);
// search element by path
const searchByPath = async (xpath, xpathText) => {
    (0, chai_1.expect)(await hooks_1.page.text$x(`//${xpath}`)).to.be.equal(xpathText);
};
(0, cucumber_1.Given)(/^que se encontró el xpath "([^"]*)" con el texto "([^"]*)"$/, searchByPath);
(0, cucumber_1.Then)(/^se encuentra el xpath "([^"]*)" con el texto "([^"]*)"$/, searchByPath);
// add text a element by id
const addTextById = async (tag, tagId, textIn) => {
    return await hooks_1.page.addText(textIn, `${tag}#${tagId}`);
};
(0, cucumber_1.Given)(/^que en el elemento "([^"]*)" con id "([^"]*)" se ingresó el texto "([^"]*)"$/, addTextById);
(0, cucumber_1.When)(/^en el elemento "([^"]*)" con id "([^"]*)" se ingresa el texto "([^"]*)"$/, addTextById);
// add text a element by class
const addTextByClass = async (tag, tagClass, docString) => {
    return await hooks_1.page.addTextElementClass(docString, tag, tagClass);
};
(0, cucumber_1.Given)(/^que en el elemento "([^"]*)" con la clase "([^"]*)" se ingresó el texto$/, addTextByClass);
// add text a element by selector
const addTextBySelector = async (tag, textIn) => {
    return await hooks_1.page.addText(textIn, tag);
};
(0, cucumber_1.Given)(/^que en el elemento "([^"]*)" se ingresó el texto "([^"]*)"$/, addTextBySelector);
(0, cucumber_1.When)(/^en el elemento "([^"]*)" se ingresa el texto "([^"]*)"$/, addTextBySelector);
// delay
const delay = async (timer) => {
    return await hooks_1.page.delay(Number(timer) * 1000);
};
(0, cucumber_1.Given)(/^que se esperó "([^"]*)" segundos$/, delay);
(0, cucumber_1.Then)(/^se espera "([^"]*)" segundos$/, delay);
(0, cucumber_1.Given)(/^que se hace foco a un elemento "([^"]*)" con la clase "([^"]*)"$/, async (tag, tagClass) => {
    await hooks_1.page.focus(`${tag}.${tagClass}`);
});
// change tab page
const selectTabPage = async (index) => {
    return await hooks_1.page.gotoTab(Number(index));
};
(0, cucumber_1.Given)(/^que se cambió a la pestaña "([^"]*)"$/, selectTabPage);
(0, cucumber_1.Then)(/^se cambia a la pestaña "([^"]*)"$/, selectTabPage);
// checked value attribute
const valueCheckBox = async (selector, attribute, value) => {
    (0, chai_1.expect)(await hooks_1.page.getAttributeSelector(selector, attribute)).to.be.equal(value);
};
(0, cucumber_1.Given)(/^que en el elemento "([^"]*)" con el atributo "([^"]*)" obtuvo el valor "([^"]*)"$/, valueCheckBox);
(0, cucumber_1.Then)(/^en el elemento "([^"]*)" con el atributo "([^"]*)" tiene el valor "([^"]*)"$/, valueCheckBox);
// checked value attribute by id
const valueCheckBoxById = async (selector, selectorId, attribute, value) => {
    (0, chai_1.expect)(await hooks_1.page.getAttributeSelector(`${selector}#${selectorId}`, attribute)).to.be.equal(value);
};
(0, cucumber_1.Given)(/^que en el elemento "([^"]*)" con la id "([^"]*)" con el atributo "([^"]*)" obtuvo el valor "([^"]*)"$/, valueCheckBoxById);
(0, cucumber_1.Then)(/^en el elemento "([^"]*)" con la id "([^"]*)" con el atributo "([^"]*)" tiene el valor "([^"]*)"$/, valueCheckBoxById);
// get Text value attribute
const textFrameElement = async (selector, frame, textSelector) => {
    (0, chai_1.expect)(await hooks_1.page.getTextElementByFrameSet(frame, selector)).to.be.equal(textSelector);
};
(0, cucumber_1.Given)(/^que se encontró un elemento "([^"]*)" en el frame "([^"]*)" con el texto "([^"]*)"$/, textFrameElement);
//Then(/^en el elemento "([^"]*)" con la id "([^"]*)" con el atributo "([^"]*)" tiene el valor "([^"]*)"$/, textFrameElement)
// clicked a element in frame
const clickFrameElement = async (selector, frame) => {
    return await hooks_1.page.clickElementByFrameSet(frame, selector);
};
(0, cucumber_1.Given)(/^que se cliquea el elemento "([^"]*)" en el frame "([^"]*)"$/, clickFrameElement);
const selectFrameElement = async (selector, value, frame) => {
    return await hooks_1.page.selectElementByFrameSet(frame, selector, value);
};
(0, cucumber_1.Given)(/^que se cliquea el elemento "([^"]*)" se seleccionó la opción con el valor "([^"]*)" en el frame "([^"]*)"$/, selectFrameElement);
const addTextFrameElement = async (selector, value, frame) => {
    return await hooks_1.page.addTextElementByFrameSet(frame, selector, value);
};
(0, cucumber_1.Given)(/^que en el elemento "([^"]*)" se ingresó el texto "([^"]*)" en el frame "([^"]*)"$/, addTextFrameElement);
//# sourceMappingURL=simple.steps.js.map