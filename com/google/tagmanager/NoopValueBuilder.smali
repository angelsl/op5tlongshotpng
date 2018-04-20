.class Lcom/google/tagmanager/NoopValueBuilder;
.super Ljava/lang/Object;
.source "NoopValueBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/ValueBuilder;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createValueMacroEvaluationInfoExtension()Lcom/google/tagmanager/MacroEvaluationInfoBuilder;
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/tagmanager/NoopMacroEvaluationInfoBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopMacroEvaluationInfoBuilder;-><init>()V

    return-object v0
.end method

.method public getListItem(I)Lcom/google/tagmanager/ValueBuilder;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 11
    new-instance v0, Lcom/google/tagmanager/NoopValueBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopValueBuilder;-><init>()V

    return-object v0
.end method

.method public getMapKey(I)Lcom/google/tagmanager/ValueBuilder;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 16
    new-instance v0, Lcom/google/tagmanager/NoopValueBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopValueBuilder;-><init>()V

    return-object v0
.end method

.method public getMapValue(I)Lcom/google/tagmanager/ValueBuilder;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 21
    new-instance v0, Lcom/google/tagmanager/NoopValueBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopValueBuilder;-><init>()V

    return-object v0
.end method

.method public getTemplateToken(I)Lcom/google/tagmanager/ValueBuilder;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 26
    new-instance v0, Lcom/google/tagmanager/NoopValueBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopValueBuilder;-><init>()V

    return-object v0
.end method
