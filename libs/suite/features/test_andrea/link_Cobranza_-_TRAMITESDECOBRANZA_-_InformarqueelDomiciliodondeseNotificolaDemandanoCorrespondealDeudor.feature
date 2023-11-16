Feature: link Cobranza - TRAMITESDECOBRANZA - InformarqueelDomiciliodondeseNotificolaDemandanoCorrespondealDeudor
          Yo como usuario quiero entrar al portal TGR y Verificar funcionalidad de link Cobranza y sublink Informar que el Domicilio donde se Notificó la Demanda no Corresponde al Deudor 

Scenario: Validamos funcionalidad de links Cobranza y Tramites de Cobranza - Informar que el domicilio donde se notificó la demanda no corresponde al deudor
   Given que se encuentra en la url "https://www.tgr.cl/"
   And que se encontró un elemento "#menu-item-953 > a > span:nth-child(1)" con el texto "Cobranza"
   When que se cliquea el elemento "span" con el texto "Cobranza"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-2493 > a > span:nth-child(1)" con el texto "Trámites de Cobranza"
   And que se cliquea el elemento "span" con el texto "Trámites de Cobranza"
   And se espera "1" segundos
   And que se encontró un elemento "#menu-item-4612 > span > span" con el texto "TRÁMITES DE COBRANZA"
   And que se encontró un elemento "#menu-item-8284 > a > span" con el texto "Informar que el Domicilio donde se Notificó la Demanda no Corresponde al Deudor"
   Then que se cliquea el elemento "span" con el texto "Informar que el Domicilio donde se Notificó la Demanda no Corresponde al Deudor"
   And se espera "3" segundos
   And que se encontró un elemento "h1" con la clase "elementor-heading-title" con el texto "Informar que el domicilio donde se notificó la demanda no corresponde al deudor"
   And que se encontró un elemento "h3" con la clase "elementor-heading-title" con el texto "¿Qué es o qué permite?"
