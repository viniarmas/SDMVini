<%@include file="cabecalho.jsp"%>
        <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <div class="mdl-card mdl-cell mdl-cell--12-col">
                <div class="mdl-card__supporting-text">
                    <h4>Jogador - Cadastrar</h4>
                    <form action="cadastro-ok.jsp" method="post">
                        <!-- 
                            primeira div -- �rea que ocupar� o campo de formul�rio
                            segunda div -- campo de texto e label 
                        -->
                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" required  name="txtLogin" />
                                <label class="mdl-textfield__label" for="txtLogin">Login</label>
                            </div>
                        </div>
                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="email" required  name="txtEmail" />
                                <label class="mdl-textfield__label" for="txtEmail">Email</label>
                            </div>
                        </div>
                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="password" required  name="txtSenha" />
                                <label class="mdl-textfield__label" for="txtSenha">Senha</label>
                            </div>
                        </div>

                        <div class="mdl-cell--12-col">

                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                                <i class="material-icons" type="submit" value="adicionar">save</i></button>
                            <button type="reset" value="limpar" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                                <i class="material-icons">clear</i></button>


                        </div>


                    </form>
                </div>

            </div>


<%@include file="rodape.jsp"%>