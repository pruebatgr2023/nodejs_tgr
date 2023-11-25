Feature: link Cobranza - Consultas - BusquedaRecaudadoresFiscales
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Cobranza y sublink Consultas - Búsqueda de Recaudadores Fiscales

Scenario: Validamos funcionalidad de links Cobranza y Consultas - Búsqueda de Recaudadores Fiscales
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-953 > a > span:nth-child(1)" con el texto "Cobranza"
   When que se cliquea el elemento "span" con el texto "Cobranza"
   And se espera "2" segundos
   When se cliquea el selector "#menu-item-8051 > a"
   And se espera "2" segundos
   When se cliquea el selector "#menu-item-4697 > a"
   And se espera "3" segundos
   And que se encontró un elemento "body > div.elementor.elementor-4616 > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-4288395.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > div > div > h1" con el texto "Búsqueda de Recaudadores o Recaudadoras Fiscales"
