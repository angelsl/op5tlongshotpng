.class public final enum Lcom/google/tagmanager/Container$RefreshFailure;
.super Ljava/lang/Enum;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefreshFailure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/tagmanager/Container$RefreshFailure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/tagmanager/Container$RefreshFailure;

.field public static final enum IO_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

.field public static final enum NETWORK_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

.field public static final enum NO_NETWORK:Lcom/google/tagmanager/Container$RefreshFailure;

.field public static final enum NO_SAVED_CONTAINER:Lcom/google/tagmanager/Container$RefreshFailure;

.field public static final enum SERVER_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

.field public static final enum UNKNOWN_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 38
    new-instance v0, Lcom/google/tagmanager/Container$RefreshFailure;

    const/4 v1, 0x0

    const-string v2, "NO_SAVED_CONTAINER"

    invoke-direct {v0, v2, v1}, Lcom/google/tagmanager/Container$RefreshFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->NO_SAVED_CONTAINER:Lcom/google/tagmanager/Container$RefreshFailure;

    .line 40
    new-instance v0, Lcom/google/tagmanager/Container$RefreshFailure;

    const/4 v2, 0x1

    const-string v3, "IO_ERROR"

    invoke-direct {v0, v3, v2}, Lcom/google/tagmanager/Container$RefreshFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->IO_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    .line 42
    new-instance v0, Lcom/google/tagmanager/Container$RefreshFailure;

    const/4 v3, 0x2

    const-string v4, "NO_NETWORK"

    invoke-direct {v0, v4, v3}, Lcom/google/tagmanager/Container$RefreshFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->NO_NETWORK:Lcom/google/tagmanager/Container$RefreshFailure;

    .line 44
    new-instance v0, Lcom/google/tagmanager/Container$RefreshFailure;

    const/4 v4, 0x3

    const-string v5, "NETWORK_ERROR"

    invoke-direct {v0, v5, v4}, Lcom/google/tagmanager/Container$RefreshFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->NETWORK_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    .line 46
    new-instance v0, Lcom/google/tagmanager/Container$RefreshFailure;

    const/4 v5, 0x4

    const-string v6, "SERVER_ERROR"

    invoke-direct {v0, v6, v5}, Lcom/google/tagmanager/Container$RefreshFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->SERVER_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    .line 48
    new-instance v0, Lcom/google/tagmanager/Container$RefreshFailure;

    const/4 v6, 0x5

    const-string v7, "UNKNOWN_ERROR"

    invoke-direct {v0, v7, v6}, Lcom/google/tagmanager/Container$RefreshFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->UNKNOWN_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/tagmanager/Container$RefreshFailure;

    sget-object v7, Lcom/google/tagmanager/Container$RefreshFailure;->NO_SAVED_CONTAINER:Lcom/google/tagmanager/Container$RefreshFailure;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/tagmanager/Container$RefreshFailure;->IO_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/Container$RefreshFailure;->NO_NETWORK:Lcom/google/tagmanager/Container$RefreshFailure;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/tagmanager/Container$RefreshFailure;->NETWORK_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/tagmanager/Container$RefreshFailure;->SERVER_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/tagmanager/Container$RefreshFailure;->UNKNOWN_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->$VALUES:[Lcom/google/tagmanager/Container$RefreshFailure;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/tagmanager/Container$RefreshFailure;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lcom/google/tagmanager/Container$RefreshFailure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Container$RefreshFailure;

    return-object v0
.end method

.method public static values()[Lcom/google/tagmanager/Container$RefreshFailure;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->$VALUES:[Lcom/google/tagmanager/Container$RefreshFailure;

    invoke-virtual {v0}, [Lcom/google/tagmanager/Container$RefreshFailure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/tagmanager/Container$RefreshFailure;

    return-object v0
.end method
