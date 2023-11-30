Feature: link Pago - MultasPatentesOtros - MULTAS - TribunalCuentas
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Tribunal de Cuentas

 Scenario: Validamos funcionalidad de links Tribunal de Cuentas
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-16162 > a > span"
    And que se encontró un elemento "body > div:nth-child(16) > div:nth-child(1) > h1" con el texto "Tribunal de Cuentas"
    Given que se encontró un elemento "body > app-root > app-dps > form > table > tr > td:nth-child(1) > span.encabezadoTituloTGR" en el frame "#tgr-sp-contenedor-iframe > iframe" con el texto "TESORERÍA GENERAL DE LA REPÚBLICA"
    And se espera "5" segundos