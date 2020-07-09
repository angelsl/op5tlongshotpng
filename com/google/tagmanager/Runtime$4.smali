.class Lcom/google/tagmanager/Runtime$4;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/Runtime;->calculateTagsToRun(Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/Runtime;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/Runtime;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/google/tagmanager/Runtime$4;->this$0:Lcom/google/tagmanager/Runtime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rulePassed(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/ResolvedRuleBuilder;)V
    .locals 3
    .param p1, "rule"    # Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    .param p4, "debugRuleBuilder"    # Lcom/google/tagmanager/ResolvedRuleBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Lcom/google/tagmanager/ResolvedRuleBuilder;",
            ")V"
        }
    .end annotation

    .line 450
    .local p2, "add":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p3, "remove":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 451
    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 454
    invoke-interface {p4}, Lcom/google/tagmanager/ResolvedRuleBuilder;->getAddedTagFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddTagRuleNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;->translateAndAddAll(Ljava/util/List;Ljava/util/List;)V

    .line 456
    invoke-interface {p4}, Lcom/google/tagmanager/ResolvedRuleBuilder;->getRemovedTagFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveTagRuleNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;->translateAndAddAll(Ljava/util/List;Ljava/util/List;)V

    .line 458
    return-void
.end method
