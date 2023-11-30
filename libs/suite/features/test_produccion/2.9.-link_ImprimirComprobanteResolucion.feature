Feature: link Pago - ConveniosPago - IMPRIMIRDOCUMENTOS - ImprimirComprobanteResolucion
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Imprimir Comprobante de Resolución
          
 Scenario: Validamos funcionalidad de links Imprimir Comprobante de Resolución
   Given que se encuentra en la url "https://www.tgr.cl/"
   And se espera "2" segundos 
   And se encuentra un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"
   And se espera "2" segundos
   And se cliquea el elemento "a" con el texto "Pagos"
   And se encuentra un elemento "#menu-item-2487 > a > span:nth-child(1)" con el texto "Convenios de pago"
   And se espera "3" segundos
   And se cliquea el elemento "a" con el texto "Convenios de pago"
   And se espera "3" segundos
   And se encuentra un elemento "#menu-item-16173 > a > span" con el texto "Imprimir Comprobante de Resolución"
   And se espera "3" segundos
   And se cliquea el elemento "a" con el texto "Imprimir Comprobante de Resolución"
   And se espera "5" segundos
   And se encuentra un elemento "#id-div-idp-titulo > b" con el texto "Te damos la bienvenida"
   And se espera "3" segundos
   And se encuentra un elemento "a" con id "id-a-idp-sitioTgr" con el texto "Ir a tgr.cl"
   And se espera "5" segundos
   Given que se cliquea el elemento "a" con el texto "Ir a tgr.cl"
   And se espera "5" segundos
   