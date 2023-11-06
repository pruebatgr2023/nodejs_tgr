Feature: linck Menu Princial - pago multas, patentes o tros

Scenario: reconocemos elementos menu princial, ingresamos a pago y reconocemos links del menú multas, patentes y otros
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    # opciones de menu Multas
    And que se encontró un elemento "#menu-item-11631 > a > span" con el texto "Multas de la Comisión del Mercado Financiero"
    And que se encontró un elemento "#menu-item-11632 > a > span" con el texto "Multas de SERNAC" 
    And que se encontró un elemento "#menu-item-15130 > a > span" con el texto "Multas de FONASA" 
    And que se encontró un elemento "#menu-item-9788 > a > span" con el texto "Patentes Derechos de Agua No Utilizados" 
    And que se encontró un elemento "#menu-item-16161 > a > span" con el texto "Oferta Económica Casinos Ley N° 19.995/2005" 
    And que se encontró un elemento "#menu-item-16162 > a > span" con el texto "Tribunal de Cuentas"
    And que se encontró un elemento "#menu-item-16164 > a > span" con el texto "Notarios y Martilleros Públicos"
    And que se encontró un elemento "#menu-item-4842 > a > span" con el texto "Patentes Mineras"
    And que se encontró un elemento "#menu-item-16741 > a > span" con el texto "Multas Aplicadas a Casinos"
    And que se encontró un elemento "#menu-item-15895 > a > span" con el texto "Multas Juzgados"
    And que se encontró un elemento "#menu-item-15690 > a > span" con el texto "Multas SUBTEL"
    And que se encontró un elemento "#menu-item-15694 > a > span" con el texto "Multas Ley de Transparencia"
    And que se encontró un elemento "#menu-item-15683 > a > span" con el texto "Pago de Multas Aplicadas por Servicio Público"
    # opciones de menu Otros pagos
    And que se encontró un elemento "#menu-item-16938 > a > span" con el texto "Pagar cuotas de deuda Ex CORA"
    And que se encontró un elemento "#menu-item-17223 > a > span" con el texto "Pagar cuotas de Crédito Fiscal Universitario"
    And que se encontró un elemento "#menu-item-16757 > a > span" con el texto "Solicitar consignar deudas morosas por oferta de pago rechazada"
    And que se encontró un elemento "#menu-item-16939 > a > span" con el texto "Pagar Arrendamiento de Predios Urbanos"
    And que se encontró un elemento "#menu-item-16936 > a > span" con el texto "Pagar en Moneda Extranjera"
    # opciones de menu declaracion y pago simultaneo
    And que se encontró un elemento "#menu-item-15639 > a > span" con el texto "Subsidio de Ley 20.378"
    And que se encontró un elemento "#menu-item-15629 > a > span" con el texto "SERNAPESCA Pago Informe Ambiental"
    And que se encontró un elemento "#menu-item-15697 > a > span" con el texto "Concesiones Marítimas"
    And que se encontró un elemento "#menu-item-16474 > a > span" con el texto "Reintegro de Instituciones"
    And que se encontró un elemento "#menu-item-22135 > a > span" con el texto "Recaudación Fondo de Estabilización de Tarifas Eléctricas Ley 21.472"
    And que se encontró un elemento "#menu-item-9635 > a > span" con el texto "Ver Todos los Pagos con Declaración"
    And se espera "2" segundos
# despliegue de Multas de la Comisión del Mercado Financiero
    When se cliquea el selector "#menu-item-11631 > a > span"
    And que se encontró un elemento "#post-11619 > div > div > div > div > section > div > div > div > div > div > section.elementor-section.elementor-inner-section.elementor-element.elementor-element-18b0b23.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > div.elementor-element.elementor-element-8e25831.elementor-widget.elementor-widget-heading > div > h1" con el texto "Nueva Forma de Pagar tus Multas y Patentes"
    And que se encontró un elemento "#post-11619 > div > div > div > div > section > div > div > div > div > div > section.elementor-section.elementor-inner-section.elementor-element.elementor-element-18b0b23.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > div.elementor-element.elementor-element-dfaf347.elementor-widget.elementor-widget-text-editor > div > div > p" con el texto "Te facilitamos la forma de pagar tus multas y patentes de los distintos servicios públicos."
    And se espera "2" segundos
# despliegue de Multas de SERNAC
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-11632 > a > span"
    And que se encontró un elemento "#post-11619 > div > div > div > div > section > div > div > div > div > div > section.elementor-section.elementor-inner-section.elementor-element.elementor-element-18b0b23.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > div.elementor-element.elementor-element-8e25831.elementor-widget.elementor-widget-heading > div > h1" con el texto "Nueva Forma de Pagar tus Multas y Patentes"
    And que se encontró un elemento "#post-11619 > div > div > div > div > section > div > div > div > div > div > section.elementor-section.elementor-inner-section.elementor-element.elementor-element-18b0b23.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > div.elementor-element.elementor-element-dfaf347.elementor-widget.elementor-widget-text-editor > div > div > p" con el texto "Te facilitamos la forma de pagar tus multas y patentes de los distintos servicios públicos."
    And se espera "2" segundos
# despliegue de multas fonasa
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-15130 > a > span"
    And se espera "2" segundos
    And que se encontró un elemento "#id-div-idp-titulo > b" con el texto "Te damos la bienvenida"
    When se cliquea el elemento de la pagina "#id-a-idp-sitioTgr > label > strong"
# despliegue de Patentes Derechos de Agua No Utilizados
  #  When se cliquea el selector "#menu-item-949 > a"  
  #  When se cliquea el selector "#menu-item-2486 > a"
  #  And se espera "5" segundos
  #  When se cliquea el selector "#menu-item-9788 > a > span"
  #  And que se encontró un elemento "#post-9781 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-29361f8c.elementor-section-stretched.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > div > div > h1:nth-child(2)" con el texto "Pago de Patentes Derechos de Aguas No Utilizados"
  #  When se cliquea el elemento de la pagina "#tgr-wp-patentesagua-pagoimpuestosfiscales"
  #  And se espera "2" segundos
  #  And que se encontró un elemento "#id-div-idp-titulo > b" con el texto "Te damos la bienvenida"
  #  When se cliquea el elemento de la pagina "#id-a-idp-sitioTgr > label > strong"
  #  And se espera "2" segundos
# despliegue de Oferta Económica Casinos Ley N° 19.995/2005
  #  When se cliquea el selector "#menu-item-949 > a"  
  # When se cliquea el selector "#menu-item-2486 > a"
  #  When se cliquea el selector "#menu-item-16161 > a > span"
   # And que se encontró un elemento "body > div:nth-child(16) > div:nth-child(1) > h1" con el texto "Oferta Económica Casinos"
   # Given que se encontró un elemento "body > app-root > app-dps > div > div" en el frame "#tgr-sp-contenedor-iframe > iframe" con el texto "FORMULARIO DECLARACION Y PAGO SIMULTANEO"
# despliegue de tribunal de cuentas
  #  When se cliquea el selector "#menu-item-949 > a"  
  #  When se cliquea el selector "#menu-item-2486 > a"
  #  When se cliquea el selector "#menu-item-16162 > a > span"
  #  And que se encontró un elemento "body > div:nth-child(16) > div:nth-child(1) > h1" con el texto "Tribunal de Cuentas"
  #  Given que se encontró un elemento "body > app-root > app-dps > form > table > tr > td:nth-child(1) > span.encabezadoTituloTGR" en el frame "#tgr-sp-contenedor-iframe > iframe" con el texto "TESORERÍA GENERAL DE LA REPÚBLICA"

