# Typescript Library Boilerplate

![Lint](https://github.com/playerony/typescript-library-boilerplate/workflows/lint/badge.svg)
![Test](https://github.com/playerony/typescript-library-boilerplate/workflows/test/badge.svg)
![Build](https://github.com/playerony/typescript-library-boilerplate/workflows/build/badge.svg)
![Prettier](https://github.com/playerony/typescript-library-boilerplate/workflows/prettier/badge.svg)
![Typecheck](https://github.com/playerony/typescript-library-boilerplate/workflows/typecheck/badge.svg)
![Commitlint](https://github.com/playerony/typescript-library-boilerplate/workflows/commitlint/badge.svg)

Minimal boilerplate for Typescript libraries.

## 📖 Table of Contents

- [✨ Getting started](#user-content--getting-started)
  - [Prerequisites](#prerequisites)
  - [Bootstrap](#bootstrap)
- [📜 Scripts](#user-content--scripts)
  - [Development](#development)
  - [Build](#build)
  - [Shell](#shell)
  - [Test](#test)
  - [Analyze](#analyze)
- [📚 Documentation](#user-content--documentation)
  - [Commit Message Guideline](#commit-message-guideline)

## ✨ Getting started

### Prerequisites

You need to have installed the following software:

- [nodejs](https://nodejs.org/en/) (>=14.15.0)
- [yarn](https://yarnpkg.com/) (>= 1.22.10)

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

### Shell

- `remove-node-modules` - Remove node_modules directory with rimraf command.
- `reinstall-node-modules` - Invokes `remove-node-modules` and `yarn install`.
- `gcb` - (git-create-branch) Create and checkout on the branch with the given name.
- `gpc` - (git-push-changes) Commit and push all files on a current branch with the given commit message.

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
- `commitlint` - Run `commitlint`. Output any errors 🚨.
- `format` - Run `prettier` with `--write` flag. Format all the files.
- `format:check` - Run `prettier` with `--check` flag. Output any format errors 🚨.
- `check` - Run `lint`, `test`, `build`, `typecheck`, `commitlint` and `format:check`. Output any errors 🚨.

## 📚 Documentation

### Commit Message Guideline

- For easier commit type recognition commit messages are prefixed with a proper type
- See available commit types: [https://www.npmjs.com/package/@commitlint/config-conventional](https://www.npmjs.com/package/@commitlint/config-conventional)
