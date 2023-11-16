   Feature: link Instituciones y Proveedores - Municipalidades - Extranet
            Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Municipalidades - Extranet
         
   Scenario: Validamos funcionalidad de links Instituciones y Proveedores - sub link Municipalidades - Extranet
      Given que se encuentra en la url "https://www.tgr.cl/"
      And que se encontró un elemento "#menu-item-3916 > a > span:nth-child(1)" con el texto "Instituciones y  Proveedores"
      When que se cliquea el elemento "span" con el texto "Instituciones y  Proveedores"
      And se espera "2" segundos
      When se cliquea el selector "#menu-item-4193 > a > span.ubermenu-target-title.ubermenu-target-text"
      And se espera "3" segundos 
      And que se encontró un elemento "#menu-item-4785 > span > span" con el texto "MUNICIPALIDADES"
      When se cliquea el selector "#menu-item-14080 > a > span"   
      And se espera "3" segundos
      And que se encontró un elemento "#post-11988 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-33a1e792.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > div > div > h1 > span" con el texto "Portal Municipal"
