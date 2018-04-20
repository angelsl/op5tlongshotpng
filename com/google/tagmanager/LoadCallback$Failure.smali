.class public final enum Lcom/google/tagmanager/LoadCallback$Failure;
.super Ljava/lang/Enum;
.source "LoadCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/LoadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Failure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/tagmanager/LoadCallback$Failure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/tagmanager/LoadCallback$Failure;

.field public static final enum IO_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

.field public static final enum NOT_AVAILABLE:Lcom/google/tagmanager/LoadCallback$Failure;

.field public static final enum SERVER_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/google/tagmanager/LoadCallback$Failure;

    const-string/jumbo v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/LoadCallback$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/LoadCallback$Failure;->NOT_AVAILABLE:Lcom/google/tagmanager/LoadCallback$Failure;

    .line 12
    new-instance v0, Lcom/google/tagmanager/LoadCallback$Failure;

    const-string/jumbo v1, "IO_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/google/tagmanager/LoadCallback$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/LoadCallback$Failure;->IO_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

    .line 13
    new-instance v0, Lcom/google/tagmanager/LoadCallback$Failure;

    const-string/jumbo v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/tagmanager/LoadCallback$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/LoadCallback$Failure;->SERVER_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/tagmanager/LoadCallback$Failure;

    sget-object v1, Lcom/google/tagmanager/LoadCallback$Failure;->NOT_AVAILABLE:Lcom/google/tagmanager/LoadCallback$Failure;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/LoadCallback$Failure;->IO_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/tagmanager/LoadCallback$Failure;->SERVER_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/tagmanager/LoadCallback$Failure;->$VALUES:[Lcom/google/tagmanager/LoadCallback$Failure;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/tagmanager/LoadCallback$Failure;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/LoadCallback$Failure;

    return-object v0
.end method

.method public static values()[Lcom/google/tagmanager/LoadCallback$Failure;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/google/tagmanager/LoadCallback$Failure;->$VALUES:[Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/tagmanager/LoadCallback$Failure;

    return-object v0
.end method
