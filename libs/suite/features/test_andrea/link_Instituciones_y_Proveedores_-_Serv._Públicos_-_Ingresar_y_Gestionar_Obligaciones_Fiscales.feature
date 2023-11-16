Feature: link Instituciones y Proveedores - Serv. Públicos - Ingresar y Gestionar Obligaciones Fiscales
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Instituciones y Proveedores - Serv. Públicos - Ingresar y Gestionar Obligaciones Fiscales
        
Scenario: Validamos funcionalidad de links Instituciones y Proveedores - sub link Serv. Públicos - Ingresar y Gestionar Obligaciones Fiscales
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-3916 > a > span:nth-child(1)" con el texto "Instituciones y  Proveedores"
   When que se cliquea el elemento "span" con el texto "Instituciones y  Proveedores"
   And se espera "2" segundos
   When se cliquea el selector "#menu-item-4191 > a" 
   And se espera "3" segundos 
   And que se encontró un elemento "#menu-item-4657 > span > span" con el texto "SERVICIOS"
   When se cliquea el selector "#menu-item-12343 > a" 
   And se espera "3" segundos 
   And que se encontró un elemento "#menu-item-3916 > a > span:nth-child(1)" con el texto "Instituciones y  Proveedores"
   And se espera "3" segundos 