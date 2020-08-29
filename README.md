# YAML Hound

YAML-aware search which returns correct YAML context

To build:
```
docker build -t yaml-hound:latest .
```

To index YAML files in current directory:
```
docker run -p 6080:6080 -v $(pwd):/data --rm yaml-hound:latest
```
