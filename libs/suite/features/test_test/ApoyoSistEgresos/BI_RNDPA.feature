Feature: Reporte BI RNDPA Renta Periodica
              Yo como usuario quiero entrar al sistema Gestión - Sistema Apoyo Egresos - Gestión de Ordenes y poder ver el reporte BI de RNDPA Renta Periodica

Scenario: Ingresar a Sistema Gestion - Sistema Apoyo Egresos
    Given que se encuentra en la url "http://intranettest/SistemaGestionNewWeb/index"
        When que se encontró un elemento "#sistemas_gestion_fondo > td" con el texto "SISTEMAS DE GESTIÓN"
            And que se encontró un elemento "label" con el texto "Usuario"
            And que en el elemento "input" con id "intra_username" se ingresó el texto "gvegaT"
            And que en el elemento "input" con id "textfield2" se ingresó el texto "12345678"
        When que se cliquea el elemento "input" con la id "btn1"
            And se espera "3" segundos
            And que se encontró un elemento "div:nth-child(1) > div.azul_top" con el texto "CUENTA USUARIO"
            And que se encontró un elemento "body > table > tbody > tr:nth-child(2) > td:nth-child(1) > table > tbody > tr:nth-child(8) > td > div > span" con el texto "Egresos"
            And que se encontró un elemento "body > table > tbody > tr:nth-child(2) > td:nth-child(1) > table > tbody > tr:nth-child(27) > td:nth-child(5) > a" con el texto "Apoyo Sistemas Egresos"
            And que se cliquea el elemento "a" con el texto "Apoyo Sistemas Egresos"
        When se espera "1" segundos
            And que se cambió a la pestaña "1"
        When se espera "3" segundos

Scenario: Ir al reporte BI de Ordenes de Pago Anuladas desde Gestión de Ordenes
    Given que se cliquea el elemento "a" con el texto " Gestión de Órdenes "
        When se espera "3" segundos
            And que se cliquea el elemento "a" con el texto "Monitoreo Interconexión RNDPA "
        When se espera "3" segundos 
            And que se cambió a la pestaña "2"
    Given que se encuentra en la url "http://bi-desa2019/Reports/report/Divisi%C3%B3n%20de%20Operaciones/Egresos/Interconexi%C3%B3n%20con%20Servicio%20Deudores%20Pensi%C3%B3n%20Alimenticia%20-%20Ley%2021.389"
        When se espera "5" segundos
            And que se encontró un elemento "#main > div > paginated-report-viewer > div > section > breadcrumbs > div > span:nth-child(4) > span.ng-binding.ng-scope" con el texto "Interconexión con Servicio Deudores Pensión Alimenticia - Ley 21.389"