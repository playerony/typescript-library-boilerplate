# Typescript Library Boilerplate

![Lint](https://github.com/playerony/typescript-library-boilerplate/workflows/lint/badge.svg)
![Test](https://github.com/playerony/typescript-library-boilerplate/workflows/test/badge.svg)
![Build](https://github.com/playerony/typescript-library-boilerplate/workflows/build/badge.svg)
![Typecheck](https://github.com/playerony/typescript-library-boilerplate/workflows/typecheck/badge.svg)
![Commitlint](https://github.com/playerony/typescript-library-boilerplate/workflows/commitlint/badge.svg)

## 📖 Table of Contents

- [✨ Getting started](#user-content--getting-started)
  - [Prerequisites](#prerequisites)
  - [Bootstrap](#bootstrap)
- [📜 Scripts](#user-content--scripts)
  - [Development](#development)
  - [Build](#build)
  - [Test](#test)
  - [Analyze](#analyze)

## ✨ Getting started

### Prerequisites

You need to have installed the following software:

- [nodejs](https://nodejs.org/en/) (>=14.15.0)
- [npm](https://npmjs.com/) (>= 6.14.0)

### Bootstrap

```bash
  git clone --depth 1 https://github.com/playerony/typescript-library-boilerplate my-lib
  cd my-lib
  yarn install
```

## 📜 Scripts:

### Development

- `dev` - Run application in development mode.

### Build

- `build` - Build for production a ready application.
- `build:docs` - Build api-documentor markdown documentation.

### Test

- `test` - Run tests.
- `test:ci` - Run tests in CI mode.
- `test:watch` - Run tests in watch mode.
- `test:coverage` - Run tests in coverage mode.
- `test:update-snapshot`: Run tests and update all snapshots.

### Analyze

- `lint` - Run `eslint`. Output any errors 🚨.
- `lint:fix` - Run `eslint` with `--fix`flag . Fix any lint errors 🚨.
- `typecheck` - Run `tsc`. Output any errors 🚨.
- `format` - Run `prettier` to format all the files.
- `commitlint` - Run `commitlint`. Output any errors 🚨.
- `check` - Run `lint`, `commitlint`, `build`, `typecheck` and `test`. Output any errors 🚨.
