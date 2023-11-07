Feature: link Pago - PagosImpuestos - OTROSPAGOSRECTIFICATORIAS - SolicitarRegularizaciónPagoNoIngresadoAlSistema
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Solicitar la regularización de un pago no ingresado al sistema

Scenario: Validamos funcionalidad de links Solicitar la regularización de un pago no ingresado al sistema
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"
   When que se cliquea el elemento "span" con el texto "Pagos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2485 > a > span:nth-child(1)" con el texto "Pagos de Impuestos"
   And que se cliquea el elemento "span" con el texto "Pagos de Impuestos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2499 > span > span" con el texto "OTROS PAGOS Y RECTIFICATORIAS"
   And que se encontró un elemento "#menu-item-4573 > a > span" con el texto "Solicitar Regularización de un Pago No Ingresado al Sistema"
   Then que se cliquea el elemento "span" con el texto "Solicitar Regularización de un Pago No Ingresado al Sistema"
   And se espera "3" segundos
   And que se encontró un elemento "h1" con la clase "elementor-heading-title" con el texto "Solicitar la regularización de un pago no ingresado al sistema"
   And que se encontró un elemento "h3" con la clase "elementor-heading-title" con el texto "¿Qué es o qué permite?"