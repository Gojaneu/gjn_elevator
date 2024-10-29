# Elevator Script by GOJAN

## Overview
This project is a configurable and fully localized elevator system for a FiveM server. The script allows players to use elevators at various locations, supporting both `ox_target` and `lunar_bridge` interactions. Localization is included for multiple languages, making it easy to adapt the script to different audiences.

## Features
- **Multiple Interaction Support**: The elevator script supports interactions via `ox_target` or `lunar_bridge`, providing flexibility based on your server's needs.
- **Job and Grade Requirements**: Elevators can be restricted to specific jobs and grades, allowing access control for different locations.
- **Localization**: The script includes localization for both Czech (`cs.json`) and English (`en.json`), with easy extension for additional languages.
- **Configurable Elevators**: Each elevator location, floor, and associated properties (like teleport coordinates, size, and rotation) can be fully configured through the provided configuration file.

## Installation
1. **Clone or Download** the repository.
2. **Add the Script** to your FiveM resource folder.
3. **Add to Server Configuration**:
   - Add `ensure gjn_elevator` to your server configuration to ensure the elevator script is loaded.
4. **Dependencies**:
   - Ensure you have `ox_lib` and either `ox_target` or `lunar_bridge` installed, depending on your chosen interaction method.

## Configuration
The configuration for the elevator system can be found in the `config.lua` file. The key parameters are:

- **Debug Mode**: Set `Config.Debug` to `true` or `false` to enable or disable debug information.
- **Interactions**: Set `Config.Interactions` to either `ox_target` or `lunar_bridge`.
- **Elevator Locations**: Configure multiple elevators under `Config.Elevators`:
  - `label`: Name of the elevator.
  - `locations`: Define each floor, including properties like `coords`, `size`, `rotation`, and `teleportCoords`.
  - `jobRequired`: Specify the jobs allowed to use this elevator (e.g., `{'police', 'ambulance'}`).
  - `minGrade`: Set the minimum job grade required for access.

## Localization
Localization files are provided for Czech (`cs.json`) and English (`en.json`). To add more languages, simply create a new `.json` file with the appropriate keys and values, and register the locale using `ox_lib`.

### Example Localization Keys
- **progress_in_elevator**: The message displayed when using the elevator (e.g., "You are riding the elevator...").
- **elevator_title**: The title for notifications (e.g., "Elevator").
- **elevator_arrived**: The message displayed upon arrival at a floor (e.g., "You have arrived at: %s").

## Usage
- **Elevator Interaction**: Players can interact with an elevator by standing within the designated zone and pressing the interaction button.
- **Menu Navigation**: After interacting, players will see a context menu with available floors to select.
- **Notifications**: Players receive notifications when successfully arriving at a floor or when access is denied.

## Customization
- **Add New Floors or Elevators**: To add new elevators or floors, update the `Config.Elevators` table in `config.lua` with new entries. Each elevator can have multiple floors with unique properties.
- **Job Restrictions**: Customize access by adding or modifying the `jobRequired` and `minGrade` fields for each elevator.

## Requirements
- **FiveM Server** running the ESX framework.
- **ox_lib** for localization and UI functionalities.
- **ox_target** or **lunar_bridge** for player interactions.

## License
This script is open-source and can be modified as needed. Please credit the original author if redistributed.

## Support
If you have any questions or need help configuring the script, feel free to reach out to the community or consult the official documentation for `ox_lib`, `ox_target`, and `lunar_bridge`.

- **Discord**: [Join our Discord](https://discord.gg/s2kun89CV7)
- **Cfx Forum**: [Visit our Cfx Forum Thread](https://forum.cfx.re/u/gjn_scripts)

