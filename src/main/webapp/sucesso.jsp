<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Cadastro bem sucedido</title>
        <link rel='stylesheet' href='css/geral.css' type='text/css'>
    </head>
    <body>
        <h1>Cadastro de <i>${info.nome}</i> realizado com sucesso!</h1>
        <br>
        <input type="button" onclick="history.back()" value="<< Voltar">
    </body>
</html>
