# McQueen Movies
TP de GRADI

## Instalando recursos
- Docker
- Docker-Compose


## Configurando o banco relacional
``` docker-compose run api mix ecto.reset```

## Configurando o banco não-relacional
``` docker-compose run api mix run priv/repo/seeds_mongo.exs ```

## Rodando o projeto
``` docker-compose up ```

O frontend estará disponvel em `http://localhost` e o GraphiQL em `http://localhost:4000/graphiql`
