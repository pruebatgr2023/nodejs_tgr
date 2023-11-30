Feature: link Pago - MultasPatentesOtros - DECLARACIÓNPAGOSIMULTÁNEO - SubsidiodeLey-20378
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Subsidio de Ley 20.378

 Scenario: Validamos funcionalidad de links Subsidio de Ley 20.378
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-15639 > a > span"
    And que se encontró un elemento "body > div:nth-child(16) > div:nth-child(1) > h1" con el texto "Subsidio de Ley 20.378"