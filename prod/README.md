# Production Docker image

Scripts in this directory should be run from the project root directory, i.e. the parent of this one. 


# Building

```shell script
./prod/build.sh
```

The `build.sh` produces an image tagged as `kyuupichan/electrumx:latest`.


# Running

## Configuration 

All configs are moved to environment variables:

- `COIN` - the coin (default: BitcoinSV)
- `DAEMON_URL` - the daemon url in format: `http://username:password@hostname:port/`


## Ports

The container exposes JSONRPC at port `50001`.


## Mounts

If you wish to preserve the indexed blocks, mount a volume to `/db`. 
