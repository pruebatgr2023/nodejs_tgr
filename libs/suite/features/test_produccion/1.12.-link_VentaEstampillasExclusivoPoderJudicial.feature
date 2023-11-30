Feature: link Pago - PagosImpuestos - OTROSPAGOSRECTIFICATORIAS - VentaEstampillasExclusivoPoderJudicial
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Venta de Estampillas Exclusivo Poder Judicial

Scenario: Validamos funcionalidad de links Venta de Estampillas Exclusivo Poder Judicial
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"
   When que se cliquea el elemento "span" con el texto "Pagos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2485 > a > span:nth-child(1)" con el texto "Pagos de Impuestos"
   And que se cliquea el elemento "span" con el texto "Pagos de Impuestos"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2499 > span > span" con el texto "OTROS PAGOS Y RECTIFICATORIAS"
   And que se encontró un elemento "#menu-item-16468 > a > span" con el texto "Venta de Estampillas Exclusivo Poder Judicial"
   Then que se cliquea el elemento "span" con el texto "Venta de Estampillas Exclusivo Poder Judicial"
   And se espera "3" segundos
   And que se encontró un elemento "h1" con la clase "titulo-tramite" con el texto "Venta de Estampillas Exclusivo Poder Judicial"