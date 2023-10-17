Feature: despliegue de link

Scenario: reconocemos elementos menu princial, ingresamos a pago y reconocemos links del menú multas, patentes y otros
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-11632 > a > span"
    And que se encontró un elemento "#post-11619 > div > div > div > div > section > div > div > div > div > div > section.elementor-section.elementor-inner-section.elementor-element.elementor-element-18b0b23.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > div.elementor-element.elementor-element-8e25831.elementor-widget.elementor-widget-heading > div > h1" con el texto "Nueva Forma de Pagar tus Multas y Patentes"
    And que se encontró un elemento "#post-11619 > div > div > div > div > section > div > div > div > div > div > section.elementor-section.elementor-inner-section.elementor-element.elementor-element-18b0b23.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > div.elementor-element.elementor-element-dfaf347.elementor-widget.elementor-widget-text-editor > div > div > p" con el texto "Te facilitamos la forma de pagar tus multas y patentes de los distintos servicios públicos."
    And se espera "2" segundos