Feature: despliegue de link

Scenario: reconocemos elementos menu princial, ingresamos a pago y reconocemos links del menú multas, patentes y otros
    Given que se encuentra en la url "https://www.tgr.cl/"
    And se espera "2" segundos
    When se cliquea el selector "#menu-item-949 > a"  
    When se cliquea el selector "#menu-item-2486 > a"
    When se cliquea el selector "#menu-item-4842 > a > span"
    And que se encontró un elemento "#post-4811 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-24d8f8b5.elementor-section-stretched.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > div.elementor-element.elementor-element-54acede.elementor-widget.elementor-widget-heading > div > h1" con el texto "Patentes Mineras"
    And que se encontró un elemento "#post-4811 > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-6078638e.elementor-section-stretched.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div > div > div > div > div > div.cell.creacion-formularios > h3" con el texto "Creación de Formularios"
    And se espera "5" segundos