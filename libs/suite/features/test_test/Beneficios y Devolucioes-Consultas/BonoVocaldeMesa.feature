Feature: Link Beneficios y Devoluciones - Beneficios y Devoluciones - Consultas-Bono Vocal de Mesa
 Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Beneficios y Devoluciones-Consultas-Bono Vocal de Mesa

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
   And se espera "3" segundos
   And se encuentra un elemento "#menu-item-10472 > a> span" con el texto "Bono Vocal de Mesa"
   And se espera "3" segundos
   And se cliquea el elemento "a" con el texto "Bono Vocal de Mesa"
   And se espera "5" segundos
   And se encuentra un elemento "h1" con la clase "elementor-heading-title" con el texto "Bono Vocal de Mesa"
   And se espera "5" segundos
   