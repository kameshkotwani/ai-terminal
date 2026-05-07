# 🚀 AI-Powered Terminal Environment

A high-performance, containerized development environment pre-loaded with the latest AI-native CLI tools and a modern development stack.

## 🌟 Features

This environment is built on **Ubuntu 24.04** and comes packed with:

- **AI Tools:**
  - `claude`: Anthropic's Claude Code CLI.
  - `gemini`: Google's Gemini CLI.
  - `codex`: OpenAI Codex CLI.
- **Modern Runtimes:**
  - **Node.js v24** (via NVM)
  - **Bun** (Fast JavaScript runtime)
  - **Python 3** & Pip
- **Essential Utilities:**
  - `jq`, `vim`, `git`, `curl`, `wget`, `build-essential`, `openssh-client`.
- **Developer Experience:**
  - Persistence for AI tool configurations (`.claude`, `.codex`, `.gemini`).
  - Shared workspace directory.
  - Sudo access for the `ubuntu` user.

---

## 🛠 Getting Started

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### 🚀 Launching the Environment

1. **Clone the repository and spin up the container:**
   ```bash
   docker-compose up -d
   ```

2. **Attach to the terminal:**
   ```bash
   docker exec -it ai-terminal /bin/bash
   ```

### 📁 Persistence & Workspace

- **Workspace:** Place your projects in the `./workspace` folder on your host machine. They will be automatically synced to `/workspace` inside the container.
- **Config Persistence:** Your AI CLI credentials and settings are persisted in hidden directories (`.claude`, `.codex`, `.gemini`) within the project root.

---

## 🤖 Using the AI Tools

Once inside the container, you can immediately start using your favorite AI assistants:

```bash
# Claude Code
claude

# Gemini CLI
gemini-cli

# Bun Runtime
bun run index.ts
```

---

## 🔧 Customization

To add more tools, simply modify the `Dockerfile` and rebuild:

```bash
docker-compose build
```

## 📜 License

MIT
