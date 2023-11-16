   Feature: link Instituciones y Proveedores - Proveedores - Reintegro Pago Proveedores
            Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Instituciones y Proveedores - Proveedores - Reintegro Pago Proveedores
   Scenario: Validamos funcionalidad de links Instituciones y Proveedores - sub link Proveedores - Reintegro Pago Proveedores
      Given que se encuentra en la url "https://www.tgr.cl/"
      And que se encontró un elemento "#menu-item-3916 > a > span:nth-child(1)" con el texto "Instituciones y  Proveedores"
      When que se cliquea el elemento "span" con el texto "Instituciones y  Proveedores"
      And se espera "2" segundos
      When se cliquea el selector "#menu-item-5178 > a" 
      And se espera "3" segundos 
      And que se encontró un elemento "#menu-item-5179 > span > span" con el texto "PROVEEDORES"
      When se cliquea el selector "#menu-item-16217 > a"   
      And se espera "3" segundos 
      And que se encontró un elemento "h1" con el texto "Reintegro Pago Proveedores"
      And se espera "3" segundos 

