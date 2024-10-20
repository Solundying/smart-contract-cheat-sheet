# Solana Setup

## Prerequisites
- Install Rust:
```bash
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

- Install Solana CLI 
``` bash
sh -c "$(curl -sSfL https://release.solana.com/stable/install)"
```
- Install Anchor Framework
``` bash
cargo install --git https://github.com/project-serum/anchor --tag v0.26.0 anchor-cli
``` 

# Create a New Anchor Project
``` bash
anchor init my-anchor-app
cd my-anchor-app
anchor build
```