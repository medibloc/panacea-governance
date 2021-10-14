# Allow IBC client types

For enabling IBC with other Cosmos-based chains, proper client types should be registered to the IBC genesis parameter: `allowed_clients`. First of all, the Tendermint light client must be allowed because most of Cosmos-based chains are compatible with the Tendermint light client. Also, we would like to allow the Solo Machine light client for future use. These client types are recommended by Cosmos SDK.

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
