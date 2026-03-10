# homebrew-tap

Homebrew tap for [psw-cli](https://github.com/SammyLin/psw-cli) — a secure CLI password manager with age encryption and macOS Keychain integration.

## Install

```bash
brew tap SammyLin/tap
brew install psw-cli
```

## Usage

```bash
# Initialize master password (stored in macOS Keychain)
psw-cli init

# Create a vault (30-day expiry)
psw-cli vault create my-vault --expire 30d

# Store a secret
psw-cli set api-key "my-secret-value" --vault my-vault

# Retrieve a secret
psw-cli get api-key --vault my-vault
```

## Update

```bash
brew upgrade psw-cli
```
