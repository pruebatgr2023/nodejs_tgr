Feature: link Cobranza - Consultas - PropiedadesenRemate
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Cobranza y sublink Consultas 

Scenario: Validamos funcionalidad de links Cobranza y Consultas - Propiedades en Remate
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-953 > a > span:nth-child(1)" con el texto "Cobranza"
   When que se cliquea el elemento "span" con el texto "Cobranza"
   And se espera "2" segundos
   When se cliquea el selector "#menu-item-8051 > a"
   And se espera "2" segundos
   When se cliquea el selector "#menu-item-4413 > a"
   And se espera "3" segundos


