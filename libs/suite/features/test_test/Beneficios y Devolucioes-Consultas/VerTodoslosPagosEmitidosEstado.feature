Feature: Link Beneficios y Devoluciones - Consultas-Ver todos los Pagos Emitidos por el Estado
 Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Beneficios y Devoluciones-Consultas-Ver todos los Pagos Emitidos por el Estado

 @run
 Scenario: reconocemos elementos menu princial, ingresamos a pago y reconocemos links del menú pago de convenios
   Given que se encuentra en la url "https://www.tgr.cl/"
   And se espera "2" segundos 
   And se encuentra un elemento "#menu-item-950 > a > span:nth-child(1)" con el texto "Beneficios y  Devoluciones"
   And se espera "2" segundos
   And se cliquea el elemento "a" con el texto "Beneficios y  Devoluciones"
   And se encuentra un elemento "#menu-item-2489 > a > span:nth-child(1)" con el texto "Consultas"
   And se espera "3" segundos
   And se cliquea el elemento "a" con el texto "Consultas"
   And se espera "5" segundos
   And se encuentra un elemento "#menu-item-11575 > a > span" con el texto "Ver todos los Pagos Emitidos por el Estado"
   And se espera "3" segundos
   And se cliquea el elemento "a" con el texto "Ver todos los Pagos Emitidos por el Estado"
   And se espera "5" segundos
   And se encuentra un elemento "h1" con la clase "elementor-heading-title" con el texto " Mis Pagos Recibidos"
   And se espera "3" segundos
   And se encuentra un elemento "h2" con la clase "elementor-heading-title" con el texto "¿Tienes algún problema con el Medio de Pago?"
   And se espera "5" segundos
  