.class final enum Lcom/google/tagmanager/PreviewManager$PreviewMode;
.super Ljava/lang/Enum;
.source "PreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/PreviewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PreviewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/tagmanager/PreviewManager$PreviewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/tagmanager/PreviewManager$PreviewMode;

.field public static final enum CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

.field public static final enum CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

.field public static final enum NONE:Lcom/google/tagmanager/PreviewManager$PreviewMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/PreviewManager$PreviewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->NONE:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    .line 14
    new-instance v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;

    const-string/jumbo v1, "CONTAINER"

    invoke-direct {v0, v1, v3}, Lcom/google/tagmanager/PreviewManager$PreviewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    .line 16
    new-instance v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;

    const-string/jumbo v1, "CONTAINER_DEBUG"

    invoke-direct {v0, v1, v4}, Lcom/google/tagmanager/PreviewManager$PreviewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/tagmanager/PreviewManager$PreviewMode;

    sget-object v1, Lcom/google/tagmanager/PreviewManager$PreviewMode;->NONE:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->$VALUES:[Lcom/google/tagmanager/PreviewManager$PreviewMode;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/tagmanager/PreviewManager$PreviewMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;

    return-object v0
.end method

.method public static values()[Lcom/google/tagmanager/PreviewManager$PreviewMode;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->$VALUES:[Lcom/google/tagmanager/PreviewManager$PreviewMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/tagmanager/PreviewManager$PreviewMode;

    return-object v0
.end method
