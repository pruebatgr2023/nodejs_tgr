Feature: Consultar OP - vista por FECHA - Operación: Desaprobar OP
              Yo como usuario quiero entrar al sistema Gestión - Sistema Apoyo Egresos - Gestión de Ordenes y poder consultar ordenes de pago en la vista por Fecha y acción aprobar OP

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
        When se espera "2" segundos

Scenario: Ir a la opción Ordenes de Pago por FECHA desde Gestión de Ordenes
    Given que se cliquea el elemento "a" con el texto " Gestión de Órdenes "
        When se espera "2" segundos
            And que se presionó la tecla "ArrowDown"
            And que se presionó la tecla "ArrowDown"
            And que se presionó la tecla "ArrowDown"
            And que se presionó la tecla "ArrowDown"
        When se espera "1" segundos
            And que se presionó la tecla "Enter"
        When se espera "2" segundos
#Operación Aprobar OP - Concepto DT_FINIQUITO_ELECTRONICO
            And que en el elemento "input" con id "fechaDesde" se ingresó el texto "07-07-2023"
        When se espera "1" segundos
            And que en el elemento "input" con id "fechaHasta" se ingresó el texto "30-08-2023"
            And que se presionó la tecla "Enter"
        When se espera "1" segundos
            And se cliquea el selector "#ConceptoPago"
        When se espera "1" segundos
            And que se presionó la tecla "D"
            And que se presionó la tecla "ArrowDown"
            And que se presionó la tecla "ArrowDown"
            And que se presionó la tecla "ArrowDown"
            And que se presionó la tecla "ArrowDown"
            And que se presionó la tecla "ArrowDown"
            And que se presionó la tecla "ArrowDown"
            And que se presionó la tecla "ArrowDown"
            And que se presionó la tecla "ArrowDown"
            And que se presionó la tecla "ArrowDown"
            And que se presionó la tecla "ArrowDown"
            And que se presionó la tecla "ArrowDown"
            And que se presionó la tecla "ArrowDown"
            And que se presionó la tecla "ArrowDown"
        When se espera "1" segundos
            And que se presionó la tecla "Enter"
        When se espera "1" segundos
            And se cliquea el selector "#btnBuscar"
        When se espera "3" segundos
            And que se encontró un elemento "#tblOrdenesPago > tbody > tr:nth-child(1) > td.text-center.sorting_1" con el texto "DT_FINIQUITO_ELECTRONICO"
        When se espera "2" segundos