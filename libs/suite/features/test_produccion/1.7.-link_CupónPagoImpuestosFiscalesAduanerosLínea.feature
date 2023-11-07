Feature: link Pago - PagosImpuestos - IMPUESTOSFISCALES - CupónPagoImpuestosFiscalesAduanerosLínea
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Cupón de Pago de Impuestos Fiscales y Aduaneros en Línea

Scenario: Validamos funcionalidad de links Cupón de Pago de Impuestos Fiscales y Aduaneros en Línea
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"
   When que se cliquea el elemento "span" con el texto "Pagos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2485 > a > span:nth-child(1)" con el texto "Pagos de Impuestos"
   And que se cliquea el elemento "span" con el texto "Pagos de Impuestos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2498 > span > span" con el texto "IMPUESTOS FISCALES"
   And que se encontró un elemento "#menu-item-10958 > a > span" con el texto "Cupón de Pago de Impuestos Fiscales y Aduaneros en Línea"
   Then que se cliquea el elemento "span" con el texto "Cupón de Pago de Impuestos Fiscales y Aduaneros en Línea"
   And se espera "2" segundos
   And que se encontró un elemento "h1" con la clase "elementor-heading-title" con el texto "Cupón de Pago de Impuestos Fiscalesy Aduaneros en Línea"
   And que se encontró un elemento "div" con la clase "elementor-heading-title" con el texto "¡Quiero pagar en línea!"
   And se cliquea el elemento "a" con la id "tgr-wp-cupon-de-pago-de-impuestos-fiscales-y-aduaneros-ir-a-pagar"
   And se espera "2" segundos
   And que se encontró un elemento "#id-div-idp-titulo > b" con el texto "Te damos la bienvenida"
   And que se encontró un elemento "#id-a-idp-claveTgr > label" con el texto "Ingresa con Clave TGR"
   And que se encontró un elemento "#id-a-idp-sitioTgr > label > strong" con el texto "Ir a tgr.cl"
   And que se cliquea el elemento "strong" con el texto "Ir a tgr.cl"
   And se espera "3" segundos
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"