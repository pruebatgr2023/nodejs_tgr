Feature: link Pago - PagosImpuestos - OTROSPAGOSRECTIFICATORIAS - ConvenioPrestamoTransporte
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Convenio Préstamo de Transporte

Scenario: Validamos funcionalidad de links Convenio Préstamo de Transporte
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"
   When que se cliquea el elemento "span" con el texto "Pagos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2485 > a > span:nth-child(1)" con el texto "Pagos de Impuestos"
   And que se cliquea el elemento "span" con el texto "Pagos de Impuestos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2499 > span > span" con el texto "OTROS PAGOS Y RECTIFICATORIAS"
   And que se encontró un elemento "#menu-item-22984 > a > span" con el texto "Convenio Préstamo de Transporte"
   Then que se cliquea el elemento "span" con el texto "Convenio Préstamo de Transporte"
   And se espera "3" segundos
   And que se encontró un elemento "h1" con la clase "elementor-heading-title" con el texto " Convenio Préstamo de Transporte"
   And que se encontró un elemento "h2" con la clase "elementor-heading-title" con el texto "Solicita el Convenio Préstamo Transporte(Préstamo Estatal y Solidario)"