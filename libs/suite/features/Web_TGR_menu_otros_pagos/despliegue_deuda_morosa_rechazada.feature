Feature: linck Menu Princial - pago multas, patentes o tros
deuda moroza rechazada
Scenario: reconocemos elementos menu princial, ingresamos a pago y reconocemos links del menú multas, patentes y otros
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-16757 > a > span"  
    And que se encontró un elemento "#post-16653 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-7b199781.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > div > div > h1" con el texto "Solicitar consignar deudas morosas por oferta de pago rechazada"
    And que se encontró un elemento "#post-16653 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-7b199781.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > section > div > div > div.elementor-column.elementor-col-50.elementor-inner-column.elementor-element.elementor-element-4a4308ff > div > div > div.elementor-element.elementor-element-10470719.elementor-widget.elementor-widget-heading > div > h3" con el texto "¿Qué es o qué permite?"


