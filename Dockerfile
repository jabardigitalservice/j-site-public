FROM node:18.18.0-alpine3.17 AS base

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

WORKDIR /app
COPY . .

FROM base AS build
RUN --mount=type=cache,id=pnpm,target=/pnpm/store pnpm install --frozen-lockfile
RUN pnpm run build

FROM base
COPY --from=build /app/.output /app/.output
# Add ARGS and ENV here
# ...
ENV HOST 0.0.0.0
ENV PORT 3000

EXPOSE 3000
CMD [ "pnpm", "run", "start" ]
