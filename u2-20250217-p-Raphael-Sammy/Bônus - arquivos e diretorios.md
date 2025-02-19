# Bônus: Navegação e Manipulação de Arquivos no Linux

Este tutorial apresenta os comandos básicos para navegar pelos diretórios, listar arquivos e manipular a estrutura de diretórios no Linux. Em cada seção, você encontrará um comando, uma explicação sobre seu funcionamento e uma atividade prática para executá-lo.

## 1. Conceitos Básicos de Diretórios no Linux

No Linux, existem alguns atalhos importantes para navegação entre diretórios:
- **`.` (ponto)** → Representa o diretório atual.
- **`..` (dois pontos)** → Representa o diretório pai (um nível acima).
- **`~` (til)** → Representa o diretório pessoal do usuário.

Você pode usar esses atalhos para facilitar a navegação com o comando `cd`.

## 2. Listando Arquivos e Diretórios

O comando `ls` é usado para listar arquivos e diretórios no Linux.

### Exercício 1: Listar arquivos no diretório atual

Digite o seguinte comando e observe a saída:

```
ls
```

> O comando `ls` exibe os arquivos e diretórios presentes no diretório atual.

### Exercício 2: Listar arquivos, incluindo ocultos e permissões detalhadas

Agora, execute:

```
ls -la
```

> O parâmetro `-l` exibe informações detalhadas sobre os arquivos, e `-a` mostra arquivos ocultos.

Agora, experimente listar os arquivos do diretório raiz do sistema:

```
ls -la /
```

E também liste os arquivos do seu diretório pessoal:

```
ls -la ~
```

## 3. Criando Diretórios e Navegando Entre Eles

O comando `mkdir` é usado para criar diretórios no Linux.

### Exercício 3: Criar uma estrutura de diretórios

Agora, vamos criar a seguinte estrutura de diretórios:

```
~/ufpb/disciplinas/aps
~/ufpb/disciplinas/redes
~/ufpb/disciplinas/estrutura
```

Para isso, execute os seguintes comandos:

```
mkdir -p ~/ufpb/disciplinas/aps
mkdir -p ~/ufpb/disciplinas/redes
mkdir -p ~/ufpb/disciplinas/estrutura
```

> O parâmetro `-p` do `mkdir` cria diretórios de forma recursiva, garantindo que todos os diretórios intermediários existam.

Agora, liste o conteúdo da pasta `disciplinas` para verificar se os diretórios foram criados:

```
ls -la ~/ufpb/disciplinas
```

### Exercício 4: Entrar no diretório `aps` a partir do home

Agora, vá para o diretório `aps` diretamente do diretório home:

```
cd ~/ufpb/disciplinas/aps
pwd
```

> O comando `cd` é usado para mudar de diretório, e `pwd` exibe o caminho atual.

### Exercício 5: Navegar para `redes` a partir de `aps` usando caminho relativo

Agora, mova-se para o diretório `redes` a partir de `aps` usando `..` (diretório pai):

```
cd ../redes
pwd
```

> O `..` representa o diretório pai, permitindo navegar entre diretórios de forma relativa.

### Exercício 6: Voltar para o diretório home

Agora, volte diretamente para o diretório home:

```
cd ~
pwd
```

> O `~` representa o diretório pessoal do usuário.

## 4. Criando Arquivos

O comando `touch` é usado para criar arquivos vazios ou atualizar a data de modificação de um arquivo existente.

### Exercício 7: Criar arquivos dentro do diretório `aps`

Agora, crie um arquivo chamado `atividade.txt` dentro do diretório `aps`:

```
touch ~/ufpb/disciplinas/aps/atividade.txt
ls -la ~/ufpb/disciplinas/aps
```

> O comando `touch` cria um novo arquivo vazio se ele não existir.

## 5. Exibindo o Caminho Atual

Para saber onde você está no sistema de arquivos:

```
pwd
```

> O comando `pwd` imprime o caminho completo do diretório atual.

## Conclusão

Agora você conhece os comandos básicos para navegar e manipular arquivos no Linux. Teste cada um deles e experimente explorar diferentes diretórios.

Para mais informações, consulte o manual de cada comando usando:

```
man nome_do_comando
```

Isso mostrará detalhes avançados sobre o comando escolhido.
