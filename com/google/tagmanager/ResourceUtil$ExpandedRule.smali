.class public Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/ResourceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandedRule"
.end annotation


# instance fields
.field private final mAddMacroRuleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAddMacros:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private final mAddTagRuleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAddTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private final mNegativePredicates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private final mPositivePredicates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveMacroRuleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveMacros:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveTagRuleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 231
    .local p1, "postivePredicates":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p2, "negativePredicates":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p3, "addTags":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p4, "removeTags":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p5, "addMacros":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p6, "removeMacros":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p7, "addMacroRuleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "removeMacroRuleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "addTagRuleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p10, "removeTagRuleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mPositivePredicates:Ljava/util/List;

    .line 233
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mNegativePredicates:Ljava/util/List;

    .line 234
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mAddTags:Ljava/util/List;

    .line 235
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mRemoveTags:Ljava/util/List;

    .line 236
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mAddMacros:Ljava/util/List;

    .line 237
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mRemoveMacros:Ljava/util/List;

    .line 238
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mAddMacroRuleNames:Ljava/util/List;

    .line 239
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mRemoveMacroRuleNames:Ljava/util/List;

    .line 240
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mAddTagRuleNames:Ljava/util/List;

    .line 241
    invoke-static {p10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mRemoveTagRuleNames:Ljava/util/List;

    .line 242
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/tagmanager/ResourceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Ljava/util/List;
    .param p5, "x4"    # Ljava/util/List;
    .param p6, "x5"    # Ljava/util/List;
    .param p7, "x6"    # Ljava/util/List;
    .param p8, "x7"    # Ljava/util/List;
    .param p9, "x8"    # Ljava/util/List;
    .param p10, "x9"    # Ljava/util/List;
    .param p11, "x10"    # Lcom/google/tagmanager/ResourceUtil$1;

    .line 208
    invoke-direct/range {p0 .. p10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;
    .locals 2

    .line 245
    new-instance v0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;-><init>(Lcom/google/tagmanager/ResourceUtil$1;)V

    return-object v0
.end method


# virtual methods
.method public getAddMacroRuleNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mAddMacroRuleNames:Ljava/util/List;

    return-object v0
.end method

.method public getAddMacros()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mAddMacros:Ljava/util/List;

    return-object v0
.end method

.method public getAddTagRuleNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mAddTagRuleNames:Ljava/util/List;

    return-object v0
.end method

.method public getAddTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mAddTags:Ljava/util/List;

    return-object v0
.end method

.method public getNegativePredicates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mNegativePredicates:Ljava/util/List;

    return-object v0
.end method

.method public getPositivePredicates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mPositivePredicates:Ljava/util/List;

    return-object v0
.end method

.method public getRemoveMacroRuleNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mRemoveMacroRuleNames:Ljava/util/List;

    return-object v0
.end method

.method public getRemoveMacros()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mRemoveMacros:Ljava/util/List;

    return-object v0
.end method

.method public getRemoveTagRuleNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mRemoveTagRuleNames:Ljava/util/List;

    return-object v0
.end method

.method public getRemoveTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->mRemoveTags:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Positive predicates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getPositivePredicates()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  Negative predicates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getNegativePredicates()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  Add tags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  Remove tags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  Add macros: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacros()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  Remove macros: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacros()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
