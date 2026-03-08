#import "../YTLitePlus.h"

typedef struct {
    int version;
    NSString *appVersion;
} VersionMapping;

static VersionMapping versionMappings[] = {
    {0, @"20.08.6"}, // Current Supported Version (v20)
    {1, @"19.49.7"}, // Last v19 App Version - Deprecated (forced update)
    {2, @"19.28.1"}, // New 2024 Thin Outline Icons - Deprecated
    {3, @"19.26.5"}, // Restore 2020's Thin Outline Icons - Deprecated
    {4, @"18.49.3"}, // Last v18 App Version - Deprecated
    {5, @"18.35.4"}, // Oldest Supported App Version (v18) - Deprecated
    {6, @"18.34.5"}, // Brings back Library Tab - Deprecated
    {7, @"18.33.3"}, // Removes Playables in Explore - Deprecated
    {8, @"18.18.2"}, // Fixes YTClassicVideoQuality + YTSpeed - Deprecated
    {9, @"18.01.2"}, // First v18 App Version - Deprecated
    {10, @"17.49.6"}, // Last v17 App Version - Deprecated
    {11, @"17.38.10"}, // Fixes LowContrastMode + No Rounded Thumbnails - Deprecated
    {12, @"17.33.2"} // Oldest Supported App Version (v17) - Deprecated
};

static int appVersionSpoofer() {
    return [[NSUserDefaults standardUserDefaults] integerForKey:@"versionSpoofer"];
}

static BOOL isVersionSpooferEnabled() {
    return IS_ENABLED(@"enableVersionSpoofer_enabled");
}

static NSString* getAppVersionForSpoofedVersion(int spoofedVersion) {
    for (int i = 0; i < sizeof(versionMappings) / sizeof(versionMappings[0]); i++) {
        if (versionMappings[i].version == spoofedVersion) {
            return versionMappings[i].appVersion;
        }
    }
    return nil;
}

%hook YTVersionUtils
+ (NSString *)appVersion {
    if (!isVersionSpooferEnabled()) {
        return %orig;
    }
    int spoofedVersion = appVersionSpoofer();
    NSString *appVersion = getAppVersionForSpoofedVersion(spoofedVersion);
    return appVersion ? appVersion : %orig;
}
%end
