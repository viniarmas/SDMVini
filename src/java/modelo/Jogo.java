package modelo;

import dao.PerguntaDAO;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Jogo {

    private List<Pergunta> perguntas;
    private Integer pontuacao;
    private Integer pulos;

    public Jogo() {
        this.pulos = 3;
        this.pontuacao = 0;
    }

    public List<Pergunta> getPerguntas() {
        return perguntas;
    }

    public void setPerguntas(List<Pergunta> perguntas) {
        this.perguntas = perguntas;
    }

    public Integer getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(Integer pontuacao) {
        this.pontuacao = pontuacao;
    }

    public Integer getPulos() {
        return pulos;
    }

    public Integer Acerto() {
        Integer acerto = 0;
        if(this.pontuacao == 0)
        {
            acerto = 1000;
        }
        return acerto;
    }

    public Integer Erro() {
        Integer erro = 0;
        return erro;
    }

    public Integer Parou() {
        return this.pontuacao;
    }

    public void setPulos(Integer pulos) {
        this.pulos = pulos;
    }

    public void iniciar() {
        try {
            //Carrega as perguntas
            PerguntaDAO dao = new PerguntaDAO();
            this.setPerguntas(dao.listar());
        } catch (Exception ex) {
            Logger.getLogger(Jogo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean confirmar(String opcaomarcada) {
        if (opcaomarcada.equals(this.getPerguntas().get(0).getCerta())) {
            //Excluo a pergunta atual
            this.getPerguntas().remove(0);
            this.setPontuacao(this.Acerto());
            return true;
        } else {
            this.setPontuacao(this.Erro());
            return false;
        }
    }

    public boolean pular() {
        if (this.pulos != 0) {

            this.pulos--;
            this.getPerguntas().remove(0);
            return true;
        } else {
            return false;
        }
    }

}
