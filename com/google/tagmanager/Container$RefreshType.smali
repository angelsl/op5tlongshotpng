.class public final enum Lcom/google/tagmanager/Container$RefreshType;
.super Ljava/lang/Enum;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefreshType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/tagmanager/Container$RefreshType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/tagmanager/Container$RefreshType;

.field public static final enum NETWORK:Lcom/google/tagmanager/Container$RefreshType;

.field public static final enum SAVED:Lcom/google/tagmanager/Container$RefreshType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/google/tagmanager/Container$RefreshType;

    const-string/jumbo v1, "SAVED"

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/Container$RefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    .line 33
    new-instance v0, Lcom/google/tagmanager/Container$RefreshType;

    const-string/jumbo v1, "NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/google/tagmanager/Container$RefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/Container$RefreshType;->NETWORK:Lcom/google/tagmanager/Container$RefreshType;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/tagmanager/Container$RefreshType;

    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->NETWORK:Lcom/google/tagmanager/Container$RefreshType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/tagmanager/Container$RefreshType;->$VALUES:[Lcom/google/tagmanager/Container$RefreshType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/tagmanager/Container$RefreshType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/google/tagmanager/Container$RefreshType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Container$RefreshType;

    return-object v0
.end method

.method public static values()[Lcom/google/tagmanager/Container$RefreshType;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/tagmanager/Container$RefreshType;->$VALUES:[Lcom/google/tagmanager/Container$RefreshType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/tagmanager/Container$RefreshType;

    return-object v0
.end method
