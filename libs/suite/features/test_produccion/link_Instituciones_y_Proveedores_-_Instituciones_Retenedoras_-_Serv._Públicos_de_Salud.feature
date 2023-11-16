   Feature: link Instituciones y Proveedores - Instituciones Retenedoras - Serv. Públicos de Salud
            Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Instituciones Retenedoras - Serv. Públicos de Salud
         
   Scenario: Validamos funcionalidad de links Instituciones y Proveedores - sub link Instituciones Retenedoras - Serv. Públicos de Salud
      Given que se encuentra en la url "https://www.tgr.cl/"
      And que se encontró un elemento "#menu-item-3916 > a > span:nth-child(1)" con el texto "Instituciones y  Proveedores"
      When que se cliquea el elemento "span" con el texto "Instituciones y  Proveedores"
      And se espera "2" segundos
      When se cliquea el selector "#menu-item-4192 > a" 
      And se espera "3" segundos 
      And que se encontró un elemento "#menu-item-4667 > span > span" con el texto "SERVICIOS PÚBLICOS DE SALUD"
      When se cliquea el selector "#menu-item-16203 > a"   
      And se espera "3" segundos  
      And que se encontró un elemento "b" con el texto "Te damos la bienvenida"
      And se espera "3" segundos