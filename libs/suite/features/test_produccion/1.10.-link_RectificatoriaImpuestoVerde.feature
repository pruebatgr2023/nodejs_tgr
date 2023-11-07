Feature: link Pago - PagosImpuestos - OTROSPAGOSRECTIFICATORIAS - RectificatoriaImpuestoVerde
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Rectificatoria Impuesto Verde

Scenario: Validamos funcionalidad de links Rectificatoria Impuesto Verde
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"
   When que se cliquea el elemento "span" con el texto "Pagos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2485 > a > span:nth-child(1)" con el texto "Pagos de Impuestos"
   And que se cliquea el elemento "span" con el texto "Pagos de Impuestos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2499 > span > span" con el texto "OTROS PAGOS Y RECTIFICATORIAS"
   And que se encontró un elemento "#menu-item-16152 > a > span" con el texto "Rectificatoria Impuesto Verde"
   Then que se cliquea el elemento "span" con el texto "Rectificatoria Impuesto Verde"
   And se espera "3" segundos
   And que se encontró un elemento "h1" con la clase "titulo-tramite" con el texto "Rectificatoria Impuesto Verde"
   And se espera "7" segundos
   And se cliquea el selector "#tgr-sp-contenedor-iframe > iframe"
   #And que se encontró un elemento "div" con la clase "tituloSecciones" con el texto "F88 A - Rectificatoria Pago de Impuesto Verde a las fuentes contaminantes móviles, Ley N°20.780"