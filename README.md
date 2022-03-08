# TestGrpcOpentelemetry

Sample application for testing grpc opentelemetry

how to run (require docker), which will create a docker image, run it on port 4000, and auto curl localhost:4000 so that we could see log of application:
```sh
docker build . -t test_grpc_opentelemetry
docker run -p 4000:4000  test_grpc_opentelemetry & watch curl http://localhost:4000 -s &>/dev/null
```

example output log
```
=WARNING REPORT==== 8-Mar-2022::04:33:27.842736 ===
OTLP exporter failed to initialize with exception throw:{application_either_not_started_or_not_ready,
                                                         tls_certificate_check}
[error] `inotify-tools` is needed to run `file_system` for your system, check https://github.com/rvoicilas/inotify-tools/wiki for more information about how to install it. If it's already installed but not be found, appoint executable file with `config.exs` or `FILESYSTEM_FSINOTIFY_EXECUTABLE_FILE` env.
[warning] Could not start Phoenix live-reload because we cannot listen to the file system.
You don't need to worry! This is an optional feature used during development to
refresh your browser when you save files and it does not affect production.

[info] Running TestGrpcOpentelemetryWeb.Endpoint with cowboy 2.9.0 at 0.0.0.0:4000 (http)
[info] Access TestGrpcOpentelemetryWeb.Endpoint at http://localhost:4000
[info] GET /
[debug] Processing with TestGrpcOpentelemetryWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[info] Sent 200 in 8ms
[info] GET /
[debug] Processing with TestGrpcOpentelemetryWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[info] Sent 200 in 1ms
[info] GET /
[debug] Processing with TestGrpcOpentelemetryWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[info] Sent 200 in 1ms
[info] OTLP exporter successfully initialized
[info] OTLP grpc export failed with error: :no_endpoints
[info] GET /
[debug] Processing with TestGrpcOpentelemetryWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[info] Sent 200 in 1ms
[info] GET /
[debug] Processing with TestGrpcOpentelemetryWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[info] Sent 200 in 1ms
[info] OTLP grpc export failed with error: :undefined_channel
[info] GET /
[debug] Processing with TestGrpcOpentelemetryWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[info] Sent 200 in 874µs
[info] GET /
[debug] Processing with TestGrpcOpentelemetryWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[info] Sent 200 in 1ms
[info] GET /
[debug] Processing with TestGrpcOpentelemetryWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[info] Sent 200 in 816µs
[info] OTLP grpc export failed with error: :undefined_channel
[info] GET /
[debug] Processing with TestGrpcOpentelemetryWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[info] Sent 200 in 1ms
[info] GET /
[debug] Processing with TestGrpcOpentelemetryWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
```
