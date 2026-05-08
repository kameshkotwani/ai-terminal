FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    curl \
    git \
    python3 \
    python3-pip \
    sudo \
    ca-certificates \
    unzip \
    wget \
    build-essential \
    jq \
    vim \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Give ubuntu user sudo access
RUN echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER ubuntu
WORKDIR /home/ubuntu



# Install NVM and Node.js v24
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

# Source NVM and install Node.js v24
RUN bash -c '. "$HOME/.nvm/nvm.sh" && nvm install 24 && node -v && npm -v'

# Set PATH early so installation scripts can detect it
ENV PATH="/home/ubuntu/.local/bin:/home/ubuntu/.bun/bin:/home/ubuntu/.nvm/versions/node/v24.15.0/bin:$PATH"

# Install Claude CLI and Bun
RUN curl -fsSL https://claude.ai/install.sh | bash
RUN curl -fsSL https://bun.sh/install | bash

# copilot CLI
RUN curl -fsSL https://gh.io/copilot-install | bash

# Install Codex and Gemini CLI globally
RUN npm install -g @openai/codex @google/gemini-cli 

WORKDIR /workspace

CMD ["/bin/bash"]
