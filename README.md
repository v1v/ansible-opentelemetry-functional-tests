## Tests to validate the Ansible OpenTelemetry plugin

The plugin itself has some unit tests, but this is more about the integration tests.

### Prepare the opentelemetry callback plugin

Copy the `opentelemetry.py` into the `callback_plugins` folder.

### Prepare your local environment

`make start`

### Run the script

`make run`

### Verify the traces are correctly populated

TBD
