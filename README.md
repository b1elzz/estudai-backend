# 📚 Estudai - Plataforma Gamificada de Estudos para o ENEM

> **TCC - Trabalho de Conclusão de Curso**  
> Aplicativo de estudos para o ENEM com recursos de planejamento e acompanhamento de desempenho

[![Java](https://img.shields.io/badge/Java-21-orange.svg)](https://www.oracle.com/java/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.3.0-green.svg)](https://spring.io/projects/spring-boot)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15+-blue.svg)](https://www.postgresql.org/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

---

## 📖 Sobre o Projeto

**Estudai** é uma API RESTful desenvolvida para auxiliar estudantes na preparação para o ENEM, oferecendo:

- 🎯 **200+ Questões Reais do ENEM** (2022-2023)
- 📊 **Sistema de Gamificação** (moedas e streaks)
- 🎨 **Listas Personalizadas** de questões
- 📈 **Metas de Estudo** com acompanhamento de progresso
- 📉 **Estatísticas de Desempenho** detalhadas
- 🔒 **Autenticação JWT** segura

---

## 🏗️ Arquitetura

### **Padrão em Camadas (Layered Architecture)**

```
┌─────────────────────────────────────────┐
│         Controllers (REST API)          │  ← Endpoints HTTP
├─────────────────────────────────────────┤
│     DTOs (Request/Response Objects)     │  ← Validação de dados
├─────────────────────────────────────────┤
│         Services (Business Logic)       │  ← Regras de negócio
├─────────────────────────────────────────┤
│       Repositories (Data Access)        │  ← Acesso ao banco
├─────────────────────────────────────────┤
│         Database (PostgreSQL)           │  ← Persistência
└─────────────────────────────────────────┘
```

### **Princípios Aplicados**

- ✅ **Clean Code**: Código limpo, nomes descritivos, métodos pequenos
- ✅ **SOLID**: Princípios de design orientado a objetos
  - **SRP** (Single Responsibility): Cada classe tem uma única responsabilidade
  - **OCP** (Open/Closed): Aberto para extensão, fechado para modificação
  - **DIP** (Dependency Inversion): Dependências via interfaces
- ✅ **DRY** (Don't Repeat Yourself): Código reutilizável
- ✅ **Exception Handling**: Tratamento centralizado de erros
- ✅ **DTO Pattern**: Separação entre entidades e objetos de transferência

---

## 🛠️ Tecnologias Utilizadas

### **Backend**
- **Java 21** - Linguagem de programação
- **Spring Boot 3.3.0** - Framework principal
- **Spring Security** - Autenticação e autorização
- **Spring Data JPA** - Abstração de acesso a dados
- **Hibernate** - ORM (Object-Relational Mapping)
- **PostgreSQL 15+** - Banco de dados relacional

### **Segurança**
- **JWT (JSON Web Token)** - Autenticação stateless
- **BCrypt** - Hash de senhas
- **CORS** - Controle de acesso cross-origin

### **Validação e Mapeamento**
- **Bean Validation** - Validação de dados
- **MapStruct** - Mapeamento de objetos
- **Lombok** - Redução de boilerplate

### **Documentação**
- **SpringDoc OpenAPI 3** - Documentação automática da API
- **Swagger UI** - Interface para testar endpoints

### **Email**
- **Spring Mail** - Envio de emails (recuperação de senha)
- **Thymeleaf** - Templates de email

---

## 📂 Estrutura do Projeto

```
src/main/java/br/com/fundatec/estudai/estudai/
│
├── config/                      # Configurações da aplicação
│   ├── ApplicationConstants.java    # Constantes globais
│   ├── CorsConfig.java             # Configuração CORS
│   ├── JpaAuditingConfig.java      # Auditoria JPA
│   ├── SecurityConfig.java         # Spring Security
│   ├── StudyGoalConstants.java     # Constantes de metas
│   └── SwaggerConfig.java          # Swagger/OpenAPI
│
├── controller/                  # Controllers REST
│   ├── AuthController.java         # Autenticação
│   ├── CustomListController.java   # Listas personalizadas
│   ├── QuestionAnswerController.java  # Respostas
│   ├── QuestionController.java     # Questões
│   ├── StudyGoalController.java    # Metas de estudo
│   └── StudyStreakController.java  # Sequências de estudo
│
├── dto/                        # Data Transfer Objects
│   ├── request/                    # Requisições
│   │   ├── CustomListRequest.java
│   │   ├── LoginRequest.java
│   │   ├── QuestionAnswerRequest.java
│   │   ├── RegisterRequest.java
│   │   └── StudyGoalRequest.java
│   └── response/                   # Respostas
│       ├── AnswerStatisticsResponse.java
│       ├── CustomListResponse.java
│       ├── ErrorResponse.java
│       ├── LoginResponse.java
│       ├── QuestionAnswerResponse.java
│       ├── QuestionResponse.java
│       └── StudyGoalResponse.java
│
├── entity/                     # Entidades JPA
│   ├── Alternative.java           # Alternativas das questões
│   ├── CustomList.java            # Listas personalizadas
│   ├── PasswordRecovery.java      # Recuperação de senha
│   ├── Question.java              # Questões do ENEM
│   ├── QuestionAnswer.java        # Respostas dos usuários
│   ├── StudyGoal.java             # Metas de estudo
│   ├── StudyStreak.java           # Sequências de estudo
│   └── User.java                  # Usuários
│
├── exception/                  # Exceções customizadas
│   ├── handler/
│   │   └── GlobalExceptionHandler.java  # Tratamento global
│   ├── AccessDeniedException.java
│   ├── EmailAlreadyRegisteredException.java
│   ├── InvalidDateRangeException.java
│   ├── InvalidGoalDurationException.java
│   ├── ResourceNotFoundException.java
│   └── ... (outras exceções)
│
├── mapper/                     # MapStruct Mappers
│   ├── QuestionMapper.java
│   ├── QuestionAnswerMapper.java
│   ├── StudyGoalMapper.java
│   └── ... (outros mappers)
│
├── repository/                 # Repositórios JPA
│   ├── QuestionRepository.java
│   ├── QuestionAnswerRepository.java
│   ├── StudyGoalRepository.java
│   ├── UserRepository.java
│   └── ... (outros repositórios)
│
├── security/                   # Segurança
│   └── jwt/
│       └── JwtAuthenticationFilter.java  # Filtro JWT
│
├── service/                    # Serviços (lógica de negócio)
│   ├── AuthService.java           # Autenticação
│   ├── CustomListService.java     # Listas personalizadas
│   ├── EmailService.java          # Interface de email
│   ├── QuestionAnswerService.java # Respostas
│   ├── QuestionService.java       # Questões
│   ├── StudyGoalService.java      # Metas
│   ├── StudyStreakService.java    # Streaks
│   ├── TokenService.java          # JWT
│   └── UserService.java           # Usuários
│
├── util/                       # Utilitários
│   └── AuthenticationUtils.java   # Helpers de autenticação
│
└── validation/                 # Validadores customizados
    ├── MinimumAge.java
    ├── MinimumAgeValidator.java
    ├── ValidDomain.java
    └── ValidDomainValidator.java
```

---

## 🚀 Como Executar

### **Pré-requisitos**

- Java 21+
- PostgreSQL 15+
- Maven 3.8+

### **1. Configurar Banco de Dados**

```sql
CREATE DATABASE estudai_dev;
```

### **2. Configurar Credenciais**

Edite `src/main/resources/application-dev.yml`:

```yaml
spring:
  datasource:
    url: jdbc:postgresql://localhost:5432/estudai_dev
    username: postgres  # ← SEU USUÁRIO
    password: admin     # ← SUA SENHA
```

### **3. Executar a Aplicação**

```bash
# No terminal
./mvnw spring-boot:run

# Ou no Windows PowerShell
.\mvnw.cmd spring-boot:run
```

### **4. Acessar**

- **API Base**: http://localhost:8080/api
- **Swagger UI**: http://localhost:8080/api/swagger-ui/index.html
- **API Docs JSON**: http://localhost:8080/api/v3/api-docs

---

## 📡 Endpoints Principais

### **🔐 Autenticação**

| Método | Endpoint | Descrição | Autenticação |
|--------|----------|-----------|--------------|
| POST | `/api/auth/register` | Registrar novo usuário | ❌ Não |
| POST | `/api/auth/login` | Fazer login | ❌ Não |
| POST | `/api/auth/request-password-reset` | Solicitar reset de senha | ❌ Não |

### **📝 Questões**

| Método | Endpoint | Descrição | Autenticação |
|--------|----------|-----------|--------------|
| GET | `/api/questions` | Listar questões (com filtros) | ⚠️ Opcional |
| GET | `/api/questions/{id}` | Buscar questão por ID | ⚠️ Opcional |
| GET | `/api/questions/subjects` | Listar matérias disponíveis | ⚠️ Opcional |
| GET | `/api/questions/years` | Listar anos disponíveis | ⚠️ Opcional |

### **✅ Respostas**

| Método | Endpoint | Descrição | Autenticação |
|--------|----------|-----------|--------------|
| POST | `/api/answers` | Responder uma questão | ✅ Sim |
| GET | `/api/answers` | Listar minhas respostas | ✅ Sim |
| GET | `/api/answers/{id}` | Buscar resposta por ID | ✅ Sim |
| GET | `/api/answers/statistics` | Ver minhas estatísticas | ✅ Sim |

### **🎯 Metas de Estudo**

| Método | Endpoint | Descrição | Autenticação |
|--------|----------|-----------|--------------|
| POST | `/api/study-goals` | Criar nova meta | ✅ Sim |
| GET | `/api/study-goals` | Listar minhas metas | ✅ Sim |
| GET | `/api/study-goals/active` | Listar metas ativas | ✅ Sim |
| PUT | `/api/study-goals/{id}` | Atualizar meta | ✅ Sim |
| DELETE | `/api/study-goals/{id}` | Cancelar meta | ✅ Sim |

### **🔥 Streak de Estudos**

| Método | Endpoint | Descrição | Autenticação |
|--------|----------|-----------|--------------|
| GET | `/api/study-streak` | Ver meu streak | ✅ Sim |
| POST | `/api/study-streak/reset` | Resetar streak | ✅ Sim |

### **📋 Listas Personalizadas**

| Método | Endpoint | Descrição | Autenticação |
|--------|----------|-----------|--------------|
| POST | `/api/custom-lists` | Criar lista personalizada | ✅ Sim |
| GET | `/api/custom-lists` | Listar minhas listas | ✅ Sim |
| GET | `/api/custom-lists/{id}` | Buscar lista por ID | ✅ Sim |
| PUT | `/api/custom-lists/{id}` | Atualizar lista | ✅ Sim |
| DELETE | `/api/custom-lists/{id}` | Deletar lista | ✅ Sim |

---

## 🎮 Funcionalidades de Gamificação

### **🪙 Sistema de Moedas**

- Ganhe **10 moedas** por resposta correta
- Acumule moedas para desbloquear conquistas (futuro)

### **🔥 Sistema de Streak**

- Mantenha uma sequência de dias estudando
- Acompanhe seu recorde de dias consecutivos
- Ganhe **50 moedas** ao atingir 7 dias consecutivos

### **📊 Estatísticas**

- Taxa de acerto geral
- Total de questões respondidas
- Questões corretas vs incorretas
- Total de moedas ganhas

---

## 🧪 Testando a API

### **Opção 1: Swagger UI (Recomendado)**

1. Acesse: http://localhost:8080/api/swagger-ui/index.html
2. Clique em "Authorize" no canto superior direito
3. Faça login via POST `/api/auth/login` para obter o token
4. Cole o token no campo de autorização
5. Teste os endpoints!

### **Opção 2: Postman**

1. Importe a collection: `Estudai_API_Completa.postman_collection.json`
2. Importe o environment: `Estudai_API.postman_environment.json`
3. Ative o environment "Estudai API - Local"
4. Execute o endpoint "Login" primeiro
5. Todos os outros endpoints funcionarão automaticamente!

### **Opção 3: cURL**

```bash
# 1. Fazer login
curl -X POST http://localhost:8080/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{
    "email": "mock@estudai.com",
    "password": "Teste@123"
  }'

# Copie o token da resposta

# 2. Listar questões de matemática
curl http://localhost:8080/api/questions?subject=matematica&limit=5 \
  -H "Authorization: Bearer SEU_TOKEN_AQUI"

# 3. Responder uma questão
curl -X POST http://localhost:8080/api/answers \
  -H "Authorization: Bearer SEU_TOKEN_AQUI" \
  -H "Content-Type: application/json" \
  -d '{
    "questionId": 1,
    "userAnswer": "A",
    "responseTimeSeconds": 30
  }'
```

---

## 👤 Usuário Mock para Testes

**Credenciais pré-configuradas:**

```
Email: mock@estudai.com
Senha: Teste@123
```

Este usuário é criado automaticamente ao iniciar a aplicação.

---

## 📊 Banco de Dados

### **Diagrama ER Simplificado**

```
┌──────────────┐       ┌──────────────┐       ┌──────────────┐
│    Users     │──┬───<│ QuestionAnsw │>──┬───│  Questions   │
└──────────────┘  │    └──────────────┘   │   └──────────────┘
                  │                       │   ┌──────────────┐
                  │                       └───│ Alternatives │
                  │                           └──────────────┘
                  │    ┌──────────────┐
                  ├───<│ StudyGoals   │
                  │    └──────────────┘
                  │    ┌──────────────┐
                  ├───<│ StudyStreaks │
                  │    └──────────────┘
                  │    ┌──────────────┐       ┌──────────────┐
                  └───<│ CustomLists  │>──────│  Questions   │
                       └──────────────┘       └──────────────┘
```

### **População Automática**

O banco é populado automaticamente via `src/main/resources/import.sql`:
- 200 questões do ENEM (2022-2023)
- 2 usuários mock para testes
- Metas e streaks de exemplo

---

## 🔒 Segurança

### **Autenticação JWT**

- Token válido por **24 horas**
- Senha hash com **BCrypt** (strength 10)
- Filtro de autenticação em todas as rotas protegidas

### **Validações Implementadas**

- **Email**: Formato válido + domínios permitidos
- **Senha**: Mínimo 8 caracteres, 1 maiúscula, 1 número, 1 caractere especial
- **Idade**: Mínimo 13 anos
- **Alternativas**: Apenas A, B, C, D ou E
- **Tempo de Resposta**: 0 a 3600 segundos

---

## 📈 Melhorias Implementadas (Clean Code + SOLID)

### ✅ **Clean Code**

- Nomes descritivos em classes e métodos
- Métodos pequenos com responsabilidade única
- Extração de métodos privados para clareza
- Constantes ao invés de magic numbers
- Logging estruturado em todos os serviços

### ✅ **SOLID**

- **SRP**: Cada service tem uma responsabilidade única
- **OCP**: Exceções customizadas extensíveis
- **LSP**: Hierarquia de exceções respeitada
- **ISP**: Interfaces segregadas (EmailService)
- **DIP**: Injeção de dependências via constructor

### ✅ **Tratamento de Exceções**

- `GlobalExceptionHandler` centralizado
- Exceções customizadas por domínio
- Mensagens de erro padronizadas
- Logging de erros para debugging
- Códigos de erro únicos

### ✅ **Documentação Swagger**

- Descrições detalhadas em todos os endpoints
- Exemplos de requisições e respostas
- Códigos de status HTTP documentados
- Parâmetros com descrições e exemplos
- Schema definitions completas

---

## 🧪 Testes

### **Executar Testes**

```bash
# Todos os testes
./mvnw test

# Apenas compilação
./mvnw clean compile -DskipTests
```

### **Coverage (Futuro)**

- Testes unitários para services
- Testes de integração para controllers
- Cobertura mínima: 80%

---

## 📝 Boas Práticas Implementadas

### **1. Validação em Camadas**

```
Request → Controller (Bean Validation)
         ↓
      Service (Business Validation)
         ↓
      Repository (Database Constraints)
```

### **2. DTOs para Isolamento**

- Entidades **não** são expostas diretamente
- DTOs customizados para request/response
- Mapeamento automático com MapStruct

### **3. Transações**

- `@Transactional` em operações de escrita
- `@Transactional(readOnly = true)` em leituras
- Rollback automático em exceções

### **4. Logging Estratégico**

```java
log.debug() → Detalhes de desenvolvimento
log.info()  → Operações importantes
log.warn()  → Situações suspeitas
log.error() → Erros críticos
```

### **5. Constantes Centralizadas**

- `ApplicationConstants.java` - Constantes globais
- `StudyGoalConstants.java` - Constantes de metas
- Evita magic numbers no código

---

## 🐛 Troubleshooting

### **Erro: 403 Forbidden**

**Solução**: Configure o environment no Postman e execute o Login primeiro

### **Erro: Swagger 404**

**Solução**: Acesse http://localhost:8080/api/swagger-ui/index.html (com `/api`)

### **Erro: Conexão com banco**

**Solução**: Verifique se o PostgreSQL está rodando e as credenciais estão corretas

---

## 📚 Documentação Adicional

- `ANALISE_PROJETO_TCC.md` - Análise completa do código
- `GUIA_POSTMAN_CONFIGURACAO.md` - Como configurar o Postman
- `USUARIO_MOCK_CONFIGURADO.md` - Informações do usuário de teste

---

## 🎓 Para o TCC

### **Pontos Fortes**

1. ✅ Arquitetura bem definida (camadas)
2. ✅ Aplicação de princípios SOLID
3. ✅ Clean Code e boas práticas
4. ✅ Tratamento robusto de exceções
5. ✅ Documentação completa (Swagger)
6. ✅ Segurança (JWT + BCrypt)
7. ✅ Validações em múltiplas camadas
8. ✅ Gamificação (moedas + streaks)

### **Possíveis Melhorias Futuras**

- Testes automatizados (unitários e integração)
- Cache para queries frequentes (Redis)
- Paginação avançada (Pageable)
- Rate limiting para APIs públicas
- Docker para deploy
- CI/CD Pipeline

---

## 👨‍💻 Autor

**Seu Nome**  
TCC - [Instituição]  
Ano: 2024/2025

---

## 📄 Licença

Este projeto foi desenvolvido para fins acadêmicos (TCC).

---

## 🙏 Agradecimentos

- Dados das questões: [ENEM API](https://enem.dev)
- Spring Boot Community
- PostgreSQL Team

---

**⭐ Se este projeto te ajudou, deixa uma estrela! ⭐**

