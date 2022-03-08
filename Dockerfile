FROM elixir:1.13.3-alpine
RUN mix local.hex --force
RUN mix local.rebar --force

WORKDIR /app
COPY ./mix.exs /app/mix.exs
COPY ./mix.lock /app/mix.lock
RUN mix deps.get
RUN mix deps.compile

COPY ./assets /app/assets
COPY ./config /app/config
COPY ./lib /app/lib
COPY ./priv /app/priv
RUN MIX_ENV=dev mix release

ENV HOME=/app
ENV PHX_SERVER=true

EXPOSE 4000

CMD ["/app/_build/dev/rel/test_grpc_opentelemetry/bin/test_grpc_opentelemetry", "start"]

