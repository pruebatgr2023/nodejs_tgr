Feature: link Instituciones y Proveedores - Aduana - Importación
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Instituciones y Proveedores - Aduana - Importación
        
Scenario: Validamos funcionalidad de links Instituciones y Proveedores - sub link Aduana - Importación
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-3916 > a > span:nth-child(1)" con el texto "Instituciones y  Proveedores"
   When que se cliquea el elemento "span" con el texto "Instituciones y  Proveedores"
   And se espera "2" segundos
   When se cliquea el selector "#menu-item-4186 > a" 
   And se espera "3" segundos 
   And que se encontró un elemento "#menu-item-4624 > span > span" con el texto "IMPORTACIÓN"
   When se cliquea el selector "#menu-item-16146 > a" 
   And se espera "3" segundos 
   And que se encontró un elemento "h1" con el texto "Importación Vía Postal"
   And se espera "3" segundos 

