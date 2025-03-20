# Estudos ViewCode

### Storyboard x ViewCode:

#### Storyboard

O que é?
  
Vantagens:
  - Velocidade para construir
  - Construção de maneira visual
  - Baixa experiência na área
  - Velocidade para encontrar os arquivos

Desvantagens:
  - Resolver conflitos de merge
  - Sem controle do fluxo de inicialização
  - Pouco conhecimento sobre as propriedades dos elementos nativos


#### ViewCode
O que é?

Vantagens:
  - Controle de Fluxo de inicialização
  - Reutilização de components de maneira fácil
  - Fácil manutenção para resolver conflitos de merge
  - Aumento de conhecimentos sobre as propriedades dos elementos nativos

Desvantagens:
  - Não é visual
  - Complexidade
  - Demora muito mais para se criar uma tela em ViewCode

----------------------------

### AppDelegate x SceneDelegate:

#### AppDelegate:
- Responsável pelo ciclo de vida e configuração do aplicativo

#### SceneDelegate:
- atualização nova para separar alguns métodos do AppDelegate
- Responsável pelo o que é mostrado na tela, e com ele podemos manipular e gerenciar a forma como o aplicativo é exibido

----------------------------

### Lifecycle no Swift:

#### viewDidLoad:
- primeiro método a ser executado.
- é disparado dps da renderização (armazenamento na memória) da tela, apenas 1 vez.

#### viewWillAppear:
- disparado após o viewDidLoad.
- dispara toda vez que a tela é apresentada.

#### viewDidAppear:
- disparado após o viewWillAppear.
- só dispara quando a tela está totalmente sendo exibinda.

#### viewWillDisppear:
- disparado ao sair da tela

#### viewDidDisppear:
- disparado quando já saiu da tela