   Feature: link Certificados y Comprobantes - CERTIFICADOS CONTRIBUCIONES - Certificado Movimientos de Contribuciones
            Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Certificados y Comprobantes - CERTIFICADOS CONTRIBUCIONES - Certificado Movimientos de Contribuciones

   Scenario: Validamos funcionalidad de links Certificados y Comprobantes - CERTIFICADOS CONTRIBUCIONES - Certificado Movimientos de Contribuciones
      Given que se encuentra en la url "https://www.tgr.cl/"
      And que se encontró un elemento "#menu-item-951 > a > span:nth-child(1)" con el texto "Certificados y  Comprobantes"
      When que se cliquea el elemento "span" con el texto "Certificados"
      And se espera "2" segundos
      When se cliquea el selector "#menu-item-2490 > a" 
      And se espera "3" segundos 
      And que se encontró un elemento "#menu-item-4501 > span > span" con el texto "CERTIFICADOS CONTRIBUCIONES"
      When se cliquea el selector "#menu-item-4404 > a"   
      And se espera "3" segundos 
      And que se encontró un elemento "#menu-item-951 > a > span:nth-child(1)" con el texto "Certificados y  Comprobantes"
      And se espera "3" segundos 

