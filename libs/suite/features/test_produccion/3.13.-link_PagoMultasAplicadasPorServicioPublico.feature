Feature: link Pago - MultasPatentesOtros - MULTAS - PagoMultasAplicadasPorServicioPublico
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Pago de Multas Aplicadas por Servicio Público

 Scenario: Validamos funcionalidad de links Pago de Multas Aplicadas por Servicio Público
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-15683 > a > span"
    And que se encontró un elemento "body > div:nth-child(16) > div:nth-child(1) > h1" con el texto "Pago de Multas Aplicadas por Servicio Público"
    