FROM oven/bun:latest
WORKDIR /app/folio
COPY package.json ./
COPY bun.lockb ./
RUN bun install
COPY . .
ENV NEXT_TELEMETRY_DISABLED 1
RUN bun --bun next build
CMD bun run start