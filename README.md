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


TODO, unfork:

git clone --bare https://github.com/{username}/{repository}

Delete original repository in https://github.com/{username}/{repository}/settings.

Create new repository with the name {repository} at https://github.com/new.

cd {repository}.git and git push --mirror https://github.com/{username}/{repository}
