# AI Terminal

A portable, containerised AI engineering workspace with Claude Code, OpenAI Codex, Gemini CLI, and GitHub Copilot preconfigured in one reproducible terminal environment.

Stop fighting broken local installs, dependency conflicts, and painful AI CLI setup. Clone, build, authenticate, and start building.

---

## Features

### Multi-Agent AI Development Environment
Preconfigured access to modern AI coding assistants:

- Claude Code
- OpenAI Codex CLI
- Gemini CLI
- GitHub Copilot CLI

### Developer Tooling Included
Everything needed for terminal-first development:

- Ubuntu 24.04
- Node.js 24 (via NVM)
- Python 3
- Bun
- Git
- curl
- jq
- vim
- build-essential
- OpenSSL development libraries

### Persistent Configuration
Your environment survives container restarts:

- Project workspace persists locally
- AI authentication sessions persist
- CLI configurations remain intact
- Clean separation from host machine

### Docker-First Reproducibility
Same environment everywhere:

- Linux
- macOS
- Windows (Docker Desktop)

### Safe Experimentation
Break the container, not your machine.

Perfect for:

- testing AI coding workflows
- rapid prototyping
- LLM experimentation
- safe environment isolation
- learning modern AI engineering tooling

---

## Architecture

```text
Host Machine
├── workspace/        → project files
├── .claude/          → Claude config
├── .codex/           → Codex config
├── .gemini/          → Gemini config
└── .copilot/         → GitHub Copilot config

        ↓ bind mounted into container

AI Terminal Container
├── /workspace
├── Claude Code
├── OpenAI Codex CLI
├── Gemini CLI
├── GitHub Copilot CLI
├── Node.js
├── Python
├── Bun
└── Ubuntu 24.04
```

---

## Quick Start

Clone the repository:

```bash
git clone https://github.com/kameshkotwani/ai-terminal.git
cd ai-terminal
```

Create required persistent directories:

```bash
mkdir -p workspace .claude .codex .gemini .copilot
```
OR 

```
./setup.sh
```
This will create the directories automatically.

Build and start:

```bash
docker compose up --build
```

---

## First-Time Authentication

Authenticate only the tools you want to use.

Claude:

```bash
claude login
```

Codex:

```bash
codex login
```

Gemini:

```bash
gemini
```

GitHub Copilot:

```bash
github-copilot login
```

Because configuration is stored locally, authentication persists between sessions.

---

## Usage

On the Host:

```bash
cd /workspace
```

Clone your project:

```bash
git clone https://github.com/your/project.git
cd project
```

Use your preferred assistant:

```bash
claude
```

or

```bash
codex
```

or

```bash
gemini
```

or

```bash
github-copilot
```

Example tasks:

- explain a codebase
- refactor legacy code
- generate tests
- build APIs
- debug runtime issues
- prototype new ideas

---

## Why AI Terminal?

| Problem | AI Terminal |
|--------|-------------|
| Dependency conflicts | ✅ Solved |
| Multiple AI CLI installations | ✅ Solved |
| Broken local environments | ✅ Solved |
| Reproducibility issues | ✅ Solved |
| Risky experimentation on host machine | ✅ Solved |
| Slow onboarding | ✅ Improved |

---

## Included Tools

| Tool | Included |
|------|----------|
| Claude Code | ✅ |
| OpenAI Codex CLI | ✅ |
| Gemini CLI | ✅ |
| GitHub Copilot CLI | ✅ |
| Node.js | ✅ |
| Python | ✅ |
| Bun | ✅ |
| Git | ✅ |
| jq | ✅ |
| curl | ✅ |

---

## Use Cases

AI Terminal is ideal for:

- AI-assisted software development
- rapid prototyping
- machine learning experimentation
- terminal-first engineering workflows
- evaluating multiple AI coding assistants
- isolated development environments
- learning AI engineering tooling

---

## Security

AI Terminal does not include any credentials, API keys, or personal authentication tokens.

Users authenticate their own AI tooling locally.

Never bake secrets into Docker images.

---

## Docker Hub

Prebuilt image available on Docker Hub:

```bash
docker pull kameshkotwani/ai-terminal:latest
```

Run directly:

```bash
docker run -it --rm \
  -v $(pwd)/workspace:/workspace \
  -v $(pwd)/.claude:/home/ubuntu/.claude \
  -v $(pwd)/.codex:/home/ubuntu/.codex \
  -v $(pwd)/.gemini:/home/ubuntu/.gemini \
  -v $(pwd)/.copilot:/home/ubuntu/.copilot \
  kameshkotwani/ai-terminal:latest
```

---

## License

MIT License
