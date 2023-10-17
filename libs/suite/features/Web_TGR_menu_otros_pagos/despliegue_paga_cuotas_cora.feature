Feature: linck Menu Princial - pago multas, patentes o tros
pago cuotas cora
Scenario: reconocemos elementos menu princial, ingresamos a pago y reconocemos links del menú multas, patentes y otros
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-16938 > a > span"  
    And que se encontró un elemento "#post-16582 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-5ea63521.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > div > div > h1" con el texto "Solicitar pagar cuotas de deuda Ex Cora (Corporación de Reforma Agraria)"
    And que se encontró un elemento "#post-16582 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-5ea63521.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > section > div > div > div.elementor-column.elementor-col-50.elementor-inner-column.elementor-element.elementor-element-6a5f015b > div > div > div.elementor-element.elementor-element-6dde4603.elementor-widget.elementor-widget-heading > div > h3" con el texto "¿Qué es o qué permite?"


