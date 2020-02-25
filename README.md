# gromlin-website

## Built with [Factor](https://factor.dev)

 Built with [Factor](https://factor.dev)

## Setup (Docker)

Make sure you have installed [Docker](https://docs.docker.com/).

```bash
# Install Project
make install

# Start with docker
make start

# Append console logs to the active terminal
make attach_logs
```

## Setup (Manual)

```bash
# Install dependencies
npm install
# or
yarn install

# Run development server
npx factor dev

# Build production app
npx factor build

# Serve production app
npx factor serve

# build for production and then launch server
npx factor start
```
