.class public final enum Lcom/oneplus/support/lifecycle/Lifecycle$State;
.super Ljava/lang/Enum;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/support/lifecycle/Lifecycle$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/support/lifecycle/Lifecycle$State;

.field public static final enum CREATED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

.field public static final enum DESTROYED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

.field public static final enum INITIALIZED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

.field public static final enum RESUMED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

.field public static final enum STARTED:Lcom/oneplus/support/lifecycle/Lifecycle$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 157
    new-instance v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;

    const/4 v1, 0x0

    const-string v2, "DESTROYED"

    invoke-direct {v0, v2, v1}, Lcom/oneplus/support/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;->DESTROYED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    .line 164
    new-instance v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;

    const/4 v2, 0x1

    const-string v3, "INITIALIZED"

    invoke-direct {v0, v3, v2}, Lcom/oneplus/support/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;->INITIALIZED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    .line 174
    new-instance v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;

    const/4 v3, 0x2

    const-string v4, "CREATED"

    invoke-direct {v0, v4, v3}, Lcom/oneplus/support/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;->CREATED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    .line 184
    new-instance v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;

    const/4 v4, 0x3

    const-string v5, "STARTED"

    invoke-direct {v0, v5, v4}, Lcom/oneplus/support/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;->STARTED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    .line 190
    new-instance v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;

    const/4 v5, 0x4

    const-string v6, "RESUMED"

    invoke-direct {v0, v6, v5}, Lcom/oneplus/support/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;->RESUMED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    .line 150
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/support/lifecycle/Lifecycle$State;

    sget-object v6, Lcom/oneplus/support/lifecycle/Lifecycle$State;->DESTROYED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    aput-object v6, v0, v1

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$State;->INITIALIZED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$State;->CREATED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$State;->STARTED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$State;->RESUMED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;->$VALUES:[Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/support/lifecycle/Lifecycle$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 150
    const-class v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/support/lifecycle/Lifecycle$State;
    .locals 1

    .line 150
    sget-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;->$VALUES:[Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, [Lcom/oneplus/support/lifecycle/Lifecycle$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-object v0
.end method


# virtual methods
.method public isAtLeast(Lcom/oneplus/support/lifecycle/Lifecycle$State;)Z
    .locals 1
    .param p1, "state"    # Lcom/oneplus/support/lifecycle/Lifecycle$State;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 199
    invoke-virtual {p0, p1}, Lcom/oneplus/support/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
