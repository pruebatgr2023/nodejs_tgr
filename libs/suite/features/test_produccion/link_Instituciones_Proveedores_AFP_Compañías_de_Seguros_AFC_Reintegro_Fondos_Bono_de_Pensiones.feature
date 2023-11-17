   Feature: link Instituciones y Proveedores - AFP, Compañías de Seguros y AFC - Reintegro Fondos Bono de Pensiones
            Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Instituciones y Proveedores - AFP, Compañías de Seguros y AFC - Reintegro Fondos Bono de Pensiones
         
   Scenario: Validamos funcionalidad de links Instituciones y Proveedores - sub link AFP, Compañías de Seguros y AFC - Reintegro Fondos Bono de Pensiones
      Given que se encuentra en la url "https://www.tgr.cl/"
      And que se encontró un elemento "#menu-item-3916 > a > span:nth-child(1)" con el texto "Instituciones y  Proveedores"
      When que se cliquea el elemento "span" con el texto "Instituciones y  Proveedores"
      And se espera "2" segundos
      When se cliquea el selector "#menu-item-4194 > a" 
      And se espera "3" segundos 
      And que se encontró un elemento "#menu-item-4699 > span > span" con el texto "SERVICIOS"
      When se cliquea el selector "#menu-item-10502 > a"   
      And se espera "3" segundos
      And que se encontró un elemento "h1" con el texto "Reintegro Fondos Bono de Pensiones"
      And se espera "3" segundos 
