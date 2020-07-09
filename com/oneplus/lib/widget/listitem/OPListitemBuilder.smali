.class public final Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;
.super Ljava/lang/Object;
.source "OPListitemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OPListitem"


# instance fields
.field private mActionButtonEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mIconEnabled:Z

.field private mPrimaryTextEnabled:Z

.field private mSecondaryTextEnabled:Z

.field private mStampEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mContext:Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mIconEnabled:Z

    .line 29
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mPrimaryTextEnabled:Z

    .line 30
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mSecondaryTextEnabled:Z

    .line 31
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mStampEnabled:Z

    .line 32
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mActionButtonEnabled:Z

    .line 38
    iput-object p1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;

    .line 21
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mIconEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;

    .line 21
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mPrimaryTextEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;

    .line 21
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mSecondaryTextEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;

    .line 21
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mStampEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;

    .line 21
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mActionButtonEnabled:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/oneplus/lib/widget/listitem/OPListitem;
    .locals 6

    .line 46
    const-wide/16 v0, 0x0

    .line 51
    .local v0, "start":J
    new-instance v2, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;

    iget-object v3, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;-><init>(Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;Landroid/content/Context;)V

    .line 52
    .local v2, "item":Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0xd8

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 53
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    return-object v2
.end method

.method public reset()Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;
    .locals 1

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mIconEnabled:Z

    .line 127
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mPrimaryTextEnabled:Z

    .line 128
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mSecondaryTextEnabled:Z

    .line 129
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mStampEnabled:Z

    .line 130
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mActionButtonEnabled:Z

    .line 131
    return-object p0
.end method

.method public setActionButtonEnabled(Z)Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;
    .locals 1
    .param p1, "enabled"    # Z

    .line 115
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mActionButtonEnabled:Z

    .line 116
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mStampEnabled:Z

    .line 117
    return-object p0
.end method

.method public setIconEnabled(Z)Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mIconEnabled:Z

    .line 71
    return-object p0
.end method

.method public setPrimaryTextEnabled(Z)Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mPrimaryTextEnabled:Z

    .line 82
    return-object p0
.end method

.method public setSecondaryTextEnabled(Z)Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 92
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mSecondaryTextEnabled:Z

    .line 93
    return-object p0
.end method

.method public setStampEnabled(Z)Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;
    .locals 1
    .param p1, "enabled"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mStampEnabled:Z

    .line 104
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->mActionButtonEnabled:Z

    .line 105
    return-object p0
.end method
