<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>

<jsp:useBean class="pratica.jsp.loginBean" id="info" scope="session"/>
<jsp:setProperty name="info" property="*" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <h1>LOGIN</h1>
        <form action='login.jsp' method='post'>
            <table>
                <tr>
                    <td> Código: <input type='text' name='login' value='${info.login}'>
                    </td>
                </tr>
                <tr>
                    <td> Nome: <input type='password' name='senha' value='${info.senha}'>
                    </td>
                </tr>
                <tr>
                    <td> 
                        Perfil: <select name='perfil'> 
                            <option id='Cliente' value="1">Cliente</option>
                            <option id='Gerente' value="2">Gerente</option>
                            <option id='Administrador' value="3">Administrador</option>
                        </select>  
                    </td>
                </tr>
            </table>
            <input type='submit' value='Enviar'/>
        </form>
                    <%
                        if (request.getMethod().equals("POST")) {
                            String s = new String();
                            if(info.getPerfil().equals("1"))
                                s = "Cliente";
                            else if(info.getPerfil().equals("2"))
                                s = "Gerente";
                            else if(info.getPerfil().equals("3"))
                                s = "Administrador";
                            if(info.getLogin().equals(info.getSenha())){ %>
                            <div style="color: blue"><%=s%>, login bem sucedido, para ${info.login} às
                            <% Date data = new Date(); 
                            %> <%=data%>
                            </div>
                    <%        }
                            else{ %>
                              <div style="font-style: italic; color: red">Acesso negado</div>  
                    <%        }
                        } 
                        else{
                        
                        }
                        %>
    </body>
</html>
                    


