Feature: link Instituciones y Proveedores - Serv. Públicos - Tablas de Cálculo
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Instituciones y Proveedores - Serv. Públicos - Tablas de Cálculo
        
Scenario: Validamos funcionalidad de links Instituciones y Proveedores - sub link Servicios Públicos - Tablas de Cálculo
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-3916 > a > span:nth-child(1)" con el texto "Instituciones y  Proveedores"
   When que se cliquea el elemento "span" con el texto "Instituciones y  Proveedores"
   And se espera "2" segundos
   When se cliquea el selector "#menu-item-4191 > a" 
   And se espera "3" segundos 
   And que se encontró un elemento "#menu-item-6199 > span > span" con el texto "FINANZAS PÚBLICAS"
   When se cliquea el selector "#menu-item-7283 > a"   
   And se espera "3" segundos  
   And que se encontró un elemento "h2" con el texto "Tablas de Cálculo"
   And se espera "3" segundos 
