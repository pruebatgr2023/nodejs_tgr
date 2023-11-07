Feature: link Pago - PagosImpuestos - IMPUESTOSFISCALES - PagoImpuestosFiscalesyAduanerosLínea
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Pago de Impuestos Fiscales y Aduaneros en Línea

Scenario: Validamos funcionalidad de links Pago de Impuestos Fiscales y Aduaneros en Línea
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"
   When que se cliquea el elemento "span" con el texto "Pagos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2485 > a > span:nth-child(1)" con el texto "Pagos de Impuestos"
   And que se cliquea el elemento "span" con el texto "Pagos de Impuestos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2498 > span > span" con el texto "IMPUESTOS FISCALES"
   And que se encontró un elemento "#menu-item-10959 > a > span" con el texto "Pago de Impuestos Fiscales y Aduaneros en Línea"
   Then que se cliquea el elemento "span" con el texto "Pago de Impuestos Fiscales y Aduaneros en Línea"
   And se espera "2" segundos
   And que se encontró un elemento "h1" con la clase "elementor-heading-title" con el texto "Pago de Impuestos Fiscales y Aduaneros en Línea"
   And que se encontró un elemento "#post-10927 > div > div > div > div > section:nth-child(1) > div > div > div > div > div > div:nth-child(3) > div > ul > li:nth-child(1) > span:nth-child(2) > strong" con el texto "¡Desde ahora también podrás pagar tu cuotas de convenio!"
   And que se encontró un elemento "#post-10927 > div > div > div > div > section:nth-child(2) > div > div > div > div > div > section > div > div > div:nth-child(1) > div > div > div:nth-child(1) > div > div" con el texto "Paga de forma simple, segura y cómoda"
   And se cliquea el elemento "a" con la id "tgr-wp-pago-de-impuestos-fiscales-y-aduaneros-ir-a-pagar"
   And se espera "2" segundos
   And que se encontró un elemento "#id-div-idp-titulo > b" con el texto "Te damos la bienvenida"
   And que se encontró un elemento "#id-a-idp-claveTgr > label" con el texto "Ingresa con Clave TGR"
   And que se encontró un elemento "#id-a-idp-sitioTgr > label > strong" con el texto "Ir a tgr.cl"
   And que se cliquea el elemento "strong" con el texto "Ir a tgr.cl"
   And se espera "3" segundos
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"