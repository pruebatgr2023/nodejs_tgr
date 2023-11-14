Feature: link Pago - PagosImpuestos - IMPUESTOSADUANEROS - PagoImportaciónVíaPostalF18
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Pago Importación Vía Postal F18

Scenario: Validamos funcionalidad de links Pago Importación Vía Postal (F18)
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"
   When que se cliquea el elemento "span" con el texto "Pagos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2485 > a > span:nth-child(1)" con el texto "Pagos de Impuestos"
   And que se cliquea el elemento "span" con el texto "Pagos de Impuestos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2497 > span > span" con el texto "IMPUESTOS ADUANEROS"
   And que se encontró un elemento "#menu-item-16215 > a > span" con el texto "Pago Importación Vía Postal (F18)"
   Then que se cliquea el elemento "span" con el texto "Pago Importación Vía Postal (F18)"
   And se espera "3" segundos
   And que se encontró un elemento "h1" con la clase "titulo-tramite" con el texto "Pago Importación Vía Postal (F18)"
   And se espera "30" segundos
   And que se cliquea el elemento "#id_busqueda" en el frame "#tgr-sp-contenedor-iframe > iframe"
   And que se hace foco a un elemento "#tgr-sp-contenedor-iframe > iframe" con la clase "iframe-responsive"