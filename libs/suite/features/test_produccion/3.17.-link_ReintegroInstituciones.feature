Feature: link Pago - MultasPatentesOtros - DECLARACIÓNPAGOSIMULTÁNEO - ReintegroInstituciones
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Reintegro de Instituciones

 Scenario: Validamos funcionalidad de links Reintegro de Instituciones
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-16474 > a > span"
    And que se encontró un elemento "body > div:nth-child(16) > div:nth-child(1) > h1" con el texto "Reintegro de Instituciones"
    Given que se encontró un elemento "body > app-root > app-dps > div > div" en el frame "#tgr-sp-contenedor-iframe > iframe" con el texto "FORMULARIO DECLARACION Y PAGO SIMULTANEO"

