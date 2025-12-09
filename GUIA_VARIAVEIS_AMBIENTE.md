# 🔧 Guia Completo - Variáveis de Ambiente para Produção

## 📋 Variáveis Necessárias

### **1. Perfil Spring (OBRIGATÓRIO)**
```bash
SPRING_PROFILES_ACTIVE=prod
```

### **2. Banco de Dados PostgreSQL (OBRIGATÓRIO)**
```bash
DATABASE_URL=jdbc:postgresql://dpg-d4agm87diees73d2u9m0-a.oregon-postgres.render.com:5432/estudai_nu9k
DB_USERNAME=estudai_nu9k_user
DB_PASSWORD=sua_senha_do_render_aqui
```

### **3. Email SMTP (OBRIGATÓRIO)**
```bash
SMTP_HOST=smtp.gmail.com
SMTP_PORT=587
EMAIL_USERNAME=seu-email@gmail.com
EMAIL_PASSWORD=senha_de_app_do_gmail
```

### **4. JWT Secret (OBRIGATÓRIO)**
```bash
JWT_SECRET=seu-secret-super-seguro-aqui
```

### **5. Porta (OPCIONAL - Render define automaticamente)**
```bash
PORT=8080
```

---

## 🚀 Como Configurar no Render.com

### **Passo a Passo:**

1. **Acesse seu serviço no Render**
   - Vá para: https://dashboard.render.com
   - Selecione seu serviço (Web Service)

2. **Abra a seção "Environment"**
   - No menu lateral, clique em **"Environment"**
   - Ou vá em **"Settings"** → **"Environment Variables"**

3. **Adicione cada variável:**

   Clique em **"Add Environment Variable"** e adicione uma por uma:

   ```
   Chave: SPRING_PROFILES_ACTIVE
   Valor: prod
   ```

   ```
   Chave: DATABASE_URL
   Valor: jdbc:postgresql://dpg-d4agm87diees73d2u9m0-a.oregon-postgres.render.com:5432/estudai_nu9k
   ```

   ```
   Chave: DB_USERNAME
   Valor: estudai_nu9k_user
   ```

   ```
   Chave: DB_PASSWORD
   Valor: [Cole a senha do seu banco Render aqui]
   ```

   ```
   Chave: SMTP_HOST
   Valor: smtp.gmail.com
   ```

   ```
   Chave: SMTP_PORT
   Valor: 587
   ```

   ```
   Chave: EMAIL_USERNAME
   Valor: seu-email@gmail.com
   ```

   ```
   Chave: EMAIL_PASSWORD
   Valor: [Senha de App do Gmail - veja instruções abaixo]
   ```

   ```
   Chave: JWT_SECRET
   Valor: [Gere um secret seguro - veja instruções abaixo]
   ```

4. **Salve e faça Deploy**
   - Clique em **"Save Changes"**
   - O Render vai fazer redeploy automaticamente

---

## 📧 Como Obter Senha de App do Gmail

### **Para usar Gmail como SMTP:**

1. **Ative a verificação em duas etapas** (se ainda não tiver)
   - Acesse: https://myaccount.google.com/security
   - Ative "Verificação em duas etapas"

2. **Gere uma Senha de App:**
   - Acesse: https://myaccount.google.com/apppasswords
   - Selecione "Email" e "Outro (nome personalizado)"
   - Digite: "Estudai Backend"
   - Clique em "Gerar"

3. **Copie a senha gerada:**
   - Será algo como: `abcd efgh ijkl mnop`
   - **Remova os espaços**: `abcdefghijklmnop`
   - Use essa senha no `EMAIL_PASSWORD`

---

## 🔐 Como Gerar JWT Secret Seguro

### **Opção 1: Online (Recomendado)**
- Acesse: https://generate-secret.vercel.app/32
- Ou: https://www.allkeysgenerator.com/Random/Security-Encryption-Key-Generator.aspx
- Gere uma chave de **32 caracteres** ou mais
- Copie e cole no `JWT_SECRET`

### **Opção 2: Terminal (Linux/Mac)**
```bash
openssl rand -base64 32
```

### **Opção 3: PowerShell (Windows)**
```powershell
-join ((48..57) + (65..90) + (97..122) | Get-Random -Count 32 | ForEach-Object {[char]$_})
```

### **Exemplo de JWT Secret:**
```
aB3dEf9gHiJkLmNoPqRsTuVwXyZ1234567890AbCdEf
```

---

## 📝 Checklist Completo

Antes de fazer deploy, verifique:

- [ ] `SPRING_PROFILES_ACTIVE=prod` configurado
- [ ] `DATABASE_URL` com URL completa do PostgreSQL
- [ ] `DB_USERNAME` correto
- [ ] `DB_PASSWORD` da senha do banco Render
- [ ] `SMTP_HOST=smtp.gmail.com`
- [ ] `SMTP_PORT=587`
- [ ] `EMAIL_USERNAME` com seu email Gmail
- [ ] `EMAIL_PASSWORD` com Senha de App (sem espaços)
- [ ] `JWT_SECRET` gerado e seguro (32+ caracteres)

---

## 🧪 Testando as Configurações

### **1. Verificar Logs no Render:**
- Acesse **"Logs"** no dashboard
- Procure por: `The following profiles are active: prod`
- Verifique se não há erros de conexão

### **2. Testar Conexão com Banco:**
Procure nos logs:
```
HikariPool-1 - Starting...
HikariPool-1 - Start completed.
```

### **3. Testar Envio de Email:**
Faça uma requisição de recuperação de senha:
```bash
curl -X POST https://seu-app.onrender.com/api/auth/request-password-reset \
  -H "Content-Type: application/json" \
  -d '{"email": "seu-email@exemplo.com"}'
```

---

## 🔄 Variáveis Opcionais (Já têm valores padrão)

Estas variáveis já têm valores padrão, mas você pode sobrescrever:

```bash
# Porta (Render define automaticamente)
PORT=8080

# Nome do remetente de email
ESTUDAI_EMAIL_SENDER_NAME=Equipe Estudai
```

---

## ⚠️ Problemas Comuns

### **Erro: "Cannot determine embedded database driver class"**
**Solução:** Verifique se `DATABASE_URL` está completa e começa com `jdbc:postgresql://`

### **Erro: "Email sending failed"**
**Solução:** 
- Verifique se `EMAIL_PASSWORD` é uma Senha de App (não a senha normal)
- Remova espaços da senha de app
- Verifique se a verificação em duas etapas está ativa

### **Erro: "Invalid JWT secret"**
**Solução:** Gere um novo JWT secret com pelo menos 32 caracteres

### **Erro: "Connection refused" (banco)**
**Solução:**
- Verifique se o banco está rodando no Render
- Confirme `DB_USERNAME` e `DB_PASSWORD`
- Verifique se o banco aceita conexões externas

---

## 📊 Exemplo Completo de Configuração

Aqui está um exemplo completo de como ficam todas as variáveis:

```bash
# Perfil
SPRING_PROFILES_ACTIVE=prod

# Banco de Dados
DATABASE_URL=jdbc:postgresql://seu-host:5432/seu-database
DB_USERNAME=seu_usuario
DB_PASSWORD=SUA_SENHA_AQUI

# Email
SMTP_HOST=smtp.gmail.com
SMTP_PORT=587
EMAIL_USERNAME=seu-email@gmail.com
EMAIL_PASSWORD=SUA_SENHA_DE_APP_AQUI

# JWT (Gere uma chave segura com pelo menos 32 caracteres)
JWT_SECRET=GERE_UMA_CHAVE_SECRETA_SEGURA_AQUI_COM_PELO_MENOS_32_CARACTERES
```

---

## 🎯 Resumo Rápido

**Variáveis OBRIGATÓRIAS:**
1. `SPRING_PROFILES_ACTIVE=prod`
2. `DATABASE_URL` (URL completa do PostgreSQL)
3. `DB_USERNAME` (usuário do banco)
4. `DB_PASSWORD` (senha do banco)
5. `EMAIL_USERNAME` (seu email Gmail)
6. `EMAIL_PASSWORD` (Senha de App do Gmail)
7. `JWT_SECRET` (secret seguro de 32+ caracteres)

**Variáveis OPCIONAIS:**
- `SMTP_HOST` (padrão: smtp.gmail.com)
- `SMTP_PORT` (padrão: 587)
- `PORT` (Render define automaticamente)

---

**✨ Pronto! Com essas variáveis configuradas, sua aplicação estará funcionando em produção! ✨**

