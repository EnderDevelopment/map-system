# Map System

Enhance your FiveM server with customizable map blips and UI integration.

## Features

- Dynamic map blip creation with customizable properties
- Optional UI integration for enhanced user interaction

## Requirements

- FiveM server
- ESX framework
- MySQL database

## Installation

1. Download the latest release from the [releases page](https://github.com/EnderDevelopment/map-system/releases).
2. Extract the files into your FiveM server's `resources` directory.
3. Import the `database.sql` file into your MySQL database.
4. Add `start map-system` to your server.cfg file.

## Usage

### Commands

| Command | Description |
|---------|-------------|
| /map    | Open the map system UI (if enabled) |

### Permissions

- User: Can use the `/map` command if UI is enabled.

## Configuration

Edit the `config.lua` file to customize the map settings, database table, and UI options.

---

## Generated with EnderDevelopment

This plugin was generated in minutes with [EnderDevelopment](https://enderdevelopment.com) — the AI platform that turns your ideas into working Minecraft plugins, Discord bots and FiveM scripts.

**Want your own?** [Generate this project on EnderDevelopment](https://dash.enderdevelopment.com?utm_source=github&utm_medium=readme&utm_campaign=map-system&utm_content=bottom) — describe it in one sentence and get the full source code.
