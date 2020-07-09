.class Lcom/google/tagmanager/TagManager$1;
.super Ljava/lang/Object;
.source "TagManager.java"

# interfaces
.implements Lcom/google/tagmanager/DataLayer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/TagManager;-><init>(Landroid/content/Context;Lcom/google/tagmanager/TagManager$ContainerProvider;Lcom/google/tagmanager/DataLayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/TagManager;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/TagManager;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/google/tagmanager/TagManager$1;->this$0:Lcom/google/tagmanager/TagManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v0, "event"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "eventValue":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/google/tagmanager/TagManager$1;->this$0:Lcom/google/tagmanager/TagManager;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/tagmanager/TagManager;->access$000(Lcom/google/tagmanager/TagManager;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method
