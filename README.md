# potential-engine

A Python project scaffolded with linting, tests, CI, and a Claude Code on the web SessionStart hook.

## Requirements

- Python 3.9+

## Setup

Install the project with its development dependencies into a virtual environment:

```bash
python -m venv .venv
source .venv/bin/activate
pip install -e ".[dev]"
```

## Development

| Task | Command |
| --- | --- |
| Run tests | `pytest` |
| Lint | `ruff check .` |
| Format | `ruff format .` |
| Lint (CI mode) | `ruff check --output-format=github .` |

### Pre-commit hooks

This repo ships a [pre-commit](https://pre-commit.com/) config that runs `ruff`
(lint + format) on staged files. Enable it once after cloning:

```bash
pre-commit install
```

## Continuous integration

[`.github/workflows/ci.yml`](.github/workflows/ci.yml) runs lint and tests on
every push and pull request across Python 3.9–3.12.

## Claude Code on the web

[`.claude/hooks/session-start.sh`](.claude/hooks/session-start.sh) installs the
project (with dev dependencies) when a remote Claude Code session starts, so
tests and linters are ready to run.
