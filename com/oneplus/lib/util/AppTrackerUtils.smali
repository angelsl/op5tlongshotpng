.class public Lcom/oneplus/lib/util/AppTrackerUtils;
.super Ljava/lang/Object;
.source "AppTrackerUtils.java"


# static fields
.field private static mAppTrackerClass:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendAppTracker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdKey"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 23
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x1d

    if-lt v0, v7, :cond_3

    .line 24
    sget-object v0, Lcom/oneplus/lib/util/AppTrackerUtils;->mAppTrackerClass:Ljava/lang/Object;

    const-string v7, "AppTrackerUtil"

    if-nez v0, :cond_1

    .line 26
    :try_start_0
    const-string v0, "net.oneplus.odm.OpDeviceManagerInjector"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 27
    .local v0, "appTrackerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 28
    const-string v8, "getInstance"

    new-array v9, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 29
    .local v8, "initMethod":Ljava/lang/reflect/Method;
    if-eqz v8, :cond_0

    .line 30
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 31
    const/4 v9, 0x0

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sput-object v9, Lcom/oneplus/lib/util/AppTrackerUtils;->mAppTrackerClass:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v0    # "appTrackerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "initMethod":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New instance AppTracker class exception."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/lib/util/AppTrackerUtils;->mAppTrackerClass:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v8, v0

    .line 40
    .local v8, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 42
    .local v9, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appid"

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :try_start_1
    sget-object v0, Lcom/oneplus/lib/util/AppTrackerUtils;->mAppTrackerClass:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v10, "preserveAppData"

    const/4 v11, 0x4

    new-array v12, v11, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    aput-object v13, v12, v5

    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v6

    const-class v13, Ljava/util/Map;

    aput-object v13, v12, v4

    const-class v13, Ljava/util/Map;

    const/4 v14, 0x3

    aput-object v13, v12, v14

    invoke-virtual {v0, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 46
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 48
    sget-object v10, Lcom/oneplus/lib/util/AppTrackerUtils;->mAppTrackerClass:Ljava/lang/Object;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v5

    aput-object p2, v11, v6

    aput-object v8, v11, v4

    aput-object v9, v11, v14

    invoke-virtual {v0, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_2
    goto :goto_1

    .line 50
    :catch_1
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke method onEvent exception."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    goto :goto_3

    .line 55
    :cond_3
    sget-object v0, Lcom/oneplus/lib/util/AppTrackerUtils;->mAppTrackerClass:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 57
    :try_start_2
    const-string v0, "net.oneplus.odm.insight.tracker.AppTracker"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    .local v0, "appTrackerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v5

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v6

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 59
    .local v7, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 60
    new-array v8, v4, [Ljava/lang/Object;

    aput-object p0, v8, v5

    aput-object v1, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sput-object v8, Lcom/oneplus/lib/util/AppTrackerUtils;->mAppTrackerClass:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 63
    .end local v0    # "appTrackerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_2

    .line 61
    :catch_2
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    sget-object v0, Lcom/oneplus/lib/util/AppTrackerUtils;->mAppTrackerClass:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v7, v0

    .line 67
    .local v7, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :try_start_3
    sget-object v0, Lcom/oneplus/lib/util/AppTrackerUtils;->mAppTrackerClass:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "onEvent"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v5

    const-class v10, Ljava/util/Map;

    aput-object v10, v9, v6

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 70
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 71
    sget-object v8, Lcom/oneplus/lib/util/AppTrackerUtils;->mAppTrackerClass:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    aput-object v7, v4, v6

    invoke-virtual {v0, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 74
    nop

    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_3

    .line 72
    :catch_3
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :goto_3
    return-void
.end method
