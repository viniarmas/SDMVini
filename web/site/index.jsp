<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="cabecalho.jsp"%>
<%
    String mensagem = "";
    if (request.getParameter("txtEntrarLogin") != null
            || request.getParameter("txtEntrarSenha") != null) {
        JogadorDAO dao = new JogadorDAO();
        Jogador jogador;
        String login = request.getParameter("txtEntrarLogin");
        String senha = request.getParameter("txtEntrarSenha");

        jogador = dao.realizarLogin(login, senha);
        if (jogador != null) {
            session.setAttribute("spiderman", jogador);
            response.sendRedirect("jogo.jsp");
        } else {
            mensagem = "Login errado";
        }
    }
%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <img src="img/show.png" alt=""/>
        </div>
        <div class="mdl-card__supporting-text">
            <div class="inicialformulario">
                <h4>Entrar</h4>
                <form action="index.jsp" method="post">
                    <div class="mdl-cell--12-col"> 
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" name="txtEntrarLogin" required  id="txtLogin" />
                            <label class="mdl-textfield__label" for="txtLogin">Login</label>
                        </div>
                    </div>
                    <div class="mdl-cell--12-col"> 
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="password" name="txtEntrarSenha" required  id="txtSenha" />
                            <label class="mdl-textfield__label" for="txtSenha">Senha</label>
                        </div>
                    </div>
                    <div class="mdl-cell--12-col">

                        <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                            Entrar
                        </button>

                        <button type="reset" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                            Limpar
                        </button>
                    </div>                    
                </form>
                <br/> <a href="jogo.jsp" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">Pular login</a>
                <hr/>
                <h4>Cadastre-se</h4>
                <a href="cadastro.jsp" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">Realizar Cadastro</a>
            </div>
        </div>
    </div>
    <%@include file="rodape.jsp"%>