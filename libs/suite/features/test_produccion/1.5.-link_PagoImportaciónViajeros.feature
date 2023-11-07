Feature: link Pago - PagosImpuestos - IMPUESTOSADUANEROS - PagoImportaciónViajeros
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Pago Importación por Viajeros

Scenario: Validamos funcionalidad de links Pago Importación por Viajeros
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"
   When que se cliquea el elemento "span" con el texto "Pagos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2485 > a > span:nth-child(1)" con el texto "Pagos de Impuestos"
   And que se cliquea el elemento "span" con el texto "Pagos de Impuestos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2497 > span > span" con el texto "IMPUESTOS ADUANEROS"
   And que se encontró un elemento "#menu-item-5082 > a > span" con el texto "Pago Importación por Viajeros"
   Then que se cliquea el elemento "span" con el texto "Pago Importación por Viajeros"
   And se espera "2" segundos
   And que se encontró un elemento "h1" con la clase "elementor-heading-title" con el texto "Pago Importación por Viajeros"
   And que se encontró un elemento "h3" con la clase "elementor-heading-title" con el texto "¿Qué es o qué permite?"
   And se cliquea el elemento "#tgr-wp-importacionviajeros-ingresaraltramite" con la clase "primario"
   And se espera "2" segundos
   And se cliquea el elemento "#imglogo" con la id "imglogo"
   And se espera "2" segundos
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"

   