# Dependency
dependency:
    sudo apt update
    sudo snap install just
    sudo apt install wget -y

# Download LLM
download-llm:
    mkdir -p docker/volumes/models
    wget https://huggingface.co/tensorblock/bloomz-1b1-GGUF/resolve/main/bloomz-1b1-Q8_0.gguf \
         -O docker/volumes/models/bloomz-1b1-Q8_0.gguf

# LLM
stop-llm:
    docker-compose --profile llm -p llm-lab -f docker/docker-compose.yml down

start-llm: stop-llm
    docker-compose --profile llm -p llm-lab -f docker/docker-compose.yml up -d


