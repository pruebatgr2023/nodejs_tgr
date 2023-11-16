   Feature: link Instituciones y Proveedores - AFP, Compañías de Seguros y AFC - Ingreso Cuenta Bancaria para Pago Bonificación APV DL.3.500
            Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Instituciones y Proveedores - AFP, Compañías de Seguros y AFC - Ingreso Cuenta Bancaria para Pago Bonificación APV DL.3.500
         
   Scenario: Validamos funcionalidad de links Instituciones y Proveedores - sub link AFP, Compañías de Seguros y AFC - Ingreso Cuenta Bancaria para Pago Bonificación APV DL.3.500
      Given que se encuentra en la url "https://www.tgr.cl/"
      And que se encontró un elemento "#menu-item-3916 > a > span:nth-child(1)" con el texto "Instituciones y  Proveedores"
      When que se cliquea el elemento "span" con el texto "Instituciones y  Proveedores"
      And se espera "2" segundos
      When se cliquea el selector "#menu-item-4194 > a" 
      And se espera "3" segundos 
      And que se encontró un elemento "#menu-item-4699 > span > span" con el texto "SERVICIOS"
      When se cliquea el selector "#menu-item-16205 > a"   
      And se espera "3" segundos
      And que se encontró un elemento "b" con el texto "Te damos la bienvenida"
      And se espera "3" segundos 