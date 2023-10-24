FROM node:18.18.2-alpine3.18 AS base

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

WORKDIR /app
COPY package*.json ./
COPY pnpm-lock.yaml ./

FROM base AS prod-deps
RUN --mount=type=cache,id=pnpm,target=/pnpm/store pnpm install --prod --frozen-lockfile

FROM base AS build
RUN --mount=type=cache,id=pnpm,target=/pnpm/store pnpm install --frozen-lockfile
COPY . .

# Add ENV and ARGS here

ENV NODE_ENV=production
ENV HOST 0.0.0.0
ENV PORT 3000

RUN pnpm run build

EXPOSE 3000

CMD [ "pnpm", "start" ]
