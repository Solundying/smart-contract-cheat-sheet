
# Anchor Cheat Sheet

# Program Structure
```rust
use anchor_lang::prelude::*;

#[program]
mod hello_anchor {
    pub fn initialize(ctx: Context<Initialize>, data: String) -> ProgramResult {
        let account = &mut ctx.accounts.base_account;
        account.data = data;
        Ok(())
    }
}

#[derive(Accounts)]
pub struct Initialize<'info> {
    #[account(init, payer = user, space = 8 + 64)]
    pub base_account: Account<'info, BaseAccount>,
    #[account(mut)]
    pub user: Signer<'info>,
    pub system_program: Program<'info, System>,
}

#[account]
pub struct BaseAccount {
    pub data: String,
}
```

# Build and Deploy
``` bash 
anchor build
anchor deploy
```