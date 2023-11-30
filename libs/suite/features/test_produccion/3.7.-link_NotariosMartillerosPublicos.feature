Feature: link Pago - MultasPatentesOtros - MULTAS - NotariosMartillerosPublicos
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Notarios y Martilleros Públicos

 Scenario: Validamos funcionalidad de links Notarios y Martilleros Públicos
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-16164 > a > span"
    And que se encontró un elemento "body > div:nth-child(16) > div:nth-child(1) > h1" con el texto "Notarios y Martilleros Públicos"
    And se espera "5" segundos