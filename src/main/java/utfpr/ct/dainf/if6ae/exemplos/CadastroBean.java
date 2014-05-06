package utfpr.ct.dainf.if6ae.exemplos;

import java.util.Calendar;
import java.util.GregorianCalendar;

public class CadastroBean {

    private String nome = "";
    private String sexo = "M";
    private boolean fumante = false;
    private int cep1 = 0,  cep2 = 0;
    private String rua = "";
    private String complemento = "";
    private String cidade = "";
    private String fone = "";
    private String email = "";
    private final GregorianCalendar validade = new GregorianCalendar();
    private int dia = validade.get(Calendar.DAY_OF_MONTH);
    private int mes = validade.get(Calendar.MONTH);
    private int ano = validade.get(Calendar.YEAR);
    private static final String[] meses = {
        "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho",
        "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"
    };

    /** Creates a new instance of CadastroBean */
    public CadastroBean() {
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public void setFumante(boolean fumante) {
        this.fumante = fumante;
    }

    public boolean isFumante() {
        return fumante;
    }

    public void setCep1(int cep1) {
        this.cep1 = cep1;
    }

    public int getCep1() {
        return cep1;
    }

    public void setCep2(int cep2) {
        this.cep2 = cep2;
    }

    public int getCep2() {
        return cep2;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public String getRua() {
        return rua;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getCidade() {
        return cidade;
    }

    public void setFone(String fone) {
        this.fone = fone;
    }

    public String getFone() {
        return fone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setDia(int dia) {
        this.dia = dia;
    }

    public int getDia() {
        return dia;
    }

    public void setMes(int mes) {
        this.mes = mes;
    }

    public int getMes() {
        return mes;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public int getAno() {
        return ano;
    }

    public GregorianCalendar getValidade() {
        return validade;
    }

    public String[] getMeses() {
        return meses;
    }
}
