/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pratica.jsp;

import java.beans.*;
import java.io.Serializable;
import java.util.Calendar;
import java.util.GregorianCalendar;

/**
 *
 * @author user
 */
public class loginBean {
    
    private String login;
    private String senha;
    private String perfil;

    /** Creates a new instance of CadastroBean */
    public loginBean() {
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }
    
}
