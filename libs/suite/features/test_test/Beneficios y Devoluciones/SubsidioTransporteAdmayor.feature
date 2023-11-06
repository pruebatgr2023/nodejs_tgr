Feature: Link Beneficios y Devoluciones - Consultas-Subsidio Transporte Adulto Mayor Ley 21.192 
 Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Beneficios y Devoluciones-Consultas-Subsidio Transporte Adulto Mayor Ley 21.192 (Nuevo)

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
   And se encuentra un elemento "#menu-item-8028 > a > span" con el texto "Subsidio Transporte Adulto Mayor Ley 21.192 (Nuevo)"
   And se espera "3" segundos
   And se cliquea el elemento "a" con el texto "Subsidio Transporte Adulto Mayor Ley 21.192 (Nuevo)"
   And se espera "5" segundos
   And se encuentra un elemento "h1" con la clase "elementor-heading-title" con el texto "SUBSIDIO TRANSPORTE ADULTO MAYOR"
   And se espera "5" segundos
   And se encuentra un elemento "h2" con la clase "elementor-heading-title" con el texto "REVISA EL PAGO DEL SUBSIDIO"
   And se espera "5" segundos
  