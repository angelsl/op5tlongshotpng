.class public Lcom/google/android/gms/analytics/internal/Command;
.super Ljava/lang/Object;
.source "Command.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final APPEND_CACHE_BUSTER:Ljava/lang/String; = "appendCacheBuster"

.field public static final APPEND_QUEUE_TIME:Ljava/lang/String; = "appendQueueTime"

.field public static final APPEND_VERSION:Ljava/lang/String; = "appendVersion"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private urlParam:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/android/gms/analytics/internal/Command$1;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/internal/Command$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/internal/Command;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/Command;->readFromParcel(Landroid/os/Parcel;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "urlParam"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/Command;->id:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/Command;->urlParam:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/google/android/gms/analytics/internal/Command;->value:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/Command;->id:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/Command;->urlParam:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/Command;->value:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/Command;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlParam()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/Command;->urlParam:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/Command;->value:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/Command;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/Command;->urlParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/Command;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return-void
.end method
