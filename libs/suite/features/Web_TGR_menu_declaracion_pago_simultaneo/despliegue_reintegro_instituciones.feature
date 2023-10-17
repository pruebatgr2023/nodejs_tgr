Feature: despliegue de link
reintegro intituciones
Scenario: reconocemos elementos menu princial, ingresamos a pago y reconocemos links del menú multas, patentes y otros
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-16474 > a > span"
    And que se encontró un elemento "body > div:nth-child(16) > div:nth-child(1) > h1" con el texto "Reintegro de Instituciones"
    Given que se encontró un elemento "body > app-root > app-dps > div > div" en el frame "#tgr-sp-contenedor-iframe > iframe" con el texto "FORMULARIO DECLARACION Y PAGO SIMULTANEO"

