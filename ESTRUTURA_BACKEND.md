# 🏗️ Estrutura do Backend - Estudai

## 📋 Visão Geral

O **Estudai** é uma aplicação backend monolítica desenvolvida em **Spring Boot 3.3.0** com **Java 21**, seguindo o padrão de arquitetura em camadas (Layered Architecture). A aplicação utiliza **PostgreSQL** como banco de dados relacional e implementa autenticação baseada em **JWT (JSON Web Token)**.

---

## 🎯 Tipo de Arquitetura

### **Arquitetura Monolítica em Camadas**

A aplicação segue o padrão de arquitetura monolítica, onde todos os componentes estão em um único deployable. A organização interna utiliza o padrão de **camadas (layers)**, separando responsabilidades de forma clara:

```
┌─────────────────────────────────────────────────────────┐
│                    CAMADA DE APRESENTAÇÃO                │
│  Controllers (REST API) - Endpoints HTTP                 │
└─────────────────────────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────┐
│                    CAMADA DE APLICAÇÃO                   │
│  DTOs (Request/Response) - Validação e Transferência   │
│  Mappers (MapStruct) - Conversão de Objetos             │
└─────────────────────────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────┐
│                    CAMADA DE NEGÓCIO                     │
│  Services - Lógica de Negócio e Regras                   │
└─────────────────────────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────┐
│                    CAMADA DE DADOS                       │
│  Repositories (JPA) - Acesso ao Banco de Dados          │
│  Entities (JPA) - Modelo de Domínio                     │
└─────────────────────────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────┐
│                    BANCO DE DADOS                        │
│  PostgreSQL - Persistência de Dados                     │
└─────────────────────────────────────────────────────────┘
```

---

## 📂 Estrutura de Diretórios

### **Estrutura Completa do Projeto**

```
estudai-backend/
│
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── br/com/fundatec/estudai/estudai/
│   │   │       │
│   │   │       ├── 📁 config/                    # Configurações da Aplicação
│   │   │       │   ├── ApplicationConstants.java      # Constantes globais
│   │   │       │   ├── CorsConfig.java                # Configuração CORS
│   │   │       │   ├── JpaAuditingConfig.java         # Auditoria JPA (@CreatedDate, @LastModifiedDate)
│   │   │       │   ├── MockUserInitializer.java       # Inicialização de usuário mock
│   │   │       │   ├── RestTemplateConfig.java        # Configuração RestTemplate
│   │   │       │   ├── SecurityConfig.java            # Spring Security (JWT, CORS, rotas)
│   │   │       │   ├── StudyGoalConstants.java        # Constantes de metas de estudo
│   │   │       │   └── SwaggerConfig.java             # Configuração Swagger/OpenAPI
│   │   │       │
│   │   │       ├── 📁 controller/                 # Camada de Apresentação (REST Controllers)
│   │   │       │   ├── AuthController.java            # Autenticação (login, registro, recuperação)
│   │   │       │   ├── CustomListController.java      # Listas personalizadas de questões
│   │   │       │   ├── QuestionAnswerController.java  # Respostas dos usuários
│   │   │       │   ├── QuestionController.java       # Questões do ENEM
│   │   │       │   ├── StudyGoalController.java      # Metas de estudo
│   │   │       │   └── StudyStreakController.java    # Sequências de estudo (streaks)
│   │   │       │
│   │   │       ├── 📁 dto/                        # Data Transfer Objects
│   │   │       │   ├── request/                      # Objetos de Requisição
│   │   │       │   │   ├── CustomListRequest.java
│   │   │       │   │   ├── LoginRequest.java
│   │   │       │   │   ├── PasswordRecoveryRequest.java
│   │   │       │   │   ├── QuestionAnswerRequest.java
│   │   │       │   │   ├── RegisterRequest.java
│   │   │       │   │   └── StudyGoalRequest.java
│   │   │       │   │
│   │   │       │   └── response/                     # Objetos de Resposta
│   │   │       │       ├── AlternativeResponse.java
│   │   │       │       ├── AnswerStatisticsResponse.java
│   │   │       │       ├── CustomListResponse.java
│   │   │       │       ├── ErrorResponse.java
│   │   │       │       ├── FieldErrorResponse.java
│   │   │       │       ├── LoginResponse.java
│   │   │       │       ├── QuestionAnswerResponse.java
│   │   │       │       ├── QuestionResponse.java
│   │   │       │       ├── StudyGoalResponse.java
│   │   │       │       ├── StudyStreakResponse.java
│   │   │       │       └── UserResponse.java
│   │   │       │
│   │   │       ├── 📁 entity/                    # Entidades JPA (Modelo de Domínio)
│   │   │       │   ├── Alternative.java              # Alternativas das questões
│   │   │       │   ├── CustomList.java               # Listas personalizadas
│   │   │       │   ├── PasswordRecovery.java         # Recuperação de senha
│   │   │       │   ├── Question.java                 # Questões do ENEM
│   │   │       │   ├── QuestionAnswer.java           # Respostas dos usuários
│   │   │       │   ├── StudyGoal.java                # Metas de estudo
│   │   │       │   ├── StudyStreak.java              # Sequências de estudo
│   │   │       │   └── User.java                     # Usuários do sistema
│   │   │       │
│   │   │       ├── 📁 exception/                  # Exceções Customizadas
│   │   │       │   ├── handler/
│   │   │       │   │   └── GlobalExceptionHandler.java  # Tratamento global de exceções
│   │   │       │   ├── AccessDeniedException.java
│   │   │       │   ├── EmailAlreadyRegisteredException.java
│   │   │       │   ├── EmailSendingException.java
│   │   │       │   ├── InvalidCodeException.java
│   │   │       │   ├── InvalidDateRangeException.java
│   │   │       │   ├── InvalidDomainException.java
│   │   │       │   ├── InvalidEmailException.java
│   │   │       │   ├── InvalidGoalDurationException.java
│   │   │       │   ├── InvalidGoalStateException.java
│   │   │       │   ├── InvalidPasswordException.java
│   │   │       │   ├── InvalidTokenException.java
│   │   │       │   ├── ResourceNotFoundException.java
│   │   │       │   ├── UnauthenticatedUserException.java
│   │   │       │   └── UserNotFoundException.java
│   │   │       │
│   │   │       ├── 📁 mapper/                     # Mappers MapStruct
│   │   │       │   ├── AlternativeMapper.java
│   │   │       │   ├── AuthMapper.java
│   │   │       │   ├── CustomListMapper.java
│   │   │       │   ├── QuestionAnswerMapper.java
│   │   │       │   ├── QuestionMapper.java
│   │   │       │   ├── StudyGoalMapper.java
│   │   │       │   ├── StudyStreakMapper.java
│   │   │       │   └── UserMapper.java
│   │   │       │
│   │   │       ├── 📁 repository/                 # Camada de Acesso a Dados (JPA Repositories)
│   │   │       │   ├── CustomListRepository.java
│   │   │       │   ├── PasswordRecoveryRepository.java
│   │   │       │   ├── QuestionAnswerRepository.java
│   │   │       │   ├── QuestionRepository.java
│   │   │       │   ├── StudyGoalRepository.java
│   │   │       │   ├── StudyStreakRepository.java
│   │   │       │   └── UserRepository.java
│   │   │       │
│   │   │       ├── 📁 security/                  # Segurança e Autenticação
│   │   │       │   └── jwt/
│   │   │       │       └── JwtAuthenticationFilter.java  # Filtro de autenticação JWT
│   │   │       │
│   │   │       ├── 📁 service/                   # Camada de Negócio (Services)
│   │   │       │   ├── AuthService.java              # Autenticação e autorização
│   │   │       │   ├── CustomListService.java        # Lógica de listas personalizadas
│   │   │       │   ├── EmailService.java             # Interface de serviço de email
│   │   │       │   ├── EmailServiceImpl.java         # Implementação real de email
│   │   │       │   ├── EmailServiceMock.java         # Implementação mock de email (dev)
│   │   │       │   ├── PasswordRecoveryService.java  # Recuperação de senha
│   │   │       │   ├── QuestionAnswerService.java    # Lógica de respostas
│   │   │       │   ├── QuestionService.java          # Lógica de questões
│   │   │       │   ├── StudyGoalService.java         # Lógica de metas de estudo
│   │   │       │   ├── StudyStreakService.java       # Lógica de streaks
│   │   │       │   ├── TokenService.java             # Geração e validação de JWT
│   │   │       │   └── UserService.java              # Lógica de usuários
│   │   │       │
│   │   │       ├── 📁 util/                       # Utilitários e Helpers
│   │   │       │   ├── AuthenticationUtils.java      # Utilitários de autenticação
│   │   │       │   └── PasswordHashGenerator.java    # Geração de hash de senha
│   │   │       │
│   │   │       ├── 📁 validation/                 # Validadores Customizados
│   │   │       │   ├── MinimumAge.java               # Anotação de validação de idade mínima
│   │   │       │   ├── MinimumAgeValidator.java      # Validador de idade mínima
│   │   │       │   ├── ValidDomain.java              # Anotação de validação de domínio
│   │   │       │   └── ValidDomainValidator.java     # Validador de domínio de email
│   │   │       │
│   │   │       └── EstudaiApplication.java        # Classe principal (Spring Boot)
│   │   │
│   │   └── resources/
│   │       ├── application.yml                      # Configuração principal
│   │       ├── application-dev.yml                 # Configuração de desenvolvimento
│   │       ├── application-prod.yml                  # Configuração de produção
│   │       └── import.sql                          # Script de inicialização do banco
│   │
│   └── test/
│       └── java/
│           └── br/com/fundatec/estudai/estudai/
│               └── EstudaiApplicationTests.java
│
├── Estudai_API_Completa.postman_collection.json   # Collection do Postman
├── Estudai_API.postman_environment.json           # Environment do Postman
├── mvnw                                           # Maven Wrapper (Unix)
├── mvnw.cmd                                       # Maven Wrapper (Windows)
├── pom.xml                                        # Dependências Maven
└── README.md                                      # Documentação principal
```

---

## 🔄 Fluxo de Dados na Aplicação

### **Exemplo: Responder uma Questão**

```
1. Cliente HTTP (Postman/Swagger)
   ↓ HTTP POST /api/answers
   
2. Controller (QuestionAnswerController)
   - Recebe QuestionAnswerRequest
   - Validação básica (@Valid)
   ↓
   
3. Service (QuestionAnswerService)
   - Validação de negócio (questão existe? usuário autenticado?)
   - Calcula se resposta está correta
   - Atualiza moedas do usuário
   - Atualiza streak
   ↓
   
4. Repository (QuestionAnswerRepository)
   - Salva QuestionAnswer no banco
   ↓
   
5. Mapper (QuestionAnswerMapper)
   - Converte Entity → DTO (QuestionAnswerResponse)
   ↓
   
6. Controller retorna Response
   ↓ HTTP 200 OK + JSON
   
7. Cliente recebe resposta
```

---

## 🎨 Padrões de Design Utilizados

### **1. Repository Pattern**
- Abstração da camada de acesso a dados
- Interfaces JPA Repository extendem `JpaRepository<T, ID>`
- Facilita testes e manutenção

### **2. DTO Pattern (Data Transfer Object)**
- Separação entre entidades de domínio e objetos de transferência
- Protege a estrutura interna do banco de dados
- Permite versionamento de API

### **3. Service Layer Pattern**
- Lógica de negócio centralizada em services
- Controllers apenas orquestram chamadas
- Facilita reutilização de código

### **4. Mapper Pattern (MapStruct)**
- Conversão automática entre Entities e DTOs
- Reduz código boilerplate
- Compilação em tempo de build (performance)

### **5. Exception Handler Pattern**
- Tratamento centralizado de exceções
- `@ControllerAdvice` para handlers globais
- Respostas de erro padronizadas

### **6. Strategy Pattern**
- `EmailService` interface com múltiplas implementações
- `EmailServiceImpl` (produção) vs `EmailServiceMock` (desenvolvimento)
- Facilita testes e diferentes ambientes

---

## 🔐 Segurança e Configuração

### **Configurações Principais**

#### **SecurityConfig**
- Configuração do Spring Security
- Filtro JWT para autenticação
- Rotas públicas vs protegidas
- CORS habilitado

#### **CorsConfig**
- Permite requisições cross-origin
- Configurado para desenvolvimento e produção

#### **JpaAuditingConfig**
- Habilita auditoria automática
- `@CreatedDate` e `@LastModifiedDate` automáticos

#### **SwaggerConfig**
- Documentação automática da API
- Interface Swagger UI disponível

---

## 📦 Dependências Principais

### **Spring Boot Starters**
- `spring-boot-starter-web` - REST API
- `spring-boot-starter-data-jpa` - Persistência
- `spring-boot-starter-security` - Segurança
- `spring-boot-starter-validation` - Validação
- `spring-boot-starter-mail` - Email
- `spring-boot-starter-oauth2-client` - OAuth2

### **Bibliotecas de Terceiros**
- **JJWT** (0.12.5) - Geração e validação de tokens JWT
- **MapStruct** (1.6.3) - Mapeamento de objetos
- **Lombok** - Redução de boilerplate
- **PostgreSQL Driver** - Driver do banco de dados
- **SpringDoc OpenAPI** (2.5.0) - Documentação Swagger

---

## 🎯 Princípios SOLID Aplicados

### **S - Single Responsibility Principle**
- Cada service tem uma responsabilidade única
- Controllers apenas recebem requisições e retornam respostas
- Repositories apenas acessam dados

### **O - Open/Closed Principle**
- Exceções customizadas extensíveis
- Services podem ser estendidos sem modificar código existente

### **L - Liskov Substitution Principle**
- Hierarquia de exceções respeitada
- Implementações de `EmailService` são intercambiáveis

### **I - Interface Segregation Principle**
- Interfaces específicas (`EmailService`, `TokenService`)
- Clientes não dependem de métodos que não usam

### **D - Dependency Inversion Principle**
- Dependências injetadas via constructor
- Services dependem de abstrações (interfaces), não implementações

---

## 🚀 Características da Arquitetura Monolítica

### **Vantagens**
✅ **Simplicidade de Deploy**: Um único artefato (JAR)  
✅ **Desenvolvimento Rápido**: Sem necessidade de orquestração entre serviços  
✅ **Transações ACID**: Garantia de consistência entre operações  
✅ **Debugging Facilitado**: Stack trace completo em um único processo  
✅ **Performance**: Comunicação in-process (sem rede entre camadas)  

### **Desvantagens**
⚠️ **Escalabilidade Limitada**: Precisa escalar a aplicação inteira  
⚠️ **Acoplamento**: Mudanças podem afetar múltiplas funcionalidades  
⚠️ **Tecnologia Única**: Dificulta uso de diferentes stacks  

### **Quando Usar**
- Aplicações de médio porte
- Equipe pequena/média
- Requisitos de consistência de dados
- MVP ou protótipos

---

## 📊 Organização por Domínio

Embora seja uma arquitetura monolítica, a organização interna segue uma estrutura que facilita futura migração para microserviços:

```
📁 Auth (Autenticação)
   - AuthController
   - AuthService
   - TokenService
   - UserService
   - PasswordRecoveryService

📁 Questions (Questões)
   - QuestionController
   - QuestionService
   - QuestionRepository

📁 Answers (Respostas)
   - QuestionAnswerController
   - QuestionAnswerService
   - QuestionAnswerRepository

📁 Goals (Metas)
   - StudyGoalController
   - StudyGoalService
   - StudyGoalRepository

📁 Streaks (Sequências)
   - StudyStreakController
   - StudyStreakService
   - StudyStreakRepository

📁 Lists (Listas)
   - CustomListController
   - CustomListService
   - CustomListRepository
```

---

## 🔧 Configuração de Ambientes

### **application.yml** (Base)
- Configurações comuns
- Perfis ativos (dev/prod)

### **application-dev.yml** (Desenvolvimento)
- Banco de dados local
- Email mock
- Logging detalhado

### **application-prod.yml** (Produção)
- Banco de dados de produção
- Email real
- Logging otimizado

---

## 📝 Conclusão

A arquitetura do **Estudai** é uma aplicação monolítica bem estruturada, seguindo boas práticas de desenvolvimento:

- ✅ **Separação de responsabilidades** em camadas claras
- ✅ **Padrões de design** aplicados consistentemente
- ✅ **Princípios SOLID** respeitados
- ✅ **Código limpo** e manutenível
- ✅ **Documentação** completa (Swagger)
- ✅ **Segurança** implementada (JWT, BCrypt)
- ✅ **Validações** em múltiplas camadas

Esta estrutura facilita a manutenção, testes e futuras evoluções do sistema.

