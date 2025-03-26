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

#### Transformando um Projeto Storyboard para ViewCode:
1. Excluir o arquivo `main.Storyboard`
2. No arquivo `Info` procurar (command + f) por `main` e excluir o item `Storyboard Name`
3. Na aba `Build Settings` procurar (command + f) por `main` e apagar o value Main do item `UIKit Main Storyboard File Base Name`, irá ficar com value vazio.

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

----------------------------

### CocoaPod:

- Gerenciador de dependências
- As dependências do projeto são adicionados no arquivo Podfile
- Para instalar: `gem install cocoapods` ou `brew install cocoapods`
- Para criar o arquivo Podfiles: vá pelo terminal até a pasta raiz do projeto e rode o comando `pod init`
- Para adicionar uma depência: abre o arquivo e adicione a depência, após isso rode no terminal, na pasta raiz do projeto, o comando `pod install`