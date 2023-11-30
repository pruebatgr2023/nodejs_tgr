Feature: link Pago - MultasPatentesOtros - MULTAS - PatentesDerechosAguaNoUtilizados
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Patentes Derechos de Agua No Utilizados

 Scenario: Validamos funcionalidad de links Patentes Derechos de Agua No Utilizados
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-9788 > a > span"
    And que se encontró un elemento "#post-9781 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-29361f8c.elementor-section-stretched.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > div > div > h1:nth-child(2)" con el texto "Pago de Patentes Derechos de Aguas No Utilizados"
    When se cliquea el elemento de la pagina "#tgr-wp-patentesagua-pagoimpuestosfiscales"
    And se espera "2" segundos
    And que se encontró un elemento "#id-div-idp-titulo > b" con el texto "Te damos la bienvenida"
    When se cliquea el elemento de la pagina "#id-a-idp-sitioTgr > label > strong"
    And se espera "5" segundos