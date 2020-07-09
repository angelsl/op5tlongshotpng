.class public Lcom/oneplus/lib/app/appcompat/TwilightManager;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;
    }
.end annotation


# static fields
.field private static final SUNRISE:I = 0x6

.field private static final SUNSET:I = 0x16

.field private static final TAG:Ljava/lang/String; = "TwilightManager"

.field private static sInstance:Lcom/oneplus/lib/app/appcompat/TwilightManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mTwilightState:Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "locationManager"    # Landroid/location/LocationManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/VisibleForTesting;
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;

    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TwilightManager;->mTwilightState:Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;

    .line 47
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/TwilightManager;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    .line 49
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/oneplus/lib/app/appcompat/TwilightManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    sget-object v0, Lcom/oneplus/lib/app/appcompat/TwilightManager;->sInstance:Lcom/oneplus/lib/app/appcompat/TwilightManager;

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 29
    new-instance v0, Lcom/oneplus/lib/app/appcompat/TwilightManager;

    .line 30
    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/TwilightManager;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/TwilightManager;->sInstance:Lcom/oneplus/lib/app/appcompat/TwilightManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/oneplus/lib/app/appcompat/TwilightManager;->sInstance:Lcom/oneplus/lib/app/appcompat/TwilightManager;

    return-object v0
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .locals 7

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "coarseLoc":Landroid/location/Location;
    const/4 v1, 0x0

    .line 86
    .local v1, "fineLoc":Landroid/location/Location;
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/TwilightManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Lcom/oneplus/support/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 88
    .local v2, "permission":I
    if-nez v2, :cond_0

    .line 89
    const-string v3, "network"

    invoke-direct {p0, v3}, Lcom/oneplus/lib/app/appcompat/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/TwilightManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v4}, Lcom/oneplus/support/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 94
    if-nez v2, :cond_1

    .line 95
    const-string v3, "gps"

    invoke-direct {p0, v3}, Lcom/oneplus/lib/app/appcompat/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 98
    :cond_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    move-object v3, v1

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    return-object v3

    .line 103
    :cond_3
    if-eqz v1, :cond_4

    move-object v3, v1

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    return-object v3
.end method

.method private getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method private isStateValid()Z
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TwilightManager;->mTwilightState:Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static setInstance(Lcom/oneplus/lib/app/appcompat/TwilightManager;)V
    .locals 0
    .param p0, "twilightManager"    # Lcom/oneplus/lib/app/appcompat/TwilightManager;
    .annotation build Lcom/oneplus/support/annotation/VisibleForTesting;
    .end annotation

    .line 37
    sput-object p0, Lcom/oneplus/lib/app/appcompat/TwilightManager;->sInstance:Lcom/oneplus/lib/app/appcompat/TwilightManager;

    .line 38
    return-void
.end method

.method private updateState(Landroid/location/Location;)V
    .locals 22
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/lib/app/appcompat/TwilightManager;->mTwilightState:Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;

    .line 126
    .local v1, "state":Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 127
    .local v9, "now":J
    invoke-static {}, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->getInstance()Lcom/oneplus/lib/app/appcompat/TwilightCalculator;

    move-result-object v11

    .line 130
    .local v11, "calculator":Lcom/oneplus/lib/app/appcompat/TwilightCalculator;
    const-wide/32 v12, 0x5265c00

    sub-long v3, v9, v12

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 130
    move-object v2, v11

    invoke-virtual/range {v2 .. v8}, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->calculateTwilight(JDD)V

    .line 132
    iget-wide v14, v11, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->sunset:J

    .line 135
    .local v14, "yesterdaySunset":J
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    move-wide v3, v9

    invoke-virtual/range {v2 .. v8}, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->calculateTwilight(JDD)V

    .line 136
    iget v2, v11, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v7, v3

    .line 137
    .local v7, "isNight":Z
    iget-wide v5, v11, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->sunrise:J

    .line 138
    .local v5, "todaySunrise":J
    iget-wide v3, v11, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->sunset:J

    .line 141
    .local v3, "todaySunset":J
    add-long/2addr v12, v9

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    .line 141
    move-object v2, v11

    move-wide/from16 v20, v14

    move-wide v14, v3

    .end local v3    # "todaySunset":J
    .local v14, "todaySunset":J
    .local v20, "yesterdaySunset":J
    move-wide v3, v12

    move-wide v12, v5

    .end local v5    # "todaySunrise":J
    .local v12, "todaySunrise":J
    move-wide/from16 v5, v16

    move v0, v7

    .end local v7    # "isNight":Z
    .local v0, "isNight":Z
    move-wide/from16 v7, v18

    invoke-virtual/range {v2 .. v8}, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->calculateTwilight(JDD)V

    .line 143
    iget-wide v2, v11, Lcom/oneplus/lib/app/appcompat/TwilightCalculator;->sunrise:J

    .line 146
    .local v2, "tomorrowSunrise":J
    const-wide/16 v4, 0x0

    .line 147
    .local v4, "nextUpdate":J
    const-wide/16 v6, -0x1

    cmp-long v8, v12, v6

    if-eqz v8, :cond_4

    cmp-long v6, v14, v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 151
    :cond_1
    cmp-long v6, v9, v14

    if-lez v6, :cond_2

    .line 152
    add-long/2addr v4, v2

    goto :goto_1

    .line 153
    :cond_2
    cmp-long v6, v9, v12

    if-lez v6, :cond_3

    .line 154
    add-long/2addr v4, v14

    goto :goto_1

    .line 156
    :cond_3
    add-long/2addr v4, v12

    .line 159
    :goto_1
    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    goto :goto_3

    .line 149
    :cond_4
    :goto_2
    const-wide/32 v6, 0x2932e00

    add-long v4, v9, v6

    .line 163
    :goto_3
    iput-boolean v0, v1, Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;->isNight:Z

    .line 164
    move-wide/from16 v6, v20

    .end local v20    # "yesterdaySunset":J
    .local v6, "yesterdaySunset":J
    iput-wide v6, v1, Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;->yesterdaySunset:J

    .line 165
    iput-wide v12, v1, Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;->todaySunrise:J

    .line 166
    iput-wide v14, v1, Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;->todaySunset:J

    .line 167
    iput-wide v2, v1, Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;->tomorrowSunrise:J

    .line 168
    iput-wide v4, v1, Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;->nextUpdate:J

    .line 169
    return-void
.end method


# virtual methods
.method isNight()Z
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TwilightManager;->mTwilightState:Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;

    .line 59
    .local v0, "state":Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/TwilightManager;->isStateValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-boolean v1, v0, Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;->isNight:Z

    return v1

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/TwilightManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    .line 66
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_1

    .line 67
    invoke-direct {p0, v1}, Lcom/oneplus/lib/app/appcompat/TwilightManager;->updateState(Landroid/location/Location;)V

    .line 68
    iget-boolean v2, v0, Lcom/oneplus/lib/app/appcompat/TwilightManager$TwilightState;->isNight:Z

    return v2

    .line 71
    :cond_1
    const-string v2, "TwilightManager"

    const-string v3, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 78
    .local v2, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 79
    .local v3, "hour":I
    const/4 v4, 0x6

    if-lt v3, v4, :cond_3

    const/16 v4, 0x16

    if-lt v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4
.end method
