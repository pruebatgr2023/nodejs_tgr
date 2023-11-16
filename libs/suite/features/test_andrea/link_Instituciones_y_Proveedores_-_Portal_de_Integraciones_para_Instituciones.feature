Feature: link Instituciones y Proveedores - Portal de Integraciones para Instituciones
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Instituciones y Proveedores
        
Scenario: Validamos funcionalidad de links Instituciones y Proveedores - sub link Portal de Integraciones para Instituciones
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-3916 > a > span:nth-child(1)" con el texto "Instituciones y  Proveedores"
   When que se cliquea el elemento "span" con el texto "Instituciones y  Proveedores"
   And se espera "2" segundos
   And que se encontró un elemento "#menu-item-11146 > a > span:nth-child(1)" con el texto "Portal de Integraciones para Instituciones"
   When que se cliquea el elemento "span" con el texto "Portal de Integraciones para Instituciones"
   And se espera "3" segundos 
   And que se encontró un elemento "h2" con el texto "¿Qué Quieres Hacer?"