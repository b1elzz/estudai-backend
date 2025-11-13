# 🗄️ Diagrama do Banco de Dados - Estudai

## 📋 Visão Geral

O banco de dados do **Estudai** utiliza **PostgreSQL** como SGBD relacional. O modelo de dados segue o padrão de normalização e implementa relacionamentos entre entidades através de chaves estrangeiras (Foreign Keys).

---

## 📊 Diagrama Entidade-Relacionamento (ER)

```
┌─────────────────────────────────────────────────────────────────┐
│                         USERS                                    │
├─────────────────────────────────────────────────────────────────┤
│ PK │ id                    │ BIGSERIAL                          │
│    │ name                  │ VARCHAR (NOT NULL)                  │
│    │ email                 │ VARCHAR (UNIQUE, NOT NULL)          │
│    │ password              │ VARCHAR (NOT NULL)                  │
│    │ birth_date            │ DATE (NOT NULL)                     │
│    │ created_at            │ TIMESTAMP                           │
│    │ streak_days           │ INTEGER (DEFAULT 0)                 │
│    │ coins                 │ INTEGER (DEFAULT 0)                 │
└─────────────────────────────────────────────────────────────────┘
                              │
                              │ 1:N
                              │
        ┌─────────────────────┼─────────────────────┐
        │                     │                     │
        │                     │                     │
        ▼                     ▼                     ▼
┌──────────────┐    ┌──────────────┐    ┌──────────────┐
│ QUESTION_    │    │ STUDY_GOALS  │    │ CUSTOM_LISTS │
│ ANSWERS      │    │              │    │              │
├──────────────┤    ├──────────────┤    ├──────────────┤
│ PK │ id      │    │ PK │ id      │    │ PK │ id      │
│ FK │ user_id │───┐│ FK │ user_id │───┐│ FK │ user_id │───┐
│ FK │ question│──┐│    │ title    │    │    │ name    │   │
│    │ _id     │  ││    │ desc     │    │    │ desc    │   │
│    │ answer   │  ││    │ start_dt│    │    │ filter_ │   │
│    │ is_correct│ ││    │ end_date│    │    │ year    │   │
│    │ time_sec │  ││    │ daily_m │    │    │ filter_ │   │
│    │ answered │  ││    │ daily_q │    │    │ subject │   │
│    │ _at      │  ││    │ focus_s │    │    │ q_count │   │
└──────────────┘  ││    │ status   │    │    │ incl_ans│   │
                  ││    │ progress │    │    │ created │   │
                  ││    │ created  │    │    │ updated │   │
                  ││    │ updated  │    │    └──────────┘   │
                  │└────┴──────────┘   │         │         │
                  │                    │         │ N:M     │
                  │                    │         │         │
                  │                    │         ▼         │
                  │                    │  ┌──────────────┐ │
                  │                    │  │ CUSTOM_LIST_ │ │
                  │                    │  │ QUESTIONS    │ │
                  │                    │  │ (Join Table) │ │
                  │                    │  ├──────────────┤ │
                  │                    │  │ FK │ list_id │ │
                  │                    │  │ FK │ quest_id│ │
                  │                    │  └──────────────┘ │
                  │                    │         │         │
                  │                    │         │         │
                  │                    │         └─────────┘
                  │                    │
                  │                    │
                  │                    │
                  │                    │ 1:1
                  │                    │
                  │                    ▼
                  │            ┌──────────────┐
                  │            │ STUDY_STREAKS│
                  │            ├──────────────┤
                  │            │ PK │ id      │
                  │            │ FK │ user_id │ (UNIQUE)
                  │            │    │ consec_ │
                  │            │    │ days    │
                  │            │    │ last_st │
                  │            │    │ day     │
                  │            │    │ longest │
                  │            │    │ created │
                  │            │    │ updated │
                  │            └──────────────┘
                  │
                  │ N:1
                  │
                  ▼
┌─────────────────────────────────────────────────────────────────┐
│                        QUESTIONS                                 │
├─────────────────────────────────────────────────────────────────┤
│ PK │ id                    │ BIGSERIAL                          │
│    │ title                 │ VARCHAR(255) (NOT NULL)            │
│    │ index                 │ INTEGER (NOT NULL)                 │
│    │ year                  │ INTEGER (NOT NULL)                 │
│    │ subject               │ VARCHAR(50) (NOT NULL)              │
│    │ language              │ VARCHAR(20)                        │
│    │ context               │ TEXT                               │
│    │ alternatives_intro    │ TEXT                               │
│    │ correct_alternative   │ VARCHAR(1) (NOT NULL)              │
│    │ files                 │ TEXT[]                             │
│    │ knowledge_area        │ VARCHAR(100)                        │
│    │ area_code             │ VARCHAR(50)                         │
│    │ created_at            │ TIMESTAMP                           │
└─────────────────────────────────────────────────────────────────┘
                              │
                              │ 1:N
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│                       ALTERNATIVES                               │
├─────────────────────────────────────────────────────────────────┤
│ PK │ id                    │ BIGSERIAL                          │
│ FK │ question_id           │ BIGINT (NOT NULL)                  │
│    │ letter                │ VARCHAR(1) (NOT NULL)              │
│    │ text                  │ TEXT (NOT NULL)                    │
│    │ file_path             │ VARCHAR                             │
│    │ is_correct            │ BOOLEAN (NOT NULL, DEFAULT false)  │
└─────────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────────┐
│                    PASSWORD_RECOVERY                             │
├─────────────────────────────────────────────────────────────────┤
│ PK │ id                    │ BIGSERIAL                          │
│    │ email                 │ VARCHAR (UNIQUE, NOT NULL)          │
│    │ code                  │ VARCHAR (NOT NULL)                  │
│    │ expiration_date       │ TIMESTAMP (NOT NULL)                │
│    │ used                  │ BOOLEAN (NOT NULL, DEFAULT false)   │
└─────────────────────────────────────────────────────────────────┘
```

---

## 🔗 Relacionamentos Detalhados

### **1. USER → QUESTION_ANSWERS (1:N)**
- Um usuário pode ter múltiplas respostas
- Uma resposta pertence a um único usuário
- **Foreign Key**: `question_answers.user_id → users.id`

### **2. USER → STUDY_GOALS (1:N)**
- Um usuário pode ter múltiplas metas de estudo
- Uma meta pertence a um único usuário
- **Foreign Key**: `study_goals.user_id → users.id`

### **3. USER → CUSTOM_LISTS (1:N)**
- Um usuário pode criar múltiplas listas personalizadas
- Uma lista pertence a um único usuário
- **Foreign Key**: `custom_lists.user_id → users.id`

### **4. USER → STUDY_STREAKS (1:1)**
- Um usuário tem exatamente um registro de streak
- Um streak pertence a um único usuário
- **Foreign Key**: `study_streaks.user_id → users.id` (UNIQUE)

### **5. QUESTION → ALTERNATIVES (1:N)**
- Uma questão pode ter múltiplas alternativas (A, B, C, D, E)
- Uma alternativa pertence a uma única questão
- **Foreign Key**: `alternatives.question_id → questions.id`

### **6. QUESTION → QUESTION_ANSWERS (1:N)**
- Uma questão pode ser respondida múltiplas vezes (por diferentes usuários)
- Uma resposta refere-se a uma única questão
- **Foreign Key**: `question_answers.question_id → questions.id`

### **7. CUSTOM_LISTS ↔ QUESTIONS (N:M)**
- Uma lista pode conter múltiplas questões
- Uma questão pode estar em múltiplas listas
- **Tabela de Junção**: `custom_list_questions`
  - **Foreign Keys**:
    - `custom_list_questions.custom_list_id → custom_lists.id`
    - `custom_list_questions.question_id → questions.id`

### **8. PASSWORD_RECOVERY (Independente)**
- Tabela independente para códigos de recuperação de senha
- Relacionada a usuários apenas pelo email (não há FK)

---

## 📋 Estrutura das Tabelas

### **Tabela: users**
```sql
CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    email VARCHAR UNIQUE NOT NULL,
    password VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    created_at TIMESTAMP,
    streak_days INTEGER DEFAULT 0,
    coins INTEGER DEFAULT 0
);
```

**Índices:**
- `PRIMARY KEY (id)`
- `UNIQUE (email)`

---

### **Tabela: questions**
```sql
CREATE TABLE questions (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    index INTEGER NOT NULL,
    year INTEGER NOT NULL,
    subject VARCHAR(50) NOT NULL,
    language VARCHAR(20),
    context TEXT,
    alternatives_introduction TEXT,
    correct_alternative VARCHAR(1) NOT NULL,
    files TEXT[],
    knowledge_area VARCHAR(100),
    area_code VARCHAR(50),
    created_at TIMESTAMP
);
```

**Índices:**
- `PRIMARY KEY (id)`
- Índices sugeridos: `(year)`, `(subject)`, `(year, subject)`

---

### **Tabela: alternatives**
```sql
CREATE TABLE alternatives (
    id BIGSERIAL PRIMARY KEY,
    question_id BIGINT NOT NULL,
    letter VARCHAR(1) NOT NULL,
    text TEXT NOT NULL,
    file_path VARCHAR,
    is_correct BOOLEAN NOT NULL DEFAULT false,
    FOREIGN KEY (question_id) REFERENCES questions(id) ON DELETE CASCADE
);
```

**Índices:**
- `PRIMARY KEY (id)`
- `FOREIGN KEY (question_id)`

---

### **Tabela: question_answers**
```sql
CREATE TABLE question_answers (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    question_id BIGINT NOT NULL,
    user_answer VARCHAR(1),
    is_correct BOOLEAN,
    response_time_seconds INTEGER,
    answered_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (question_id) REFERENCES questions(id) ON DELETE CASCADE
);
```

**Índices:**
- `PRIMARY KEY (id)`
- `FOREIGN KEY (user_id)`
- `FOREIGN KEY (question_id)`
- Índice composto sugerido: `(user_id, question_id)` (evitar duplicatas)

---

### **Tabela: study_goals**
```sql
CREATE TABLE study_goals (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    daily_minutes INTEGER,
    daily_questions INTEGER,
    focus_subject VARCHAR(50),
    status VARCHAR NOT NULL DEFAULT 'ACTIVE',
    progress_percentage DOUBLE PRECISION DEFAULT 0.0,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
```

**Índices:**
- `PRIMARY KEY (id)`
- `FOREIGN KEY (user_id)`
- Índice sugerido: `(user_id, status)`

**Enum Status:**
- `ACTIVE` - Meta ativa
- `COMPLETED` - Meta concluída
- `CANCELLED` - Meta cancelada
- `EXPIRED` - Meta expirada

---

### **Tabela: study_streaks**
```sql
CREATE TABLE study_streaks (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL UNIQUE,
    consecutive_days INTEGER NOT NULL DEFAULT 0,
    last_study_day DATE,
    longest_streak INTEGER DEFAULT 0,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
```

**Índices:**
- `PRIMARY KEY (id)`
- `UNIQUE (user_id)`
- `FOREIGN KEY (user_id)`

---

### **Tabela: custom_lists**
```sql
CREATE TABLE custom_lists (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    user_id BIGINT NOT NULL,
    filter_year INTEGER,
    filter_subject VARCHAR(50),
    questions_count INTEGER,
    include_answered BOOLEAN DEFAULT false,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
```

**Índices:**
- `PRIMARY KEY (id)`
- `FOREIGN KEY (user_id)`

---

### **Tabela: custom_list_questions (Tabela de Junção)**
```sql
CREATE TABLE custom_list_questions (
    custom_list_id BIGINT NOT NULL,
    question_id BIGINT NOT NULL,
    PRIMARY KEY (custom_list_id, question_id),
    FOREIGN KEY (custom_list_id) REFERENCES custom_lists(id) ON DELETE CASCADE,
    FOREIGN KEY (question_id) REFERENCES questions(id) ON DELETE CASCADE
);
```

**Índices:**
- `PRIMARY KEY (custom_list_id, question_id)`
- `FOREIGN KEY (custom_list_id)`
- `FOREIGN KEY (question_id)`

---

### **Tabela: password_recovery**
```sql
CREATE TABLE password_recovery (
    id BIGSERIAL PRIMARY KEY,
    email VARCHAR UNIQUE NOT NULL,
    code VARCHAR NOT NULL,
    expiration_date TIMESTAMP NOT NULL,
    used BOOLEAN NOT NULL DEFAULT false
);
```

**Índices:**
- `PRIMARY KEY (id)`
- `UNIQUE (email)`

---

## 🔑 Chaves Primárias e Estrangeiras

### **Chaves Primárias (PK)**
- Todas as tabelas utilizam `BIGSERIAL` (auto-incremento)
- Nome padrão: `id`

### **Chaves Estrangeiras (FK)**
- Todas as FKs utilizam `ON DELETE CASCADE`
- Garantem integridade referencial
- Permitem exclusão em cascata

### **Constraints**
- `UNIQUE`: `users.email`, `study_streaks.user_id`, `password_recovery.email`
- `NOT NULL`: Campos obrigatórios marcados
- `DEFAULT`: Valores padrão para campos opcionais

---

## 📊 Cardinalidades Resumidas

| Relacionamento | Cardinalidade | Tabela de Origem | Tabela de Destino |
|----------------|---------------|------------------|-------------------|
| User → QuestionAnswers | 1:N | users | question_answers |
| User → StudyGoals | 1:N | users | study_goals |
| User → CustomLists | 1:N | users | custom_lists |
| User → StudyStreaks | 1:1 | users | study_streaks |
| Question → Alternatives | 1:N | questions | alternatives |
| Question → QuestionAnswers | 1:N | questions | question_answers |
| CustomList ↔ Question | N:M | custom_lists | questions (via custom_list_questions) |

---

## 🎯 Observações Importantes

### **Normalização**
- ✅ Banco normalizado até 3NF (Terceira Forma Normal)
- ✅ Sem redundância de dados
- ✅ Relacionamentos bem definidos

### **Performance**
- Índices em chaves primárias e estrangeiras
- Índices compostos sugeridos para queries frequentes
- Uso de `TEXT` para campos longos (contexto, descrições)

### **Integridade**
- Foreign Keys com `ON DELETE CASCADE`
- Constraints de `UNIQUE` onde necessário
- Validações no nível de aplicação (Bean Validation)

### **Auditoria**
- Campos `created_at` e `updated_at` em tabelas principais
- Rastreamento de criação e modificação de registros

---

## 📝 Conclusão

O banco de dados do **Estudai** foi projetado seguindo boas práticas de modelagem relacional:

- ✅ **Normalização adequada** (3NF)
- ✅ **Relacionamentos bem definidos** (1:1, 1:N, N:M)
- ✅ **Integridade referencial** garantida
- ✅ **Índices otimizados** para performance
- ✅ **Estrutura escalável** e manutenível

Este modelo suporta todas as funcionalidades da aplicação, incluindo gamificação, metas de estudo, listas personalizadas e estatísticas de desempenho.

