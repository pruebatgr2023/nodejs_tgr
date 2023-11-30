Feature: link Pago - MultasPatentesOtros - DECLARACIÓNPAGOSIMULTÁNEO - SERNAPESCAPagoInformeAmbiental
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link SERNAPESCA Pago Informe Ambiental

 Scenario: Validamos funcionalidad de links SERNAPESCA Pago Informe Ambiental
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-15629 > a > span"
    And que se encontró un elemento "body > div:nth-child(16) > div:nth-child(1) > h1" con el texto "SERNAPESCA Pago Informe Ambiental"
    And se espera "5" segundos
    Given que se encontró un elemento "body > div:nth-child(19) > div" en el frame "#tgr-sp-contenedor-iframe > iframe" con el texto "Formulario de Declaración y Pago Simultáneo"