.class public Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/ResourceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandedRuleBuilder"
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
.method private constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mPositivePredicates:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mNegativePredicates:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mAddTags:Ljava/util/List;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mRemoveTags:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mAddMacros:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mRemoveMacros:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mAddMacroRuleNames:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mRemoveMacroRuleNames:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mAddTagRuleNames:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mRemoveTagRuleNames:Ljava/util/List;

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/ResourceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/tagmanager/ResourceUtil$1;

    .line 120
    invoke-direct {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAddMacro(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;
    .locals 1
    .param p1, "f"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 176
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mAddMacros:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-object p0
.end method

.method public addAddMacroRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;
    .locals 1
    .param p1, "ruleName"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mAddMacroRuleNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-object p0
.end method

.method public addAddTag(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;
    .locals 1
    .param p1, "f"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 156
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mAddTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-object p0
.end method

.method public addAddTagRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;
    .locals 1
    .param p1, "ruleName"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mAddTagRuleNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-object p0
.end method

.method public addNegativePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;
    .locals 1
    .param p1, "f"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 151
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mNegativePredicates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-object p0
.end method

.method public addPositivePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;
    .locals 1
    .param p1, "f"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 146
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mPositivePredicates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-object p0
.end method

.method public addRemoveMacro(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;
    .locals 1
    .param p1, "f"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 186
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mRemoveMacros:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    return-object p0
.end method

.method public addRemoveMacroRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;
    .locals 1
    .param p1, "ruleName"    # Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mRemoveMacroRuleNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-object p0
.end method

.method public addRemoveTag(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;
    .locals 1
    .param p1, "f"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 166
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mRemoveTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-object p0
.end method

.method public addRemoveTagRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;
    .locals 1
    .param p1, "ruleName"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mRemoveTagRuleNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-object p0
.end method

.method public build()Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    .locals 13

    .line 196
    new-instance v12, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    iget-object v1, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mPositivePredicates:Ljava/util/List;

    iget-object v2, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mNegativePredicates:Ljava/util/List;

    iget-object v3, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mAddTags:Ljava/util/List;

    iget-object v4, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mRemoveTags:Ljava/util/List;

    iget-object v5, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mAddMacros:Ljava/util/List;

    iget-object v6, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mRemoveMacros:Ljava/util/List;

    iget-object v7, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mAddMacroRuleNames:Ljava/util/List;

    iget-object v8, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mRemoveMacroRuleNames:Ljava/util/List;

    iget-object v9, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mAddTagRuleNames:Ljava/util/List;

    iget-object v10, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->mRemoveTagRuleNames:Ljava/util/List;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/tagmanager/ResourceUtil$1;)V

    return-object v12
.end method
