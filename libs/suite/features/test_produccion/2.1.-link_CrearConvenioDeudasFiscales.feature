Feature: link Pago - PagosImpuestos - OTROSPAGOSRECTIFICATORIAS - CrearConvenioDeudasFiscales
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Crear Convenio de Deudas Fiscales

 Scenario: Validamos funcionalidad de links Crear Convenio de Deudas Fiscales
   Given que se encuentra en la url "https://www.tgr.cl/"
   And se espera "2" segundos 
   And se encuentra un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"
   And se espera "2" segundos
   And se cliquea el elemento "a" con el texto "Pagos"
   And se encuentra un elemento "#menu-item-2487 > a > span:nth-child(1)" con el texto "Convenios de pago"
   And se espera "3" segundos
   And se cliquea el elemento "a" con el texto "Convenios de pago"
   And se espera "3" segundos
   And se encuentra un elemento "#menu-item-10537 > a > span" con el texto "Crear Convenio de Deudas Fiscales"
   And se espera "3" segundos
   And se cliquea el elemento "a" con el texto "Crear Convenio de Deudas Fiscales"
   And se espera "5" segundos
   And se encuentra un elemento "h1" con la clase "elementor-heading-title" con el texto " Convenios de Pago"
   And se espera "5" segundos
   And se encuentra un elemento "h2" con la clase "elementor-heading-title" con el texto "¿Qué necesitas hacer?"
   And se espera "5" segundos
   And se encuentra un elemento "span" con la clase "texto-enlace" con el texto "Conocer y Crear Convenios de Pago"
   And se espera "5" segundos
   And se encuentra un elemento "#conocer-convenios-disponibles > div > div > div > div > div > div.elementor-element.elementor-element-3815025d.elementor-widget.elementor-widget-heading > div > h2" con el texto " Conocer y Crear Convenios de Pago"
   And se espera "5" segundos

