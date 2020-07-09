.class public Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;
.super Ljava/lang/Object;
.source "BottomNavigationNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundColor:I
    .annotation build Lcom/oneplus/support/annotation/ColorInt;
    .end annotation
.end field

.field private mIndeterminate:Z

.field private mNumber:I

.field private mTextColor:I
    .annotation build Lcom/oneplus/support/annotation/ColorInt;
    .end annotation
.end field

.field private udbc:I

.field private udtc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;->udtc:I

    .line 82
    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;->udbc:I

    return-void
.end method


# virtual methods
.method public build()Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
    .locals 2

    .line 111
    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;-><init>(Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;)V

    .line 112
    .local v0, "notification":Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;->mNumber:I

    invoke-static {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->access$102(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;I)I

    .line 113
    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;->mTextColor:I

    invoke-static {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->access$202(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;I)I

    .line 114
    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;->mBackgroundColor:I

    invoke-static {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->access$302(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;I)I

    .line 115
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;->mIndeterminate:Z

    invoke-static {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->access$402(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;Z)Z

    .line 116
    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;->udtc:I

    invoke-static {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->access$502(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;I)I

    .line 117
    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;->udbc:I

    invoke-static {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->access$602(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;I)I

    .line 118
    return-object v0
.end method

.method public setBackgroundColor(I)Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;
    .locals 1
    .param p1, "backgroundColor"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 100
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;->mBackgroundColor:I

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;->udbc:I

    .line 102
    return-object p0
.end method

.method public setIndeterminate(Z)Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;
    .locals 0
    .param p1, "indeterminate"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;->mIndeterminate:Z

    .line 107
    return-object p0
.end method

.method public setNumber(I)Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;
    .locals 2
    .param p1, "number"    # I

    .line 85
    if-ltz p1, :cond_0

    .line 89
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;->mNumber:I

    .line 90
    return-object p0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number must be not less than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextColor(I)Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;
    .locals 1
    .param p1, "textColor"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 94
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;->mTextColor:I

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;->udtc:I

    .line 96
    return-object p0
.end method
