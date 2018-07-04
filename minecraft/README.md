# Minecraft

Minecraft dedicated server

## Maintainers

* Graham Weldon <graham@grahamweldon.com>

## Type of Package

Service package

## Usage

Launch the minecraft service with habitat:

```
hab pkg install games/minecraft
hab svc load games/minecraft
```

## Topologies

Supports `standalone` topology only.

## Update Strategies

Recommended update strategy is `at-once`.

## Notes

Note that by running this, you are agreeing to the [Minecraft End User License Agreement][eula]. The plan is configured to agree to this by default so that it will launch on first deployment, and not require a config update for basic usage.

[eula]: https://account.mojang.com/documents/minecraft_eula
