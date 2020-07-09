.class final Lcom/google/tagmanager/TagManager$2;
.super Ljava/lang/Object;
.source "TagManager.java"

# interfaces
.implements Lcom/google/tagmanager/TagManager$ContainerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/tagmanager/TagManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newContainer(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/TagManager;)Lcom/google/tagmanager/Container;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "tagManager"    # Lcom/google/tagmanager/TagManager;

    .line 176
    new-instance v0, Lcom/google/tagmanager/Container;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/tagmanager/Container;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/TagManager;)V

    return-object v0
.end method
