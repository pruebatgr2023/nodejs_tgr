   Feature: link Instituciones y Proveedores - Proveedores - Pago a Proveedores del Estado
            Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Instituciones y Proveedores - Proveedores - Pago a Proveedores del Estado
   Scenario: Validamos funcionalidad de links Instituciones y Proveedores - sub link Proveedores - Pago a Proveedores del Estado
      Given que se encuentra en la url "https://www.tgr.cl/"
      And que se encontró un elemento "#menu-item-3916 > a > span:nth-child(1)" con el texto "Instituciones y  Proveedores"
      When que se cliquea el elemento "span" con el texto "Instituciones y  Proveedores"
      And se espera "2" segundos
      When se cliquea el selector "#menu-item-5178 > a" 
      And se espera "3" segundos 
      And que se encontró un elemento "#menu-item-5179 > span > span" con el texto "PROVEEDORES"
      When se cliquea el selector "#menu-item-10204 > a"   
      And se espera "3" segundos 
      And que se encontró un elemento "h1" con el texto "Pago a Proveedores del Estado"
      And se espera "3" segundos 