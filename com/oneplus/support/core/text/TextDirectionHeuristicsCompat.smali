.class public final Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;,
        Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$AnyStrong;,
        Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$FirstStrong;,
        Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;,
        Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;,
        Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
    }
.end annotation


# static fields
.field public static final ANYRTL_LTR:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

.field public static final FIRSTSTRONG_LTR:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

.field public static final FIRSTSTRONG_RTL:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

.field public static final LOCALE:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

.field public static final LTR:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

.field public static final RTL:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

.field private static final STATE_FALSE:I = 0x1

.field private static final STATE_TRUE:I = 0x0

.field private static final STATE_UNKNOWN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;->LTR:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

    .line 39
    new-instance v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;->RTL:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

    .line 47
    new-instance v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

    .line 55
    new-instance v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v3}, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

    .line 62
    new-instance v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_RTL:Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$AnyStrong;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;->ANYRTL_LTR:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

    .line 68
    sget-object v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;->INSTANCE:Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;

    sput-object v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;->LOCALE:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isRtlText(I)I
    .locals 1
    .param p0, "directionality"    # I

    .line 79
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 86
    return v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_1
    return v0
.end method

.method static isRtlTextOrFormat(I)I
    .locals 2
    .param p0, "directionality"    # I

    .line 91
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 102
    return v1

    .line 100
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
