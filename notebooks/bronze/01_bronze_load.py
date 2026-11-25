import json

ENV = "DEV"

config_file = {
    "DEV": "config/dev.json",
    "SIT": "config/sit.json",
    "UAT": "config/uat.json"
}

config = json.load(
    open(config_file[ENV])
)

print("Environment:", config["environment"])
print("Catalog:", config["catalog"])
print("Source DB:", config["source_database"])
