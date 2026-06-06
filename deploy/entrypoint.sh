#!/bin/bash
set -e

# MCP Server em SSE mode na porta 8765 (background)
python -m backend.mcp_server --sse --port 8765 &

# API principal (foreground)
exec uvicorn backend.main:app --host 0.0.0.0 --port 3900
