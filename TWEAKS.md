# Tweak Audit — YouTubePlus

Full inventory of all bundled tweaks, their status, and notes.

## External Tweaks (Tweaks/ submodules)

| Tweak | Source | Status | Notes |
|-------|--------|--------|-------|
| **YTLite** | [dayanch96/YTLite](https://github.com/dayanch96/YTLite) | ✅ Active | Core tweak — ad blocking, downloads, background playback. Downloaded as .deb at build time from latest release. |
| **YouPiP** | [PoomSmart/YouPiP](https://github.com/PoomSmart/YouPiP) | ✅ Active | Picture-in-Picture. Enabled by default on first run. |
| **YTUHD** | [splaser/YTUHD](https://github.com/splaser/YTUHD) | ✅ Active | Unlocks 1440p/2160p/4K video quality. |
| **Return-YouTube-Dislikes** | [PoomSmart/Return-YouTube-Dislikes](https://github.com/PoomSmart/Return-YouTube-Dislikes) | ✅ Active | Shows dislike counts. Enabled by default. |
| **YTABConfig** | [PoomSmart/YTABConfig](https://github.com/PoomSmart/YTABConfig) | ✅ Active | Toggle YouTube A/B experiment flags. |
| **DontEatMyContent** | [therealFoxster/DontEatMyContent](https://github.com/therealFoxster/DontEatMyContent) | ✅ Active | Prevents notch/Dynamic Island from clipping video. |
| **YTVideoOverlay** | [PoomSmart/YTVideoOverlay](https://github.com/PoomSmart/YTVideoOverlay) | ✅ Active | Framework for overlay buttons (used by YouTimeStamp). |
| **YouTimeStamp** | [aricloverALT/YouTimeStamp](https://github.com/aricloverALT/YouTimeStamp) | ✅ Active | Copy current video timestamp. |
| **YouGroupSettings** | [PoomSmart/YouGroupSettings](https://github.com/PoomSmart/YouGroupSettings) | ✅ Active | Groups tweak settings into YouTube's settings page. |
| **Alderis** | [hbang/Alderis](https://github.com/hbang/Alderis) | ✅ Active | Color picker framework, used by LowContrastMode hex color feature. |
| **FLEXing** | [PoomSmart/FLEXing](https://github.com/PoomSmart/FLEXing) | ⚠️ Dev-only | FLEX runtime exploration tool. Useful for development, unnecessary for end users. |
| **PSHeader** | [PoomSmart/PSHeader](https://github.com/PoomSmart/PSHeader) | ✅ Active | Shared header files for PoomSmart tweaks. Build dependency. |
| **YouTubeHeader** | [PoomSmart/YouTubeHeader](https://github.com/PoomSmart/YouTubeHeader) | ✅ Active | YouTube class headers. Build dependency. |
| **YTHeaders** | [therealFoxster/YTHeaders](https://github.com/therealFoxster/YTHeaders) | ⚠️ Possibly redundant | Additional YouTube headers. May overlap with YouTubeHeader. Needs investigation. |
| **protobuf** | [protocolbuffers/protobuf](https://github.com/protocolbuffers/protobuf) | ⚠️ Heavy | Full protobuf repo as submodule. Only needed for header files. Consider using a lighter dependency. |

## Internal Features (YTLitePlus.xm + Source/)

### Player Controls
| Feature | Toggle Key | Status | Notes |
|---------|-----------|--------|-------|
| Player Gestures (volume/brightness/seek) | `playerGestures_enabled` | ✅ Active | Well-implemented with zone mapping, deadzone, sensitivity. @bhackel |
| Tap to Seek | `YTTapToSeek_enabled` | ✅ Active | Tap on progress bar to jump. @bhackel |
| Seek Anywhere | `seekAnywhere_enabled` | ✅ Active | Disables speed-by-sliding. |
| Fullscreen to the Right | `fullscreenToTheRight_enabled` | ✅ Active | Forces landscape right. @arichornlover & @bhackel |
| Disable Pull to Fullscreen | `disablePullToFull_enabled` | ✅ Active | @bhackel |
| Always Show Remaining Time | `alwaysShowRemainingTime_enabled` | ✅ Active | @bhackel |
| Disable Toggle Time Remaining | `disableRemainingTime_enabled` | ✅ Active | @bhackel |
| Disable Ambient Mode (Portrait) | `disableAmbientModePortrait_enabled` | ✅ Active | @bhackel |
| Disable Ambient Mode (Fullscreen) | `disableAmbientModeFullscreen_enabled` | ✅ Active | @bhackel |
| Hide Heatwaves | `hideHeatwaves_enabled` | ✅ Active | @level3tjg |
| Hide Shadow Overlay Buttons | `hideVideoPlayerShadowOverlayButtons_enabled` | ✅ Active | |
| Hide HUD Messages | `hideHUD_enabled` | ✅ Active | @qnblackcat |
| Hide Speed Toast | `hideSpeedToast_enabled` | ✅ Active | @bhackel |
| Hide Autoplay Mini Preview | `hideAutoplayMiniPreview_enabled` | ✅ Active | @bhackel |
| Hide Comment Preview Section | `hidePreviewCommentSection_enabled` | ✅ Active | @arichornlover |
| Hide Collapse Button | `disableCollapseButton_enabled` | ✅ Active | @arichornlover |
| Disable Engagement Overlay | `disableEngagementOverlay_enabled` | ✅ Active | @bhackel |
| Enable Share Button | `enableShareButton_enabled` | ✅ Active | |
| Enable Save to Playlist Button | `enableSaveToButton_enabled` | ✅ Active | |
| Hide Right Panel | `hideRightPanel_enabled` | ✅ Active | |
| Miniplayer Enabler | `ytMiniPlayer_enabled` | ✅ Active | |
| Big Miniplayer | `bigYTMiniPlayer_enabled` | ✅ Active | Galactic-Dev |

### UI Customization
| Feature | Toggle Key | Status | Notes |
|---------|-----------|--------|-------|
| YTNoModernUI | `ytNoModernUI_enabled` | ⚠️ Partially broken | Version hook removed (was causing forced update). UI hooks still work but some may rely on old server-side flags that v20+ no longer serves. |
| LowContrastMode | `lowContrastMode_enabled` | ⚠️ Version-dependent | Originally designed for v17.33.2–v17.38.10. LOWCONTRASTMODE_CUTOFF_VERSION updated to v20.08.6 but actual effectiveness on v20+ needs testing. |
| Theme Options | `appTheme` | ✅ Active | Default dark / old dark theme. |
| OLED Keyboard | `oledKeyBoard_enabled` | ✅ Active | |
| iPad Layout | `iPadLayout_enabled` | ✅ Active | From YouTube Reborn |
| iPhone Layout | `iPhoneLayout_enabled` | ✅ Active | From YouTube Reborn |
| Hide Home Tab | `hideHomeTab_enabled` | ✅ Active | @bhackel |
| Startup Animation | `ytStartupAnimation_enabled` | ✅ Active | |
| Video Player Button | `videoPlayerButton_enabled` | ✅ Active | Opens local video files. Still references YTLitePlus icon asset. |
| New Settings UI | `newSettingsUI_enabled` | ✅ Active | Cairo settings style. Set on first run. |

### Fixes & Compatibility
| Feature | Status | Notes |
|---------|--------|-------|
| Keychain Fix | ✅ Active | Required for sideloaded installs |
| Google Sign-in Fix | ⚠️ Disabled | Commented out with `TEMP-DISABLED`. Was for bundle ID mismatch. |
| App Group Directory Fix | ✅ Active | Redirects to Documents for sideloaded apps |
| Fix Casting | ✅ Active | `fixCasting_enabled`, enabled by default |
| Block Upgrade Dialog | ✅ Active | Hooks YTGlobalConfig to block update prompts |
| Skip Content Warning | ✅ Active | @PoomSmart |
| Disable "Are You Still Watching" | ✅ Active | |
| SSOKeychainHelper/Core | ✅ Active | Login fix for YouTube 17.33.2+ and 18.13.2+ |
| A/B Flags | ✅ Active | Various YTColdConfig overrides |
| Cast Confirm | `castConfirm_enabled` | ❓ Unclear | Toggle exists in settings but no implementation found in .xm. May be handled by YTLite. |

### Settings Management
| Feature | Status | Notes |
|---------|--------|-------|
| Copy/Paste Settings | ✅ Active | Clipboard-based |
| Export/Import Settings | ✅ Active | File-based alternative |
| Hide Settings Sections | ✅ Active | 9 individual section toggles |

### Version Spoofing
| Feature | Status | Notes |
|---------|--------|-------|
| VersionSpooferLite | ✅ Fixed | Default changed from v19.49.7 to v20.08.6. Fixes forced update screen. |

## Dead Code / Issues Found

1. **Google Sign-in fix** — Commented out (`TEMP-DISABLED`). The `isSelf()` function and `NSBundle` hooks are wrapped in `/* */`. Should either be restored and tested or fully removed.

2. **App Icon Picker** — Commented out in Settings.xm (`AppIconOptionsController`). Import is also commented out. Dead code.

3. **Video Player Button icon** — References `YTLitePlusColored-128.png` from the bundle. Should be renamed to match YouTubePlus branding, or the image itself should be updated.

4. **LOWCONTRASTMODE_CUTOFF_VERSION** — Updated to `20.08.6` but the actual LowContrastMode feature was designed for v17.x UI elements. It likely does nothing meaningful on v20+ YouTube. Needs testing; consider removing or noting it as legacy.

5. **YTNoModernUI** — The version hook was removed (good), but many of the `YTColdConfig` flag overrides may no longer have any effect on v20+ YouTube since the flags they disable may have been removed or replaced. Needs runtime testing.

6. **Duplicate YTHeaders** — Both `Tweaks/YouTubeHeader` (PoomSmart) and `Tweaks/YTHeaders` (therealFoxster) exist. Check if both are needed or if one can be removed.

7. **protobuf submodule** — Full protobuf repository is included as a submodule. This is heavyweight. Only the header files are likely needed. Consider replacing with a headers-only approach.

8. **Settings.xm `appVersionSpoofer()`** — There's a duplicate `appVersionSpoofer()` function defined in both Settings.xm and VersionSpooferLite.xm. Both read from the same NSUserDefaults key so they're functionally identical, but it's redundant.

9. **`YTLPDidPerformFirstRunSetup`** — First-run defaults still reference the old `YTLPDidPerformFirstRunSetup` key name. Not breaking, but aesthetically outdated.

10. **Build script** — `build.sh` doesn't pass `YTLITE_VERSION` to make, unlike the CI workflow. Local builds may behave differently.
