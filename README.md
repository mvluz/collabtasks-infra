# 📌 CollabTasks

## 📁 Estrutura do Projeto

- ⚙️ [`collabtasks-app`](https://github.com/mvluz/collabtasks-app) — Aplicação principal (frontend ou serviço)  
- 🧩 [`collabtasks-api`](https://github.com/mvluz/collabtasks-api) — API backend  
- 🛠️ [`collabtasks-infra`](https://github.com/mvluz/collabtasks-infra) — Infraestrutura com Docker Compose, configurações e bancos de dados  

## 🚀 Como Usar

1. 📦 Instale o [Docker](https://www.docker.com/get-started).

2. 📝 Crie um arquivo `.env` na raiz da pasta `collabtasks-infra` com os valores esperados pelas variáveis de ambiente usadas no `docker-compose.yml`.  
   (Ex: `POSTGRES_USER=admin`, `POSTGRES_PASSWORD=adminpass`, etc.)

3. 🧪 Execute o script adequado para o seu sistema operacional dentro da pasta `collabtasks-infra` para carregar as variáveis de ambiente:

   - **Windows**: `set-local-env-vars.bat`
   - **Linux/macOS/Git Bash**: `./set-local-env-vars.sh`

4. ▶️ Os containers serão iniciados automaticamente após a execução do script.

5. 🛠️ Personalize os arquivos de configuração dentro de `collabtasks-infra`, se necessário.

---

## 📝 Licença

Este projeto está licenciado sob a licença **Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)**.  
Consulte o arquivo `LICENSE` para mais detalhes.  
🔗 [CC BY-NC 4.0 Legal Code](https://creativecommons.org/licenses/by-nc/4.0/legalcode)

---

### 🌐 English Version

## 📁 Project Structure

- ⚙️ [`collabtasks-app`](https://github.com/mvluz/collabtasks-app) — Main application (frontend or service)  
- 🧩 [`collabtasks-api`](https://github.com/mvluz/collabtasks-api) — Backend API  
- 🛠️ [`collabtasks-infra`](https://github.com/mvluz/collabtasks-infra) — Infrastructure with Docker Compose, configurations, and databases  

## 🚀 How to Use

1. 📦 Install [Docker](https://www.docker.com/get-started).

2. 📝 Create a `.env` file in the root of the `collabtasks-infra` folder with the environment variables expected by `docker-compose.yml`.  
   (e.g., `POSTGRES_USER=admin`, `POSTGRES_PASSWORD=adminpass`, etc.)

3. 🧪 Run the appropriate script for your operating system inside the `collabtasks-infra` folder to set the environment variables:

   - **Windows**: `set-local-env-vars.bat`
   - **Linux/macOS/Git Bash**: `./set-local-env-vars.sh`

4. ▶️ The containers will start automatically after running the script.

5. 🛠️ Customize the configuration files in `collabtasks-infra` if needed.

---

## 📝 License

This project is licensed under the **Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)** license.  
See the `LICENSE` file for details.  
🔗 [CC BY-NC 4.0 Legal Code](https://creativecommons.org/licenses/by-nc/4.0/legalcode)