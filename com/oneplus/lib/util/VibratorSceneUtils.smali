.class public Lcom/oneplus/lib/util/VibratorSceneUtils;
.super Ljava/lang/Object;
.source "VibratorSceneUtils.java"


# static fields
.field public static final VIBRATOR_SCENE_CALENDAR_DATE:I = 0x3

.field public static final VIBRATOR_SCENE_CHARGER:I = 0x15

.field public static final VIBRATOR_SCENE_CLOCK_MINUTE:I = 0x406

.field public static final VIBRATOR_SCENE_CLOCK_TICK:I = 0x2

.field public static final VIBRATOR_SCENE_DASH_CHARGER:I = 0x16

.field public static final VIBRATOR_SCENE_GESTURE_KEY:I = 0x18

.field public static final VIBRATOR_SCENE_INVALID:I = -0x1

.field public static final VIBRATOR_SCENE_LONG_PRESS:I = 0x4

.field public static final VIBRATOR_SCENE_POWER_KEY_ASSIST:I = 0x17

.field public static final VIBRATOR_SCENE_POWER_KEY_MENU:I = 0x14

.field public static final VIBRATOR_SCENE_SWITCH:I = 0x3eb

.field public static final VIBRATOR_SCENE_SWITCH_FOR_CLOCK:I = 0x3ea

.field public static final VIBRATOR_SCENE_VIRTUAL_KEY:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vibratorService"    # Landroid/os/Vibrator;
    .param p2, "vibratorSceneId"    # I

    .line 48
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 49
    .local v1, "INTENSITY":[I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "vibrate_on_touch_intensity"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 50
    .local v2, "intensityIndex":I
    aget v4, v1, v2

    .line 51
    .local v4, "intensity":I
    if-eqz p1, :cond_1

    .line 53
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setVibratorEffect"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 54
    .local v5, "sSetVibratorEffect":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 55
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 56
    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 57
    .local v6, "duration":I
    new-array v0, v0, [J

    int-to-long v8, v4

    aput-wide v8, v0, v3

    const-wide/16 v8, 0x0

    aput-wide v8, v0, v7

    const/4 v3, 0x2

    int-to-long v7, v6

    aput-wide v7, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .local v0, "pattern":[J
    return-object v0

    .line 62
    .end local v0    # "pattern":[J
    .end local v5    # "sSetVibratorEffect":Ljava/lang/reflect/Method;
    .end local v6    # "duration":I
    :cond_0
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :array_0
    .array-data 4
        -0x1
        -0x2
        -0x3
    .end array-data
.end method

.method public static systemVibrateEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static vibrateIfNeeded([JLandroid/os/Vibrator;)V
    .locals 1
    .param p0, "pattern"    # [J
    .param p1, "vibratorService"    # Landroid/os/Vibrator;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 70
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 73
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
