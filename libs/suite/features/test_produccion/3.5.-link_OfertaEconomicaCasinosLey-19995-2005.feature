Feature: link Pago - MultasPatentesOtros - MULTAS - OfertaEconomicaCasinosLey-19995/2005
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Oferta Económica Casinos Ley N° 19.995/2005

 Scenario: Validamos funcionalidad de links Oferta Económica Casinos Ley N° 19.995/2005
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-16161 > a > span"
    And que se encontró un elemento "body > div:nth-child(16) > div:nth-child(1) > h1" con el texto "Oferta Económica Casinos"
    Given que se encontró un elemento "body > app-root > app-dps > div > div" en el frame "#tgr-sp-contenedor-iframe > iframe" con el texto "FORMULARIO DECLARACION Y PAGO SIMULTANEO"
    And se espera "5" segundos