gqlmod checker
==============

Example:

```yaml
name: gqlmod check

on: push

jobs:
  check:
    name: gqlmod check
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
        with:
          fetch-depth: 1
      - uses: go-build-it/gqlmod-check-action@master
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
