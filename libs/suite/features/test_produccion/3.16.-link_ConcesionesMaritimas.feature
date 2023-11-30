Feature: link Pago - MultasPatentesOtros - DECLARACIÓNPAGOSIMULTÁNEO - ConcesionesMaritimas
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Concesiones Marítimas

 Scenario: Validamos funcionalidad de links Concesiones Marítimas
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-15697 > a > span"
    And que se encontró un elemento "body > div:nth-child(16) > div:nth-child(1) > h1" con el texto "Concesiones Marítimas"
    Given que se encontró un elemento "body > app-root > app-dps > div > div" en el frame "#tgr-sp-contenedor-iframe > iframe" con el texto "FORMULARIO DECLARACION Y PAGO SIMULTANEO"

