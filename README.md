# 🛍️ Flutter Store

Uma aplicação Flutter completa simulando uma loja virtual com foco em componentes de interface e boas práticas de desenvolvimento mobile.

## 📱 Sobre o Projeto

Flutter Store é uma aplicação de e-commerce desenvolvida como projeto educacional, demonstrando os principais conceitos e widgets do Flutter, incluindo navegação, gerenciamento de estado e componentização.

## ✨ Funcionalidades Implementadas

### 1. Tela de Login ✅
- Campos de E-mail e Senha
- Validação visual dos campos
- Mensagens de erro personalizadas
- Link para criar nova conta
- Design moderno com gradiente

### 2. Tela de Cadastro ✅
- Campos: Nome, E-mail, Senha e Confirmar Senha
- Validação completa:
  - Verificação de campos vazios
  - Validação de formato de e-mail
  - Verificação de senhas coincidentes
  - Mínimo de 6 caracteres para senha
- Mensagem de sucesso após cadastro
- Redirecionamento automático ao login

### 3. Tela Inicial (Home) ✅
- AppBar personalizado
- Drawer completo com navegação
- Cards de menu rápido
- Banner de ofertas especiais
- Categorias de produtos
- Design responsivo

### 4. Tela de Produtos ✅
- Lista de 6 produtos simulados
- Cada produto contém:
  - Imagem (com tratamento de erro)
  - Nome
  - Descrição resumida
  - Preço formatado
  - Botão de favoritar
- Contador de produtos disponíveis
- Cards interativos com animação

### 5. Tela de Detalhes do Produto ✅
- Imagem em tamanho grande
- Informações completas do produto
- Sistema de avaliação (estrelas)
- Descrição detalhada
- Especificações:
  - Entrega
  - Garantia
  - Estoque
- Botão de favoritar
- Botão de adicionar ao carrinho
- AppBar com SliverAppBar

### 6. Tela "Meus Produtos" (Favoritos) ✅
- Exibe apenas produtos favoritados
- Atualização automática ao favoritar/desfavoritar
- Tela vazia com CTA quando não há favoritos
- Contador de produtos favoritados
- Remoção direta da lista

### 7. Tela "Sobre" ✅
- Informações sobre o aplicativo
- Lista de funcionalidades
- Tecnologias utilizadas
- Design informativo e organizado

### 8. Splash Screen (BÔNUS) ✅ +1.0
- Animação de fade-in e escala
- Logo do aplicativo
- Indicador de carregamento
- Transição suave para login
- Gradiente de cores

## 🎯 Componentes Utilizados

### Widgets Principais
- ✅ `Container` - Estruturação e estilização
- ✅ `Row` / `Column` - Layout flexível
- ✅ `ListView` - Lista de produtos
- ✅ `TextField` - Campos de entrada
- ✅ `Drawer` - Menu lateral
- ✅ `Navigator` - Navegação entre telas
- ✅ `Card` - Exibição de produtos
- ✅ `Hero` - Animação de transição
- ✅ `SliverAppBar` - AppBar expansível

### Componentização
Todos os componentes foram organizados de forma modular:

```
lib/
├── main.dart                  # App principal e models
├── screens/                   # Telas
│   ├── splash_screen.dart
│   ├── login_screen.dart
│   ├── register_screen.dart
│   ├── home_screen.dart
│   ├── products_screen.dart
│   ├── product_detail_screen.dart
│   ├── favorites_screen.dart
│   └── about_screen.dart
└── widgets/                   # Componentes reutilizáveis
    ├── app_drawer.dart
    ├── custom_text_field.dart
    ├── custom_button.dart
    └── product_card.dart
```

## 🎨 Design e UX

- **Material Design 3** com tema personalizado
- **Gradientes** em vários elementos
- **Animações suaves** (Hero transitions, fade-in, scale)
- **Feedback visual** (SnackBars para ações)
- **Cards com sombras** para profundidade
- **Ícones intuitivos** para melhor navegação
- **Cores consistentes** (Deep Purple como cor primária)

## 🔄 Gerenciamento de Estado

- Uso de `setState` para atualização local
- Estado compartilhado através de lista estática
- Atualização automática entre telas
- Persistência durante a sessão

## 📋 Validações Implementadas

### Login
- Campos não podem estar vazios
- E-mail deve conter "@"

### Cadastro
- Todos os campos obrigatórios
- E-mail com formato válido
- Senhas devem ser idênticas
- Senha mínima de 6 caracteres

## 🚀 Como Executar o Projeto

### Pré-requisitos
- Flutter SDK (versão 3.0 ou superior)
- Dart SDK
- Android Studio / VS Code
- Emulador ou dispositivo físico

### Instalação

1. Clone o repositório:
```bash
git clone https://github.com/Nicolas-Bitencurt/Avalia-o_Flutter.git
cd app_avaliacao_flutter
```

2. Instale as dependências:
```bash
flutter pub get
```

3. Execute o aplicativo:
```bash
flutter run
```

## 📦 Dependências

O projeto utiliza apenas as dependências padrão do Flutter:
- flutter
- material

Não foram necessárias bibliotecas externas para implementar todas as funcionalidades.

## 🌟 Diferenciais Implementados

- **Splash Screen animado** (critério bônus)
- **Hero animations** para transições suaves
- **Design moderno** com Material Design 3
- **Gradientes** em múltiplos elementos
- **Tratamento de erros** em imagens
- **Feedback visual** completo ao usuário
- **Componentização avançada**
- **Código limpo** e bem documentado

## 📱 Telas do Aplicativo

1. **Splash Screen** - Animação de entrada
2. **Login** - Autenticação do usuário
3. **Cadastro** - Registro de novo usuário
4. **Home** - Página inicial com menu rápido
5. **Produtos** - Lista completa de produtos
6. **Detalhes** - Informações detalhadas do produto
7. **Meus Produtos** - Lista de favoritos
8. **Sobre** - Informações do aplicativo

## 🔐 Observações de Segurança

Este é um projeto educacional. Em produção, seria necessário:
- Backend para autenticação real
- Criptografia de senhas
- Tokens de sessão
- API REST para produtos
- Banco de dados persistente

## 👨‍💻 Desenvolvimento

Este projeto foi desenvolvido seguindo as melhores práticas de Flutter:
- Clean Code
- Componentização
- Reutilização de widgets
- Separação de responsabilidades
- Comentários quando necessário

## 📄 Licença

Este projeto foi desenvolvido para fins educacionais.

## 🤝 Contribuições

Como este é um projeto acadêmico, não estão sendo aceitas contribuições externas no momento.

---

Desenvolvido por Nicolas Bitencurt, Anselmo
