.class Lcom/google/tagmanager/TypeOrFailure;
.super Ljava/lang/Object;
.source "TypeOrFailure.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mFailure:Lcom/google/tagmanager/LoadCallback$Failure;

.field private mType:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/tagmanager/LoadCallback$Failure;)V
    .locals 0
    .param p1, "failure"    # Lcom/google/tagmanager/LoadCallback$Failure;

    .line 12
    .local p0, "this":Lcom/google/tagmanager/TypeOrFailure;, "Lcom/google/tagmanager/TypeOrFailure<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/google/tagmanager/TypeOrFailure;->mFailure:Lcom/google/tagmanager/LoadCallback$Failure;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 8
    .local p0, "this":Lcom/google/tagmanager/TypeOrFailure;, "Lcom/google/tagmanager/TypeOrFailure<TT;>;"
    .local p1, "type":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/tagmanager/TypeOrFailure;->mType:Ljava/lang/Object;

    .line 10
    return-void
.end method


# virtual methods
.method public getFailure()Lcom/google/tagmanager/LoadCallback$Failure;
    .locals 1

    .line 21
    .local p0, "this":Lcom/google/tagmanager/TypeOrFailure;, "Lcom/google/tagmanager/TypeOrFailure<TT;>;"
    iget-object v0, p0, Lcom/google/tagmanager/TypeOrFailure;->mFailure:Lcom/google/tagmanager/LoadCallback$Failure;

    return-object v0
.end method

.method public getType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 17
    .local p0, "this":Lcom/google/tagmanager/TypeOrFailure;, "Lcom/google/tagmanager/TypeOrFailure<TT;>;"
    iget-object v0, p0, Lcom/google/tagmanager/TypeOrFailure;->mType:Ljava/lang/Object;

    return-object v0
.end method
