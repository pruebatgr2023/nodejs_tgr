Feature: Verificar que un contribuyente tiene mas de una deuda aduanera no vencida
              Yo como usuario quiero entrar al portal de contribuciones para Verificar que si un contribuyente tiene más de deuda aduanera no vencida y estas deudas son pagada en su completa, el registro en CUT código 9018 se encuentra con marca

Scenario: Se valida campos de editar en portal mi cuenta
    Given que se encuentra en la url "http://intranettest/SistemaGestionNewWeb/index"
        And que se encontró un elemento "#sistemas_gestion_fondo > td" con el texto "SISTEMAS DE GESTIÓN"
        And que se encontró un elemento "label" con el texto "Usuario"
        And que en el elemento "input" con id "intra_username" se ingresó el texto "jrojasvT"
        And que en el elemento "input" con id "textfield2" se ingresó el texto "12345678"
        When que se cliquea el elemento "input" con la id "btn1"
        And se espera "3" segundos
        And que se encontró un elemento "div:nth-child(1) > div.azul_top" con el texto "CUENTA USUARIO"
        And que se encontró un elemento "body > table > tbody > tr:nth-child(2) > td:nth-child(1) > table > tbody > tr:nth-child(8) > td > div > span" con el texto "Egresos"
        And que se encontró un elemento "body > table > tbody > tr:nth-child(2) > td:nth-child(1) > table > tbody > tr:nth-child(24) > td:nth-child(2) > a" con el texto "Bonificación mano de Obra (889)"
        And que se cliquea el elemento "a" con el texto "Bonificación mano de Obra (889)"
        And se espera "3" segundos
        And que se cambió a la pestaña "1"
        And se espera "3" segundos
        Then se encuentra un elemento "body > div.container-fluid.tgr-padding > div:nth-child(2) > div > div > div > h2" con el texto "Bienvenido(a) al Sistema de Bonificación a la Mano de Obra"