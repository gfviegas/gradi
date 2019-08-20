FROM elixir:latest

RUN mkdir /code
WORKDIR /code

COPY . /code

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install hex phx_new 1.4.8 --force

RUN mix do compile

CMD ["mix", "phx.server"]
