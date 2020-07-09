.class public final enum Lcom/google/tagmanager/ContainerOpener$OpenType;
.super Ljava/lang/Enum;
.source "ContainerOpener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/ContainerOpener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/tagmanager/ContainerOpener$OpenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/tagmanager/ContainerOpener$OpenType;

.field public static final enum PREFER_FRESH:Lcom/google/tagmanager/ContainerOpener$OpenType;

.field public static final enum PREFER_NON_DEFAULT:Lcom/google/tagmanager/ContainerOpener$OpenType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 57
    new-instance v0, Lcom/google/tagmanager/ContainerOpener$OpenType;

    const/4 v1, 0x0

    const-string v2, "PREFER_NON_DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/google/tagmanager/ContainerOpener$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/ContainerOpener$OpenType;->PREFER_NON_DEFAULT:Lcom/google/tagmanager/ContainerOpener$OpenType;

    .line 62
    new-instance v0, Lcom/google/tagmanager/ContainerOpener$OpenType;

    const/4 v2, 0x1

    const-string v3, "PREFER_FRESH"

    invoke-direct {v0, v3, v2}, Lcom/google/tagmanager/ContainerOpener$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/ContainerOpener$OpenType;->PREFER_FRESH:Lcom/google/tagmanager/ContainerOpener$OpenType;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/tagmanager/ContainerOpener$OpenType;

    sget-object v3, Lcom/google/tagmanager/ContainerOpener$OpenType;->PREFER_NON_DEFAULT:Lcom/google/tagmanager/ContainerOpener$OpenType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/tagmanager/ContainerOpener$OpenType;->PREFER_FRESH:Lcom/google/tagmanager/ContainerOpener$OpenType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/tagmanager/ContainerOpener$OpenType;->$VALUES:[Lcom/google/tagmanager/ContainerOpener$OpenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/tagmanager/ContainerOpener$OpenType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Lcom/google/tagmanager/ContainerOpener$OpenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/ContainerOpener$OpenType;

    return-object v0
.end method

.method public static values()[Lcom/google/tagmanager/ContainerOpener$OpenType;
    .locals 1

    .line 51
    sget-object v0, Lcom/google/tagmanager/ContainerOpener$OpenType;->$VALUES:[Lcom/google/tagmanager/ContainerOpener$OpenType;

    invoke-virtual {v0}, [Lcom/google/tagmanager/ContainerOpener$OpenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/tagmanager/ContainerOpener$OpenType;

    return-object v0
.end method
