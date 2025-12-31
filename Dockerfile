
# -------------------------------------------------
# Dockerfile para MySQL
# -------------------------------------------------
# Usa a imagem oficial do MySQL como base
FROM mysql:8.0

# Opcional: definir o diretório de trabalho (não é estritamente necessário)
WORKDIR /var/lib/mysql

# Variáveis de ambiente
#   MYSQL_ROOT_PASSWORD – senha do usuário root (obrigatório)
#   MYSQL_DATABASE       – cria um banco de dados inicial (opcional)
#   MYSQL_USER           – cria um usuário adicional (opcional)
#   MYSQL_PASSWORD       – senha do usuário adicional (opcional)
ENV MYSQL_ROOT_PASSWORD=senhaForteRoot \
    MYSQL_DATABASE=meubanco \
    MYSQL_USER=usuarioapp \
    MYSQL_PASSWORD=senhaForteApp

# Expor a porta padrão do MySQL
EXPOSE 3306

# Copiar arquivos de inicialização personalizados (se houver)
# Por exemplo, scripts .sql ou .sh que você queira rodar na primeira inicialização.
# COPY ./init-scripts/ /docker-entrypoint-initdb.d/

# O ponto de entrada padrão da imagem oficial já cuida de iniciar o servidor MySQL,
# então não precisamos sobrescrevê‑lo aqui.