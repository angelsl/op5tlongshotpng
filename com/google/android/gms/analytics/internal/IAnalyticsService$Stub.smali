.class public abstract Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub;
.super Landroid/os/Binder;
.source "IAnalyticsService.java"

# interfaces
.implements Lcom/google/android/gms/analytics/internal/IAnalyticsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/IAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gms.analytics.internal.IAnalyticsService"

.field static final TRANSACTION_clearHits:I = 0x2

.field static final TRANSACTION_sendHit:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/IAnalyticsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_4
    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    if-eqz v1, :cond_14

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    return-object v1

    .line 33
    :cond_14
    new-instance v1, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 41
    const v2, 0x5f4e5446

    const/4 v3, 0x1

    if-eq v0, v2, :cond_49

    packed-switch v0, :pswitch_data_52

    .line 72
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 66
    :pswitch_12
    const-string v2, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub;->clearHits()V

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    return v3

    .line 50
    :pswitch_1e
    const-string v2, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 53
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v10

    .line 55
    .local v10, "_arg0":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 57
    .local v11, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 59
    .local v13, "_arg2":Ljava/lang/String;
    sget-object v4, Lcom/google/android/gms/analytics/internal/Command;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 60
    .local v14, "_arg3":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/analytics/internal/Command;>;"
    move-object v4, p0

    move-object v5, v10

    move-wide v6, v11

    move-object v8, v13

    move-object v9, v14

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub;->sendHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v3

    .line 45
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v10    # "_arg0":Ljava/util/Map;
    .end local v11    # "_arg1":J
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/analytics/internal/Command;>;"
    :cond_49
    const-string v2, "com.google.android.gms.analytics.internal.IAnalyticsService"

    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v3

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_12
    .end packed-switch
.end method
