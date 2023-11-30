Feature: link Pago - MultasPatentesOtros - MULTAS - MultasJuzgados
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Multas Juzgados

 Scenario: Validamos funcionalidad de links Multas Juzgados
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-15895 > a > span"
    And que se encontró un elemento "body > div:nth-child(16) > div:nth-child(1) > h1" con el texto "Multas Juzgados"
    And se espera "3" segundos
    Given que se encontró un elemento "body > app-root > app-dps > div > div" en el frame "#tgr-sp-contenedor-iframe > iframe" con el texto "FORMULARIO DECLARACION Y PAGO SIMULTANEO"
    And se espera "5" segundos