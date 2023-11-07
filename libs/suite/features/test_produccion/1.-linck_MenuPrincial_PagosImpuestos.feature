Feature: Menu Princial - link Pago
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Pago del Menú principal

Scenario: reconocemos elementos menu princial, ingresamo a pago y reconocemos links del menú Pagos de Impuestos
    Given que se encuentra en la url "https://www.tgr.cl/"
    And que se encontró un elemento "#menu-item-949 > a > span:nth-child(1)" con el texto "Pagos"
    And que se encontró un elemento "#menu-item-950 > a > span:nth-child(1)" con el texto "Beneficios y  Devoluciones"
    And que se encontró un elemento "#menu-item-951 > a > span:nth-child(1)" con el texto "Certificados y  Comprobantes"
    And que se encontró un elemento "#menu-item-953 > a > span:nth-child(1)" con el texto "Cobranza"
    And que se encontró un elemento "#menu-item-3916 > a > span:nth-child(1)" con el texto "Instituciones y  Proveedores"
    When que se cliquea el elemento "span" con el texto "Pagos"
    And se espera "1" segundos
    And que se encontró un elemento "#menu-item-2485 > a > span:nth-child(1)" con el texto "Pagos de Impuestos"
    And que se encontró un elemento "#menu-item-2487 > a > span:nth-child(1)" con el texto "Convenios de pago"
    And que se encontró un elemento "#menu-item-2486 > a > span:nth-child(1)" con el texto "Multas, Patentes y Otros"
    Then que se cliquea el elemento "span" con el texto "Pagos de Impuestos"
    And se espera "1" segundos
    And que se encontró un elemento "#menu-item-2496 > span > span" con el texto "CONTRIBUCIONES"
    And que se encontró un elemento "#menu-item-14396 > a > span" con el texto "Pago de Contribuciones"
    And que se encontró un elemento "#menu-item-2497 > span > span" con el texto "IMPUESTOS ADUANEROS"
    And que se encontró un elemento "#menu-item-16214 > a > span" con el texto "Pago Aduana Agentes"
    And que se encontró un elemento "#menu-item-16215 > a > span" con el texto "Pago Importación Vía Postal (F18)"
    And que se encontró un elemento "#menu-item-16216 > a > span" con el texto "Pago Aduana Importadores"
    And que se encontró un elemento "#menu-item-5082 > a > span" con el texto "Pago Importación por Viajeros"
    And que se encontró un elemento "#menu-item-2498 > span > span" con el texto "IMPUESTOS FISCALES"
    And que se encontró un elemento "#menu-item-10959 > a > span" con el texto "Pago de Impuestos Fiscales y Aduaneros en Línea"
    And que se encontró un elemento "#menu-item-10958 > a > span" con el texto "Cupón de Pago de Impuestos Fiscales y Aduaneros en Línea"
    And que se encontró un elemento "#menu-item-2499 > span > span" con el texto "OTROS PAGOS Y RECTIFICATORIAS"
    And que se encontró un elemento "#menu-item-19013 > a > span" con el texto "Pago de Donaciones Ley N° 20.444"
    And que se encontró un elemento "#menu-item-5202 > a > span" con el texto "Impuesto Verde a Fuentes Móviles" 
    And que se encontró un elemento "#menu-item-16152 > a > span" con el texto "Rectificatoria Impuesto Verde"
    And que se encontró un elemento "#menu-item-4573 > a > span" con el texto "Solicitar Regularización de un Pago No Ingresado al Sistema"
    And que se encontró un elemento "#menu-item-16468 > a > span" con el texto "Venta de Estampillas Exclusivo Poder Judicial"
    And que se encontró un elemento "#menu-item-5082 > a > span" con el texto "Pago Importación por Viajeros"