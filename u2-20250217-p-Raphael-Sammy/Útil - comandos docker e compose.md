# Tutorial: Comandos Essenciais do Docker e Docker Compose

## 📖 O que é Docker?
Docker é uma plataforma que permite criar, distribuir e executar aplicações em contêineres. Um **contêiner** é um ambiente isolado que contém tudo o que um software precisa para rodar, incluindo bibliotecas, dependências e o próprio código da aplicação.

Docker facilita a criação de ambientes consistentes e portáteis, garantindo que aplicações funcionem da mesma forma em qualquer máquina.

## 📖 O que é Docker Compose?
Docker Compose é uma ferramenta que permite definir e gerenciar múltiplos contêineres usando um único arquivo `docker-compose.yml`. Ele facilita a criação e administração de aplicações que exigem múltiplos serviços (como um banco de dados e um servidor web).

---

## ✅ Comandos Essenciais do Docker

### ✅ 1. Iniciar um Contêiner
Para iniciar um contêiner a partir de uma imagem do Docker, usamos:
```bash
docker run -d --name meu_container ubuntu
```
📖 **Explicação:**
- `docker run`: Cria e inicia um novo contêiner.
- `-d`: Executa o contêiner em segundo plano (modo **detached**).
- `--name meu_container`: Nomeia o contêiner como `meu_container`.
- `ubuntu`: Usa a imagem do Ubuntu para criar o contêiner.

### ✅ 2. Listar Contêineres em Execução
Para verificar quais contêineres estão rodando:
```bash
docker ps
```
📖 **Explicação:**
- Exibe uma lista dos contêineres em execução.
- Para listar **todos os contêineres**, mesmo os parados, use:
```bash
docker ps -a
```

### ✅ 3. Parar um Contêiner
Para parar um contêiner em execução:
```bash
docker stop meu_container
```
📖 Isso encerra o contêiner `meu_container`, mas ele ainda poderá ser reiniciado posteriormente.

### ✅ 4. Reiniciar um Contêiner
Para reiniciar um contêiner parado ou em execução:
```bash
docker restart meu_container
```
📖 Isso equivale a parar e iniciar o contêiner novamente.

### ✅ 5. Remover um Contêiner
Para remover um contêiner que não está em execução:
```bash
docker rm meu_container
```
📖 **Atenção:** Se o contêiner estiver em execução, primeiro é necessário pará-lo:
```bash
docker stop meu_container
```

### ✅ 6. Remover Todos os Contêineres Parados
Para limpar contêineres que não estão rodando:
```bash
docker container prune
```
📖 **Isso removerá todos os contêineres parados. Use com cuidado!**

### ✅ 7. Remover uma Imagem do Docker
Se precisar remover uma imagem do Docker:
```bash
docker rmi ubuntu
```
📖 Se a imagem estiver sendo usada por algum contêiner, primeiro remova os contêineres associados.

### ✅ 8. Construir uma Imagem a Partir de um Dockerfile
Para construir uma imagem personalizada a partir de um `Dockerfile`:
```bash
docker build -t minha_imagem .
```
📖 **Explicação:**
- `-t minha_imagem`: Define o nome da imagem.
- `.`: Indica que o `Dockerfile` está no diretório atual.

---

## ✅ Comandos Essenciais do Docker Compose

### ✅ 9. Iniciar Serviços Definidos no `docker-compose.yml`
Para iniciar todos os serviços definidos no `docker-compose.yml`:
```bash
docker compose up -d
```
📖 Isso inicia os contêineres em **modo detached** (segundo plano).

### ✅ 10. Parar os Serviços do Docker Compose
Para parar os contêineres iniciados pelo Docker Compose:
```bash
docker compose down
```
📖 Isso remove os contêineres, mas mantém as imagens e volumes.

### ✅ 11. Remover Contêineres, Imagens e Volumes
Para remover **tudo** associado ao `docker-compose.yml`:
```bash
docker compose down --rmi all --volumes
```
📖 Isso remove:
- **`--rmi all`** → Remove as imagens criadas pelo `docker-compose`.
- **`--volumes`** → Remove volumes criados pelos serviços.

### ✅ 12. Construir Imagens Novamente
Se você alterou o `Dockerfile` ou deseja reconstruir as imagens:
```bash
docker compose build
```
📖 Isso recria as imagens sem precisar remover os contêineres manualmente.

### ✅ 13. Verificar os Logs de um Serviço
Para acompanhar os logs de um serviço rodando no Docker Compose:
```bash
docker compose logs -f
```
📖 **Explicação:**
- O parâmetro `-f` exibe os logs em tempo real, útil para depuração.
