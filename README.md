
## New Voting Escrow Contract

  

**This is New Version Of Voting Escrow Contract Fixed old version.**


> Because old version of Voting Escrow Contract have a bug with ``deposit_for`` external function which is connected with approval issue, therefore i fixed it a create a new version of Voting Escrow contract.


## Usage

  

### Build

  

```shell

$  forge  build

```

  

### Clean

  

```shell

$  forge  clean

```

  

### Test

  

```shell

$  forge  test

```

  

### Format

  

```shell

$  forge  fmt

```

  

### Gas Snapshots

  

```shell

$  forge  snapshot

```

  

### Anvil

  

```shell

$  anvil

```

  

### Deploy

  

```shell

$  forge  script  script/NewVotingEscrow.s.sol:NewVotingEscrowScript  --rpc-url <your_rpc_url> --private-key <your_private_key>

```

  

### Cast

  

```shell

$  cast <subcommand>

```

  

### Help

  

```shell

$  forge  --help

$  anvil  --help

$  cast  --help

```


> PLEASE NOTE!!! ALTHOUGH THE BUG HAS BEEN FIXED, IT IS POSSIBLE THAT OTHER BUGS STILL EXIST.  
