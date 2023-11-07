Feature: link Pago - PagosImpuestos - CONTRIBUCIONES - PagoContribuciones Ingreso_Contribuciones_SinClave
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Pago de Contribuciones

Scenario: Validamos funcionalidad de links Pago de Contribuciones
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"
   When que se cliquea el elemento "span" con el texto "Pagos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2485 > a > span:nth-child(1)" con el texto "Pagos de Impuestos"
   And que se cliquea el elemento "span" con el texto "Pagos de Impuestos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2496 > span > span" con el texto "CONTRIBUCIONES"
   And que se encontró un elemento "#menu-item-14396 > a > span" con el texto "Pago de Contribuciones"
   Then que se cliquea el elemento "span" con el texto "Pago de Contribuciones"
   And se espera "1" segundos
   And que se encontró un elemento "h1" con el texto " Contribuciones"
   And que se encontró un elemento "h2" con el texto "¿Qué necesitas hacer?"
   And se cliquea el elemento "#tgr-wp-contribuciones-pagarenlineasinclave" con la clase "primario"
   And se espera "15" segundos
   And se cambia a la pestaña "1"
    And que se encontró un elemento "body > app-root > app-main > mdl-layout > div > div > mdl-layout-content > app-agregar > app-agregar-nueva > app-linea-tiempo > div > div > div:nth-child(1) > p" con el texto "1. Buscar"
    And se cliquea el elemento de la pagina "#mdl-textfield-c016e6fb"
    And en el elemento "Input" con id "tgr-ng-bbrr-rol" se ingresa el texto "668"
    And en el elemento "Input" con id "tgr-ng-bbrr-subRol" se ingresa el texto "180"
