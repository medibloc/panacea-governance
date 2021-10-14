# Allow IBC client types

For enabling IBC with other Cosmos-based chains, proper client types should be registered to the IBC genesis parameter: `allowed_clients`. Basically the Tendermint light client must be registered since most of Cosmos-based chains are compatible with the Tendermint light client. Also, we would like to register the Solo Machine light client for future use.

## Parameter Changes

```json
[
  {
    "subspace": "ibc",
    "key": "AllowedClients",
    "value": ["06-solomachine", "07-tendermint"]
  }
]
```
