Feature: link Pago - PagosImpuestos - IMPUESTOSADUANEROS - PagoAduanaImportadores
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Pago Aduana Importadores

Scenario: Validamos funcionalidad de links Pago Aduana Importadores
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"
   When que se cliquea el elemento "span" con el texto "Pagos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2485 > a > span:nth-child(1)" con el texto "Pagos de Impuestos"
   And que se cliquea el elemento "span" con el texto "Pagos de Impuestos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2497 > span > span" con el texto "IMPUESTOS ADUANEROS"
   And que se encontró un elemento "#menu-item-16216 > a > span" con el texto "Pago Aduana Importadores"
   Then que se cliquea el elemento "span" con el texto "Pago Aduana Importadores"
   And se espera "2" segundos
   And que se encontró un elemento "#id-div-idp-titulo > b" con el texto "Te damos la bienvenida"
   And que se encontró un elemento "#id-a-idp-claveTgr > label" con el texto "Ingresa con Clave TGR"
   And que se encontró un elemento "#id-a-idp-sitioTgr > label > strong" con el texto "Ir a tgr.cl"
   And que se cliquea el elemento "strong" con el texto "Ir a tgr.cl"
   And se espera "3" segundos
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"