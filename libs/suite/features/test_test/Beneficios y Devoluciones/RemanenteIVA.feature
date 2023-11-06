Feature: Link Beneficios y Devoluciones - Consultas-Subsidio Ingreso Minimo
 Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Beneficios y Devoluciones-Consultas-Subsidio Ingreso Minimo

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
   And se encuentra un elemento "#menu-item-8130 > a > span" con el texto "Remanente de IVA Crédito (Nuevo)"
   And se espera "3" segundos
   And se cliquea el elemento "a" con el texto "Remanente de IVA Crédito (Nuevo)"
   And se espera "5" segundos
   And se encuentra un elemento "#id-div-idp-titulo > b" con el texto "Te damos la bienvenida"
   And se espera "3" segundos
   And se encuentra un elemento "a" con id "id-a-idp-sitioTgr" con el texto "Ir a tgr.cl"
   And se espera "5" segundos
   Given que se cliquea el elemento "a" con el texto "Ir a tgr.cl"
   And se espera "5" segundos