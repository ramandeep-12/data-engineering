FROM python:3.13.15
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/
COPY pyproject.toml .python-version uv.lock ./
RUN uv sync --locked
WORKDIR /code

COPY pipeline.py .
ENTRYPOINT ["uv", "run", "python", "pipeline.py"]