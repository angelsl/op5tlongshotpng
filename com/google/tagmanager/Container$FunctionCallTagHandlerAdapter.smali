.class Lcom/google/tagmanager/Container$FunctionCallTagHandlerAdapter;
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
    name = "FunctionCallTagHandlerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/Container;


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/Container;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/google/tagmanager/Container$FunctionCallTagHandlerAdapter;->this$0:Lcom/google/tagmanager/Container;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/tagmanager/Container;
    .param p2, "x1"    # Lcom/google/tagmanager/Container$1;

    .line 118
    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container$FunctionCallTagHandlerAdapter;-><init>(Lcom/google/tagmanager/Container;)V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 121
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/tagmanager/Container$FunctionCallTagHandlerAdapter;->this$0:Lcom/google/tagmanager/Container;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/Container;->getFunctionCallTagHandler(Ljava/lang/String;)Lcom/google/tagmanager/Container$FunctionCallTagHandler;

    move-result-object v0

    .line 122
    .local v0, "handler":Lcom/google/tagmanager/Container$FunctionCallTagHandler;
    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/Container$FunctionCallTagHandler;->execute(Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
