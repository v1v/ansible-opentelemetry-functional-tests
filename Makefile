.DEFAULT_GOAL := start

.PHONY: start
start:
	@env docker-compose --file docker-compose.yml up --detach --recreate

.PHONY: stop
stop:
	@env docker-compose --file docker-compose.yml stop

.PHONY: clean
clean:
	@env docker-compose --file docker-compose.yml down -v

.PHONY: run
run:
	OTEL_EXPORTER_OTLP_TRACES_ENDPOINT=localhost:14317 \
	OTEL_EXPORTER_OTLP_INSECURE=true \
	ansible-playbook -i hosts it.yml
