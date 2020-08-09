running youtube-dl to docker

```
 docker build -t youtube-dl
```

```
docker run --rm -v $(pwd):/media youtube-dl your-url
```
