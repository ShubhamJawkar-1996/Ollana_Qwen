# Ollana_Qwen

Docker image with [Ollama](https://ollama.com) + `qwen2.5:3b` model baked in.

## Pull and Run

```bash
docker pull <your-dockerhub-username>/ollana-qwen:latest
docker run -p 11434:11434 <your-dockerhub-username>/ollana-qwen:latest
```

## Test the model

```bash
curl http://localhost:11434/api/generate -d '{
  "model": "qwen2.5:3b",
  "prompt": "Hello! Who are you?",
  "stream": false
}'
```

## API
Ollama API is available at `http://localhost:11434`
