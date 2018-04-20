.class public abstract Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/nano/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TypeLiteral"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .registers 4

    .prologue
    .local p0, "this":Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;, "Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral<TT;>;"
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 84
    .local v0, "superclass":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_1b

    .line 87
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "superclass":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    .line 88
    return-void

    .line 85
    .restart local v0    # "superclass":Ljava/lang/reflect/Type;
    :cond_1b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Missing type parameter"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->isList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;)Ljava/lang/Class;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;)Ljava/lang/Class;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->getListType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getListType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;, "Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral<TT;>;"
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method private getTargetClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;, "Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral<TT;>;"
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->isList()Z

    move-result v0

    if-nez v0, :cond_c

    .line 111
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 109
    :cond_c
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method private isList()Z
    .registers 2

    .prologue
    .line 94
    .local p0, "this":Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;, "Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral<TT;>;"
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    return v0
.end method
