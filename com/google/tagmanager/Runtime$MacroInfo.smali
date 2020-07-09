.class Lcom/google/tagmanager/Runtime$MacroInfo;
.super Ljava/lang/Object;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/Runtime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MacroInfo"
.end annotation


# instance fields
.field private final mAddMacroNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAddMacros:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefault:Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

.field private final mRemoveMacroNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRemoveMacros:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mRules:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mAddMacros:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mAddMacroNames:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mRemoveMacros:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mRemoveMacroNames:Ljava/util/Map;

    .line 57
    return-void
.end method


# virtual methods
.method public addAddMacroForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)V
    .locals 2
    .param p1, "rule"    # Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    .param p2, "function"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 93
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mAddMacros:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 94
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    if-nez v0, :cond_0

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 96
    iget-object v1, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mAddMacros:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public addAddMacroRuleNameForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/lang/String;)V
    .locals 2
    .param p1, "rule"    # Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    .param p2, "ruleName"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mAddMacroNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 113
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 115
    iget-object v1, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mAddMacroNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public addRemoveMacroForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)V
    .locals 2
    .param p1, "rule"    # Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    .param p2, "function"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 135
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mRemoveMacros:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 136
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    if-nez v0, :cond_0

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 138
    iget-object v1, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mRemoveMacros:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public addRemoveMacroRuleNameForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/lang/String;)V
    .locals 2
    .param p1, "rule"    # Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    .param p2, "ruleName"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mRemoveMacroNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 156
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 158
    iget-object v1, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mRemoveMacroNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public addRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;)V
    .locals 1
    .param p1, "rule"    # Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    .line 63
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mRules:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAddMacroRuleNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mAddMacroNames:Ljava/util/Map;

    return-object v0
.end method

.method public getAddMacros()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mAddMacros:Ljava/util/Map;

    return-object v0
.end method

.method public getDefault()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mDefault:Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    return-object v0
.end method

.method public getRemoveMacroRuleNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mRemoveMacroNames:Ljava/util/Map;

    return-object v0
.end method

.method public getRemoveMacros()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mRemoveMacros:Ljava/util/Map;

    return-object v0
.end method

.method public getRules()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mRules:Ljava/util/Set;

    return-object v0
.end method

.method public setDefault(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)V
    .locals 0
    .param p1, "def"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 167
    iput-object p1, p0, Lcom/google/tagmanager/Runtime$MacroInfo;->mDefault:Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    return-void
.end method
