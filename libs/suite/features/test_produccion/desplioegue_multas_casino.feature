Feature: despliegue de link 


Scenario: reconocemos elementos menu princial, ingresamos a pago y reconocemos links del menú multas, patentes y otros
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-16741 > a > span"
    And se espera "2" segundos
    And que se encontró un elemento "#id-div-idp-titulo > b" con el texto "Te damos la bienvenida"
    When se cliquea el elemento de la pagina "#id-a-idp-sitioTgr > label > strong"
    And se espera "5" segundos