Feature: Consultar cuenta en Sistema Integral de Renta
              Yo como usuario quiero entrar al sistema Gestión - Sistema Integral de Renta y poder consultar cuentas

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
            And que se encontró un elemento "body > table > tbody > tr:nth-child(2) > td:nth-child(1) > table > tbody > tr:nth-child(24) > td:nth-child(5) > a" con el texto "Sistema Integral de Renta"
            And que se cliquea el elemento "a" con el texto "Sistema Integral de Renta"
        When se espera "1" segundos
            And que se cambió a la pestaña "1"
        When se espera "2" segundos

Scenario: Consultar RUT en SIR que posee asociado F74
    Given que se encontró un elemento "#contenedorTodo > div > div.ui-widget-content.ui-corner-all > div > h1" con el texto "Bienvenido(a) al Sistema de Renta Periodica"
        When se espera "2" segundos
            And que se cliquea el elemento "a" con el texto " Consultas"
        When se espera "2" segundos
            And que en el elemento "input" con id "rutCont" se ingresó el texto "13770888"
        When se espera "1" segundos   
            And se cliquea el elemento de la pagina "#dvCont"
        When se espera "1" segundos    
            And que se cliquea el elemento "#btnBuscaCtaRenta" con la id "btnBuscaCtaRenta"
        When se espera "2" segundos
            And que se encontró un elemento "#ctaRentaDataTable > thead > tr > th.center.sorting.ui-state-default.sorting_asc > div" con el texto "ANO TRIBUTARIO"
        When se espera "1" segundos 
            And se cliquea el elemento de la pagina "#envrecA_img_1"
        When se espera "2" segundos
            And que se encontró un elemento "#contieneDetalleCuentaRenta > div:nth-child(1) > h3" con el texto "Datos de la Transaccion"
        When se espera "1" segundos
            And se cliquea el elemento de la pagina "#tblCtaRentaDetalle > tbody > tr:nth-child(3) > td:nth-child(1) > a"
        When se espera "1" segundos
            And que se encontró un elemento "#ui-id-6" con el texto "Detalle Formulario Cuenta Renta"
        When se espera "1" segundos
            And se cliquea el elemento de la pagina "#tblCtaRentaDetFormulario > tbody > tr:nth-child(2) > td:nth-child(1) > a"
        When se espera "1" segundos
            And que se encontró un elemento "#ui-id-7" con el texto "Resultado del Egreso"
        When se espera "1" segundos
            And que se encontró un elemento "#contieneDetalleEgresoCtaRenta > div:nth-child(2) > h3" con el texto "Detalle General del Egreso"
        When se espera "1" segundos
            And que se encontró un elemento "#contieneDetalleEgresoCtaRenta > div:nth-child(5) > h3" con el texto "Detalle del Egreso"
        When se espera "1" segundos