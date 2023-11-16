   Feature: link Instituciones y Proveedores - Municipalidades - Portal Municipal
            Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Municipalidades - Portal Municipal
         
   Scenario: Validamos funcionalidad de links Instituciones y Proveedores - sub link Municipalidades - Portal Municipal
      Given que se encuentra en la url "https://www.tgr.cl/"
      And que se encontró un elemento "#menu-item-3916 > a > span:nth-child(1)" con el texto "Instituciones y  Proveedores"
      When que se cliquea el elemento "span" con el texto "Instituciones y  Proveedores"
      And se espera "2" segundos
      When se cliquea el selector "#menu-item-4193 > a" 
      And se espera "3" segundos 
      And que se encontró un elemento "#menu-item-4785 > span > span" con el texto "MUNICIPALIDADES"
      When se cliquea el selector "#menu-item-14080 > a"   
      And se espera "3" segundos  
      And que se encontró un elemento "h1" con el texto "Portal Municipal"
      And se espera "3" segundos
