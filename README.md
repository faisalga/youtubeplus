# YouTubePlus

A feature-rich, sideloadable YouTube tweak for iOS. Fork of [YTLitePlus](https://github.com/YTLitePlus/YTLitePlus), modernized and actively maintained.

YouTubePlus bundles multiple jailbreak tweaks into a single injectable package that works with [AltStore](https://altstore.io/), [TrollStore](https://github.com/opa334/TrollStore), or any sideloading tool. No jailbreak required.

## Install

### AltStore Source (Recommended)

Add YouTubePlus as an AltStore source to get automatic update notifications:

1. Install [AltStore](https://altstore.io/) on your device
2. Tap this link on your iOS device:

   **[Add YouTubePlus Source to AltStore](altstore://source?url=https://raw.githubusercontent.com/faisalga/YouTubePlus/main/altstore-source.json)**

3. In AltStore, go to **Browse → YouTubePlus** and tap **Install**
4. Trust the certificate in **Settings → General → VPN & Device Management**

AltStore will notify you when new versions are available.

### AltStore Direct Install

If you prefer a one-time install without adding the source:

**[Install via AltStore](altstore://install?url=https://github.com/faisalga/YouTubePlus/releases/download/v21.06.2-5.2b4/YouTubePlus_21.06.2_5.2b4.ipa)**

### TrollStore

1. Download the latest IPA from [GitHub Releases](https://github.com/faisalga/YouTubePlus/releases/latest)
2. Open the IPA in TrollStore
3. Tap **Install** — no certificate management needed

### Manual Sideload

1. Download the latest IPA from [GitHub Releases](https://github.com/faisalga/YouTubePlus/releases/latest)
2. Sideload using your preferred tool:
   - [AltStore](https://altstore.io/) (macOS/Windows)
   - [Sideloadly](https://sideloadly.io/) (macOS/Windows)
   - [AltDeploy](https://github.com/pixelomer/AltDeploy) (macOS)
3. Trust the certificate in **Settings → General → VPN & Device Management**

> **Note:** Free Apple Developer accounts require re-signing every 7 days. AltStore handles this automatically when using the source or direct install methods.

## Features

### Core (via [YTLite](https://github.com/dayanch96/YTLite))
- Ad blocking (video ads, banner ads, native ads)
- Background playback
- Download videos and audio
- Customizable playback speed
- Auto-fullscreen and auto-PiP options
- Import/export settings

### Bundled Tweaks

| Tweak | What it does |
|-------|-------------|
| [YouPiP](https://github.com/PoomSmart/YouPiP) | Native Picture-in-Picture support |
| [YTUHD](https://github.com/splaser/YTUHD) | Unlock 1440p/2160p/4K quality options |
| [Return YouTube Dislikes](https://github.com/PoomSmart/Return-YouTube-Dislikes) | Show dislike counts on videos |
| [YTABConfig](https://github.com/PoomSmart/YTABConfig) | Configure YouTube A/B feature flags |
| [DontEatMyContent](https://github.com/therealFoxster/DontEatMyContent) | Prevent notch/Dynamic Island from clipping video |
| [YTVideoOverlay](https://github.com/PoomSmart/YTVideoOverlay) | Framework for video player overlay buttons |
| [YouTimeStamp](https://github.com/aricloverALT/YouTimeStamp) | Copy video timestamp to clipboard |
| [YouGroupSettings](https://github.com/PoomSmart/YouGroupSettings) | Group tweak settings in YouTube's settings page |
| [Alderis](https://github.com/hbang/Alderis) | Color picker (used by LowContrastMode) |
| [FLEXing](https://github.com/PoomSmart/FLEXing) | FLEX debugging tool (optional, for developers) |

### YouTubePlus Native Features

**Player Controls:**
- Configurable swipe gestures (volume, brightness, seek) with per-zone mapping
- Tap-to-seek on progress bar
- Seek anywhere (disable speed-by-sliding)
- Fullscreen to the right (force landscape direction)
- Disable pull-to-fullscreen gesture
- Always show remaining time / disable time toggle
- Hide heatwaves, shadow overlays, HUD messages, speed toast
- Hide autoplay mini preview
- Hide comment section preview under player
- Hide collapse button
- Disable fullscreen engagement overlay
- Disable ambient mode (portrait and/or fullscreen independently)

**UI Customization:**
- YTNoModernUI — disable modern/rounded UI elements, dark mode changes, ambient mode
- Theme options (default dark, old dark theme, OLED keyboard)
- LowContrastMode with custom hex color support
- Hide Home tab
- iPad layout on iPhone / iPhone layout on iPad
- Big miniplayer style
- Hide/show share button and save-to-playlist button
- Hide cast button or fix casting reliability
- Custom startup animation toggle
- Local video player button (play local files)
- Playback in feeds control

**App Settings Control:**
- Hide individual settings sections (Account, Autoplay, Notifications, Privacy, etc.)

**Other:**
- Version spoofer — report a different app version to YouTube's servers
- Skip content warnings automatically
- Miniplayer for all videos
- Block upgrade dialogs
- Disable "Are you still watching?" prompt
- Export/import all tweak settings (clipboard or file)
- Keychain and app group fixes for sideloaded installs
- Google Sign-in fix for modified bundle IDs

## Build from Source

### Prerequisites

- macOS with Xcode Command Line Tools
- [Theos](https://theos.dev/docs/installation) with [theos-jailed](https://github.com/qnblackcat/theos-jailed)
- A decrypted YouTube IPA (obtain legally from your own device)
- iOS 18.6 SDK (or modify `Makefile` for your SDK version)

### Build Steps

```bash
# Clone with submodules
git clone --recursive https://github.com/faisalga/YouTubePlus.git
cd YouTubePlus

# Place your decrypted YouTube.ipa in the project root, then:
./build.sh

# Or manually:
make package THEOS_PACKAGE_SCHEME=rootless IPA=./YouTube.ipa FINALPACKAGE=1
```

The built IPA will be in the `packages/` directory.

### GitHub Actions

This repo includes a GitHub Actions workflow for automated builds. Go to **Actions → Build and Release YouTubePlus** and run the workflow manually. You'll need to provide a URL to a decrypted YouTube IPA.

## Requirements

- iOS/iPadOS 14.0 or later
- YouTube IPA (decrypted)

## Credits

- [YTLitePlus](https://github.com/YTLitePlus/YTLitePlus) by [@arichornlover](https://github.com/arichornlover) — original project this fork is based on
- [YTLite](https://github.com/dayanch96/YTLite) by [@dayanch96](https://github.com/dayanch96) — core ad-blocking and enhancement tweak
- [@bhackel](https://github.com/bhackel) — player gestures, tap-to-seek, many UI features
- [@PoomSmart](https://github.com/PoomSmart) — YouPiP, Return YouTube Dislikes, YTABConfig, and more
- [@level3tjg](https://github.com/level3tjg) — YTMiniplayerEnabler, hide heatwaves
- [@therealFoxster](https://github.com/therealFoxster) — DontEatMyContent
- [@qnblackcat](https://github.com/qnblackcat) — HUD messages hook, theos-jailed
- [@BandarHL](https://github.com/BandarHL) — keychain fix
- [@splaser](https://github.com/splaser) — YTUHD
- [LillieH001](https://github.com/LillieH001) — iPad/iPhone layout switching (YouTube Reborn)

## License

Licensed under the [GNU General Public License v3.0](LICENSE).
