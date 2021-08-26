# This is an edi mqtt openai gpt3 thingy.

```
nix-shell
virtualenv venv
. venv/bin/activate
pip install -r requirements.txt
export OPENAI_API_KEY=<your openai key>
./script.py
```

Edit the host from localhost in the source code in `script.py`.