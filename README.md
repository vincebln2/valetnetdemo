# valetnetdemo

Minimal config files to run strfry in a fly.io docker container

### How to use

- Have the [fly.io CLI](https://fly.io/docs/flyctl/) installed
- Have a fly.io account signed into your fly.io CLI
- Create a fly.io app using the name you have set in fly.toml and set persistent storage for the relay database

```bash
flyctl apps create valetnetdemo
flyctl volumes create strfry_data --region ord --size 10

```

- Deploy

```bash
fly deploy
```

### How to test

- Easiest way to test your node is with websocat

```bash
websocat wss://valetnetdemo.fly.dev 
["REQ", "test", {}]
```

You can also check the status of your node with

```bash
flyctl status
flyctl logs
```
