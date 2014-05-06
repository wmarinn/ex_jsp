<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8" %>
<%@page errorPage="erro.jsp" isErrorPage="false" %>

<jsp:useBean class="utfpr.ct.dainf.if6ae.exemplos.CadastroBean" id="info" scope="session"/>
<jsp:setProperty name="info" property="*" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title>Cadastro</title>
        <link rel='stylesheet' href='css/geral.css' type='text/css'>
    </head>
    <body>
        <h1>CADASTRO</h1>
        <form action='index.jsp' method='post'>
            <table>
                <tr>
                    <td> Nome: <input type='text' name='nome' size='40' value='${info.nome}'
                    maxlength='40'></td>
                </tr>
                <tr>
                    <td> Sexo: <input type='radio' name='sexo' value='M' ${info.sexo == "M" ? "checked" : ""}>Masculino</td>
                    <td><input type='radio' name='sexo' value='F' ${info.sexo == "F" ? "checked" : ""}>Feminino</td>
                </tr>
                <tr>
                    <td> Fumante: <input type='checkbox' name='fumante' ${info.fumante ? "checked" : ""}></td>
                </tr>
                <tr>
                    <td> CEP: <input type='text' name='cep1' size='5' value='${info.cep1}' maxlength='5'>-
                    <input type='text' name='cep2' size='3' value='${info.cep2}' maxlength='3'></td>
                </tr>
                <tr>
                    <td> Rua: <input type='text' name='rua' size='50' value='${info.rua}'
                    maxlength='50'></td>
                </tr>
                <tr>
                    <td> Complemento: <input type='text' name='complemento' value='${info.complemento}'
                    size='15' maxlength='15'></td>
                </tr>
                <tr>
                    <td> Cidade: <input type='text' name='cidade' size='30' value='${info.cidade}'
                    maxlength='30'></td>
                </tr>
                <tr>
                    <td> Fone: <input type='text' name='fone' size='15' value='${info.fone}'></td>
                </tr>
                <tr>
                    <td> Data de validade:
                        <select name='dia'>
                            <% for (int d = 1; d <= 31; d++) { %>
                            <option value='<%= d %>' <%= d == info.getDia() ? "selected" : "" %>><%= d %></option>
                            <% } %>
                        </select>
                        &nbsp;/&nbsp;
                        <select name='mes'>
                            <% for (int m = 0; m < 12; m++) { %>
                            <option value='<%= m %>' <%= m == info.getMes() ? "selected" : "" %>>${info.meses[m]}</option>
                            <% } %>
                        </select>
                        &nbsp;/&nbsp;
                        <select name='ano'>
                            <% for (int a = 2004; a <= 2010; a++) { %>
                            <option value='<%= a %>' <%= a == info.getAno() ? "selected" : "" %>><%= a %></option>
                            <% } %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td> E-mail: <input type='text' name='email' size='40' value='${info.email}'
                    maxlength='40'></td>
                </tr>
            </table>
            <br>
            <br>
            <input type='submit' value='Ok'/> <input style="margin-left: 5em" type='reset' value='Limpar'/>
        </form>
    </body>
</html>

                    
<% if (request.getMethod().equals("POST")) {
    response.sendRedirect("/exemplo-jsp/sucesso.jsp");
} %>
