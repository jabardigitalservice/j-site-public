## J-Site Public

This is the main codebase for J-Site Public application.

## Docs

- [J-Site Public](#j-site-public)
- [Docs](#docs)
- [Codebase](#codebase)
  - [Technologies](#technologies)
  - [Folder Structure](#folder-structure)
- [First time setup](#first-time-setup)
- [Running locally](#running-locally)

## Codebase

### Technologies

Here is a list of all the core technologies this project use:

- Node Version: v18.18.0 LTS
- [Nuxt 3](https://nuxt.com/): Vue.js framework for server-side rendering
- [pnpm](https://pnpm.io/): Package manager
- [Tailwind CSS](https://tailwindcss.com/): CSS framework for styling

### Folder Structure

```bash
j-site/
├── assets        # Uncompiled assets such as Stylus or Sass files, images, or fonts
├── components    # Vue.js components
├── layouts       # Custom layout accessible with the layout property in the page component
├── pages         # Application views and routes
├── plugins       # Add Vue plugins and inject functions or constants
├── static        # Static files
└── utils         # Reusable utility codes or functions
```

## First time setup

The first step to running J-Site locally is downloading the code by cloning the repository:

```bash
git clone https://github.com/jabardigitalservice/j-site-builder.git

#or using SSH
git clone git@github.com:jabardigitalservice/j-site-builder.git
```

open `j-site-builder` directory

```bash
cd j-site-builder
```

create env file

```bash
cp .env.example .env
```

install the dependencies

```bash
pnpm install
```

## Running locally

Compiles and hot-reloads for development

```bash
pnpm run dev
```
