Feature: link Pago - PagosImpuestos - OTROSPAGOSRECTIFICATORIAS - ImpuestoVerdeFuentesMóviles
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Impuesto Verde a Fuentes Móviles

Scenario: Validamos funcionalidad de links Impuesto Verde a Fuentes Móviles
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"
   When que se cliquea el elemento "span" con el texto "Pagos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2485 > a > span:nth-child(1)" con el texto "Pagos de Impuestos"
   And que se cliquea el elemento "span" con el texto "Pagos de Impuestos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2499 > span > span" con el texto "OTROS PAGOS Y RECTIFICATORIAS"
   And que se encontró un elemento "#menu-item-5202 > a > span" con el texto "Impuesto Verde a Fuentes Móviles" 
   Then que se cliquea el elemento "span" con el texto "Impuesto Verde a Fuentes Móviles"
   And se espera "3" segundos
   And que se encontró un elemento "h1" con la clase "elementor-heading-title" con el texto "Impuesto Verde a Fuentes Móviles"
   And que se encontró un elemento "#post-5193 > div > div > div > div > section:nth-child(4) > div > div > div > div > div > div > div > div > ul > li:nth-child(1) > span > a" con el texto "Instrucciones"
   And que se encontró un elemento "#post-5193 > div > div > div > div > section:nth-child(4) > div > div > div > div > div > div > div > div > ul > li:nth-child(2) > a > span" con el texto "Declaración y Pago Impuesto Verde a Fuentes Móviles"  
   And que se encontró un elemento "#post-5193 > div > div > div > div > section:nth-child(4) > div > div > div > div > div > div > div > div > ul > li:nth-child(3) > span > a" con el texto "Calculadora de Impuesto Verde"
   And que se encontró un elemento "#post-5193 > div > div > div > div > section:nth-child(4) > div > div > div > div > div > div > div > div > ul > li:nth-child(4) > span > a" con el texto "Resolución TGR, Impuesto Verde"
   And que se encontró un elemento "#post-5193 > div > div > div > div > section:nth-child(4) > div > div > div > div > div > div > div > div > ul > li:nth-child(5) > span > a" con el texto "Solicitud de Devolución Impuesto Verde a Taxistas"
   And que se encontró un elemento "#post-5193 > div > div > div > div > section:nth-child(4) > div > div > div > div > div > div > div > div > ul > li:nth-child(6) > span > a" con el texto "Consulta de Devolución Impuesto Verde a Taxistas"
   And que se encontró un elemento "#post-5193 > div > div > div > div > section:nth-child(4) > div > div > div > div > div > div > div > div > ul > li:nth-child(7) > span > a" con el texto "Normativa Impuesto Verde"
   And que se encontró un elemento "#post-5193 > div > div > div > div > section:nth-child(4) > div > div > div > div > div > div > div > div > ul > li:nth-child(8) > span > a" con el texto "Rectificatoria Impuesto Verde"