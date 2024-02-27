# Lefthook

This project uses Lefthook to run pre-commit hooks.

1. To install Lefthook run `brew install lefthook` or `brew upgrade lefthook` if you already have it installed.
2. Then run `lefthook install -f` to install the hooks.
3. You can also run `lefthook run pre-commit` to run the hooks manually.

Now the actions defined in `lefthook.yml` will run before each commit.
