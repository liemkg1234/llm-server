# 🧠 LLM Deployment with BLOOMZ-1b1

This project demonstrates how to deploy the open-source [BLOOMZ-1b1](https://huggingface.co/bigscience/bloomz-1b1) language model using [llama-cpp](https://github.com/ggml-org/llama.cpp). The deployment is containerized with Docker and optimized for running on GPU with quantization.

---

## 🚀 Features

- Load and run BLOOMZ-1b1 locally (on-premises)
- Lightweight REST API for text generation (likely OpenAI Server)
- Token completion with configurable max tokens
- Optionally quantized for lower VRAM usage ([Q_8](https://huggingface.co/tensorblock/bloomz-1b1-GGUF/tree/main))
- Easy to run with Docker

---

## 📊 Model & Benchmark Summary


| Metric                | Value                                      |
|-----------------------|--------------------------------------------|
| **Model**             | `bigscience/bloomz-1b1`                    |
| **Quantization**      | Q8_0 (GGUF)                                |
| **VRAM Usage**        | ~1.4 GB                                    |
| **Prompt Processing** | 25 tokens in 235.35 ms → 106.22 tokens/s   |
| **Generation Speed**  | 10 tokens in 324.63 ms → **30.8 tokens/s** |
| **Hardware Tested**   | GPU (RTX 3060)                             |

---

## 🛠️ Installation & Usage

### 1. Clone this repo

```bash
https://github.com/liemkg1234/llm-server.git
cd llm-server
````

### 2. Download LLM

```bash
just dependency
just download-llm
```

### 3. Run the container

```bash
just start-llm
```

### 4. Test the API

```bash
curl --location 'http://localhost:8000/v1/chat/completions' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer YOUR_API_KEY' \
--data '{
    "model": "/models/bloomz-1b1-Q8_0.gguf",
    "messages": [
        {
            "role": "user",
            "content": "Hello"
        }
    ]
}'
```

---

## 📌 Notes

* You can replace the model with any compatible Hugging Face model (e.g., [Qwen3 1.7B](https://huggingface.co/Qwen/Qwen3-1.7B))

---

## 📫 Contact

liemkg1234@gmail.com
