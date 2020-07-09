.class public final enum Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;
.super Ljava/lang/Enum;
.source "AnimationGriditemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/AnimationGriditemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadiusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

.field public static final enum NONE:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

.field public static final enum RADIUS:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->NONE:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    .line 38
    new-instance v0, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    const/4 v2, 0x1

    const-string v3, "RADIUS"

    invoke-direct {v0, v3, v2, v2}, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->RADIUS:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    sget-object v3, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->NONE:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    aput-object v3, v0, v1

    sget-object v1, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->RADIUS:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->$VALUES:[Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ni"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->nativeInt:I

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;
    .locals 1

    .line 36
    sget-object v0, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->$VALUES:[Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    invoke-virtual {v0}, [Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    return-object v0
.end method
