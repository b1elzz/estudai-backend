# 🚂 Guia de Deploy no Railway - Estudai Backend

## ✅ Checklist Pré-Deploy

- [x] Código compilando sem erros
- [x] CORS configurado corretamente
- [x] Variáveis de ambiente preparadas
- [x] Dockerfile configurado

## 📋 Variáveis de Ambiente Obrigatórias no Railway

Configure estas variáveis no Railway (Settings → Variables):

| Chave | Valor | Descrição |
|-------|-------|-----------|
| `SPRING_PROFILES_ACTIVE` | `prod` | Perfil Spring para produção |
| `DATABASE_URL` | `jdbc:postgresql://...` | URL completa do PostgreSQL |
| `DB_USERNAME` | `seu_usuario` | Usuário do banco de dados |
| `DB_PASSWORD` | `sua_senha` | Senha do banco de dados |
| `EMAIL_USERNAME` | `seu-email@gmail.com` | Email para envio (Gmail) |
| `EMAIL_PASSWORD` | `senha_de_app` | Senha de app do Gmail |
| `JWT_SECRET` | `chave_secreta_32+_caracteres` | Chave secreta para JWT |
| `PORT` | `8080` | Porta (Railway define automaticamente) |

### ⚠️ IMPORTANTE - Railway define PORT automaticamente

O Railway define a variável `PORT` automaticamente. Não precisa configurar manualmente, mas o Spring Boot precisa usar essa variável.

## 🚀 Passo a Passo para Deploy no Railway

### 1. Conectar Repositório

1. Acesse: https://railway.app
2. Clique em **"New Project"**
3. Selecione **"Deploy from GitHub repo"**
4. Conecte seu repositório: `b1elzz/estudai-backend`
5. Selecione a branch: `master`

### 2. Configurar Build

O Railway detectará automaticamente o `Dockerfile` e fará o build.

**Build Command:** (automático via Dockerfile)
```dockerfile
# O Dockerfile já está configurado
```

**Start Command:** (automático via Dockerfile)
```dockerfile
# O Dockerfile já está configurado
```

### 3. Configurar Variáveis de Ambiente

1. No projeto Railway, clique em **"Variables"**
2. Adicione cada variável uma por uma:

```bash
SPRING_PROFILES_ACTIVE=prod
DATABASE_URL=jdbc:postgresql://seu-host:5432/seu-database
DB_USERNAME=seu_usuario
DB_PASSWORD=sua_senha
EMAIL_USERNAME=seu-email@gmail.com
EMAIL_PASSWORD=senha_de_app_do_gmail
JWT_SECRET=GERE_UMA_CHAVE_SECRETA_DE_32_CARACTERES
```

### 4. Configurar PostgreSQL no Railway

1. No projeto Railway, clique em **"New"** → **"Database"** → **"Add PostgreSQL"**
2. Railway criará automaticamente um banco PostgreSQL
3. Copie as credenciais de conexão:
   - **Host:** (será algo como `containers-us-west-xxx.railway.app`)
   - **Port:** `5432`
   - **Database:** `railway`
   - **Username:** `postgres`
   - **Password:** (gerado automaticamente)

4. Configure a `DATABASE_URL`:
```bash
DATABASE_URL=jdbc:postgresql://containers-us-west-xxx.railway.app:5432/railway
DB_USERNAME=postgres
DB_PASSWORD=senha_gerada_pelo_railway
```

### 5. Configurar Domínio Público

1. No serviço do backend, clique em **"Settings"**
2. Vá em **"Networking"**
3. Clique em **"Generate Domain"**
4. Railway gerará uma URL como: `https://estudai-backend-production.up.railway.app`
5. **Copie essa URL** - você precisará dela no frontend!

### 6. Configurar Frontend

No arquivo `.env` do frontend, atualize:

```bash
EXPO_PUBLIC_API_URL=https://estudai-backend-production.up.railway.app/api
```

**⚠️ IMPORTANTE:** 
- Use `https://` (não `http://`)
- Adicione `/api` no final (o Spring Boot usa `context-path: /api`)
- A URL completa será: `https://seu-dominio.railway.app/api`

## 🔧 Configuração de Email (Gmail)

### Como obter Senha de App do Gmail:

1. Acesse: https://myaccount.google.com/apppasswords
2. Gere uma senha de app para "Mail"
3. Use essa senha na variável `EMAIL_PASSWORD`
4. **Remova os espaços** da senha (ex: `abcd efgh ijkl mnop` → `abcdefghijklmnop`)

### ⚠️ Problema: Railway pode bloquear SMTP

Se o envio de email não funcionar, o Railway pode estar bloqueando conexões SMTP. Nesse caso, considere usar:
- **SendGrid** (100 emails/dia grátis)
- **Resend** (3.000 emails/mês grátis)
- **Mailgun** (5.000 emails/mês grátis)

## 🔐 Gerar JWT Secret

```bash
# Opção 1: OpenSSL
openssl rand -base64 32

# Opção 2: Online
# Acesse: https://generate-secret.vercel.app/32
```

## 🧪 Testar Deploy

Após o deploy, teste:

1. **Health Check:**
```bash
curl https://seu-dominio.railway.app/api/swagger-ui.html
```

2. **Registro de usuário:**
```bash
curl -X POST https://seu-dominio.railway.app/api/auth/register \
  -H "Content-Type: application/json" \
  -d '{"name":"Teste","email":"teste@teste.com","password":"Teste@123","birthDate":"2000-01-01"}'
```

3. **Login:**
```bash
curl -X POST https://seu-dominio.railway.app/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"teste@teste.com","password":"Teste@123"}'
```

## 🐛 Troubleshooting

### Erro: "Failed to fetch" / CORS

**Solução:**
1. Verifique se a URL do frontend está correta (deve ser `https://...` com `/api` no final)
2. Verifique se o backend está rodando (veja logs no Railway)
3. Verifique se o CORS está configurado (já está no código)

### Erro: "Cannot connect to database"

**Solução:**
1. Verifique `DATABASE_URL`, `DB_USERNAME` e `DB_PASSWORD`
2. Verifique se o banco PostgreSQL está rodando no Railway
3. Verifique se o banco aceita conexões externas

### Erro: "Email sending failed"

**Solução:**
1. Verifique `EMAIL_USERNAME` e `EMAIL_PASSWORD`
2. Use senha de app (não senha normal)
3. Se Railway bloquear SMTP, considere usar SendGrid/Resend

### Erro: "Invalid JWT token"

**Solução:**
1. Verifique se `JWT_SECRET` está configurado
2. Certifique-se que é o mesmo em todas as instâncias

## 📊 Monitoramento

### Ver Logs no Railway:

1. No projeto Railway, clique no serviço do backend
2. Vá em **"Deployments"** → Clique no deployment mais recente
3. Veja os logs em tempo real

### Métricas:

- Railway mostra CPU, Memória e Rede automaticamente
- Monitore erros nos logs
- Acompanhe tempo de resposta

## 🎯 URL Final

Após configurar tudo, sua API estará disponível em:

```
https://seu-dominio.railway.app/api
```

**Exemplo:**
```
https://estudai-backend-production.up.railway.app/api
```

## 📝 Notas Finais

- ✅ Backend está pronto para produção
- ✅ CORS configurado para aceitar todas as origens
- ✅ Dockerfile otimizado
- ✅ Variáveis de ambiente preparadas

**Boa sorte com o deploy! 🚂**

