.class public final Lcom/oneplus/screenshot/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final EditView:[I

.field public static final EditView_dim:I = 0x0

.field public static final EditView_drag:I = 0x1

.field public static final GuideLayout:[I

.field public static final GuideLayout_clickable:I = 0x0

.field public static final ImageView:[I

.field public static final ImageView_enabled:I = 0x0

.field public static final ImageView_padding:I = 0x1

.field public static final Interpolator:[I

.field public static final Interpolator_durationFactor:I = 0x1

.field public static final Interpolator_factor:I = 0x0

.field public static final Target:[I

.field public static final Target_alpha:I = 0x3

.field public static final Target_end:I = 0x2

.field public static final Target_id:I = 0x0

.field public static final Target_scaleX:I = 0x4

.field public static final Target_scaleY:I = 0x5

.field public static final Target_start:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 634
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_2a

    sput-object v1, Lcom/oneplus/screenshot/R$styleable;->EditView:[I

    .line 669
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f010004

    aput v3, v1, v2

    sput-object v1, Lcom/oneplus/screenshot/R$styleable;->GuideLayout:[I

    .line 698
    new-array v1, v0, [I

    fill-array-data v1, :array_32

    sput-object v1, Lcom/oneplus/screenshot/R$styleable;->ImageView:[I

    .line 743
    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/oneplus/screenshot/R$styleable;->Interpolator:[I

    .line 794
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_42

    sput-object v0, Lcom/oneplus/screenshot/R$styleable;->Target:[I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :array_2a
    .array-data 4
        0x7f010002
        0x7f010003
    .end array-data

    :array_32
    .array-data 4
        0x7f010000
        0x7f010001
    .end array-data

    :array_3a
    .array-data 4
        0x7f01000b
        0x7f01000c
    .end array-data

    :array_42
    .array-data 4
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
