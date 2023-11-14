Feature: link Pago - PagosImpuestos - CONTRIBUCIONES - PagoContribuciones
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
   And que se encontró un elemento "#tgr-wp-contribuciones-menu-conocertodoslosbeneficios > div > span" con el texto "Conocer los beneficios disponibles"
   And que se encontró un elemento "#tgr-wp-contribuciones-menu-pagarcontribucionesenlinea > div > span" con el texto "Pagar Contribuciones en línea"
   And que se encontró un elemento "#tgr-wp-contribuciones-menu-generarcuponparapagopresencial > div > span" con el texto "Generar cupón para pago presencial"
   And que se encontró un elemento "#tgr-wp-contribuciones-menu-solicitudesenlineadecontribuciones > div > span" con el texto "Solicitudes en línea de Contribuciones"
   And que se encontró un elemento "#tgr-wp-contribuciones-menu-revisarmastramitesdecontribuciones > span" con el texto "Revisar más trámites de Contribuciones"