Feature: link Cobranza - TRAMITESDECOBRANZA - Informarsuspensiondelprocesodecobro
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Cobranza y sub link Revisar todos los trámites de Cobranza

Scenario: Validamos funcionalidad de links Cobranza y Tramites de Cobranza - Revisar todos los trámites de Cobranza
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-953 > a > span:nth-child(1)" con el texto "Cobranza"
   When que se cliquea el elemento "span" con el texto "Cobranza"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2493 > a > span:nth-child(1)" con el texto "Trámites de Cobranza"
   And que se cliquea el elemento "span" con el texto "Trámites de Cobranza"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-4612 > span > span" con el texto "TRÁMITES DE COBRANZA"
   And que se encontró un elemento "#menu-item-14738 > a > span" con el texto "Revisar todos los trámites de Cobranza"
   Then que se cliquea el elemento "span" con el texto "Revisar todos los trámites de Cobranza"
   And se espera "5" segundos   
   And que se encontró un elemento "h1" con la clase "elementor-heading-title" con el texto " Cobranza de Impuestos Fiscales y Territoriales"
   And que se encontró un elemento "h2" con la clase "elementor-heading-title" con el texto "¿Qué necesitas hacer?"
