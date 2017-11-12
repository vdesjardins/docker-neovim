
Exemple:

```bash
# opening a file with docker container
function e() {
    # TODO: iterate to resolve all files with realpath before invoking
    # for now just taking the first argument
    docker run -it --rm \
        -v $HOME:$HOME \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -e TZ=America/Montreal \
        -e EUID=$UID \
        -e EGID=$GID \
        -e HOME=$HOME \
        vdesjardins/neovim $(realpath $1)
}
```
