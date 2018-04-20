.class Lcom/google/tagmanager/Container$FunctionCallMacroHandlerAdapter;
.super Ljava/lang/Object;
.source "Container.java"

# interfaces
.implements Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FunctionCallMacroHandlerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/Container;


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/Container;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/tagmanager/Container$FunctionCallMacroHandlerAdapter;->this$0:Lcom/google/tagmanager/Container;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/tagmanager/Container;
    .param p2, "x1"    # Lcom/google/tagmanager/Container$1;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container$FunctionCallMacroHandlerAdapter;-><init>(Lcom/google/tagmanager/Container;)V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 108
    iget-object v2, p0, Lcom/google/tagmanager/Container$FunctionCallMacroHandlerAdapter;->this$0:Lcom/google/tagmanager/Container;

    invoke-virtual {v2, p1}, Lcom/google/tagmanager/Container;->getFunctionCallMacroHandler(Ljava/lang/String;)Lcom/google/tagmanager/Container$FunctionCallMacroHandler;

    move-result-object v0

    .line 109
    .local v0, "handler":Lcom/google/tagmanager/Container$FunctionCallMacroHandler;
    if-eqz v0, :cond_d

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/Container$FunctionCallMacroHandler;->getValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    :cond_d
    return-object v1
.end method
