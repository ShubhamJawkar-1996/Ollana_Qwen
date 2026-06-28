FROM ollama/ollama:latest AS builder

RUN nohup ollama serve > /tmp/ollama.log 2>&1 & \
    sleep 10 && \
    ollama pull qwen2.5:3b && \
    echo "✅ qwen2.5:3b pulled successfully"

FROM ollama/ollama:latest

COPY --from=builder /root/.ollama /root/.ollama

EXPOSE 11434

ENV OLLAMA_HOST=0.0.0.0:11434
ENV OLLAMA_MODELS=/root/.ollama/models

CMD ["serve"]
