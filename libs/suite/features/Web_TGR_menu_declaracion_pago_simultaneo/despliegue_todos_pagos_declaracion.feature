Feature: despliegue de link
todos los pagos declaracion
Scenario: reconocemos elementos menu princial, ingresamos a pago y reconocemos links del menú multas, patentes y otros
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-9635 > a > span"
    And que se encontró un elemento "#post-8929 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-1343527.elementor-section-stretched.elementor-section-full_width.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > section.elementor-section.elementor-inner-section.elementor-element.elementor-element-6a8b6b3.elementor-section-full_width.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > div > div > div > h1" con el texto "Pagos con Declaración"
    And que se encontró un elemento "#post-8929 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-1343527.elementor-section-stretched.elementor-section-full_width.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > section.elementor-section.elementor-inner-section.elementor-element.elementor-element-0a086ad.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div.elementor-column.elementor-col-50.elementor-inner-column.elementor-element.elementor-element-31fda9d > div > div > div.elementor-element.elementor-element-12ad672.elementor-widget.elementor-widget-heading > div > h2" con el texto "Todas las Declaraciones"
