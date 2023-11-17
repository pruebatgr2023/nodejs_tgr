Feature: link Instituciones y Proveedores - Aduana - Reintegros
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Instituciones y Proveedores
        
Scenario: Validamos funcionalidad de links Instituciones y Proveedores - sub link Aduana - Reintegros
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-3916 > a > span:nth-child(1)" con el texto "Instituciones y  Proveedores"
   When que se cliquea el elemento "span" con el texto "Instituciones y  Proveedores"
   And se espera "2" segundos
   When se cliquea el selector "#menu-item-4186 > a" 
   And se espera "3" segundos 
   And que se encontró un elemento "#menu-item-4622 > span > span" con el texto "REINTEGROS"
   When se cliquea el selector "#menu-item-16150 > a" 
   And se espera "3" segundos 
   And que se encontró un elemento "b" con el texto "Te damos la bienvenida"
   When se cliquea el selector "#id-a-idp-sitioTgr > label > strong" 
   And se espera "3" segundos 
   