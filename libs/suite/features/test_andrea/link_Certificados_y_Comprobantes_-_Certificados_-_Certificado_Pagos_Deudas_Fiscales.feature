   Feature: link Certificados y Comprobantes - Certificados - Certificado Pagos Deudas Fiscales
            Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Certificados y Comprobantes - Certificados - Certificado Pagos Deudas Fiscales

   Scenario: Validamos funcionalidad de links Certificados y Comprobantes - Certificados - 
      Given que se encuentra en la url "https://www.tgr.cl/"
      And que se encontró un elemento "#menu-item-951 > a > span:nth-child(1)" con el texto "Certificados y  Comprobantes"
      When que se cliquea el elemento "span" con el texto "Certificados"
      And se espera "2" segundos
      When se cliquea el selector "#menu-item-2490 > a" 
      And se espera "3" segundos 
      And que se encontró un elemento "#menu-item-4511 > span > span" con el texto "CERTIFICADOS FISCALES"
      When se cliquea el selector "#menu-item-4408 > a"   
      And se espera "3" segundos 
      And que se encontró un elemento "h1" con el texto "Acceder a Certificado de Pago de Deuda Fiscal"
      And se espera "3" segundos 