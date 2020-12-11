#/bin/sh
chamber export --format json --output-file config/connectionString.json $K8S_CLUSTER/$K8S_ENVIRONMENT/$K8S_SERVICE/appsettings/database
node index.js