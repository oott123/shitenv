# Shitenv

## Install

```bash
git clone https://github.com/oott123/shitenv ~/.shitenv
echo 'export S__TENV_ROOT=~/.shitenv' >> ~/.bashrc
echo 'source $S__TENV_ROOT/shitenv.sh' >> ~/.bashrc
```

## Usage

```bash
echo 'export http_proxy=http://127.0.0.1:8080' > $S__TENV_ROOT/env/proxy
echo 'export HTTP_PROXY=http://127.0.0.1:8080' > $S__TENV_ROOT/env/proxy
echo 'export http_proxy=""' > $S__TENV_ROOT/env/noproxy
echo 'export HTTP_PROXY=""' > $S__TENV_ROOT/env/noproxy
shitenv proxy
shitenv noproxy
```

