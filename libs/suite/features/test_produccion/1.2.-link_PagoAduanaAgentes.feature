Feature: link Pago - PagosImpuestos - IMPUESTOSADUANEROS - PagoAduanaAgentes
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Pago Aduana Agentes

Scenario: Validamos funcionalidad de links Pago Aduana Agentes
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"
   When que se cliquea el elemento "span" con el texto "Pagos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2485 > a > span:nth-child(1)" con el texto "Pagos de Impuestos"
   And que se cliquea el elemento "span" con el texto "Pagos de Impuestos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2497 > span > span" con el texto "IMPUESTOS ADUANEROS"
   And que se encontró un elemento "#menu-item-16214 > a > span" con el texto "Pago Aduana Agentes"
   Then que se cliquea el elemento "span" con el texto "Pago Aduana Agentes"
   And se espera "3" segundos
   And que se encontró un elemento "h1" con la clase "titulo-tramite" con el texto "Pago Aduana Agentes"
   And que se encontró un elemento "a" con id "tgr-wp-pagoaduanaagentes-recuperarclave" con el texto "¿Necesitas recuperar tu clave?"
   And se espera "5" segundos
   And que se cliquea el elemento "#id_busqueda" en el frame "#tgr-sp-contenedor-iframe-custom > iframe"