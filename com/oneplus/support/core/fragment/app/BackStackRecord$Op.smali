.class final Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;
.super Ljava/lang/Object;
.source "BackStackRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/fragment/app/BackStackRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field cmd:I

.field enterAnim:I

.field exitAnim:I

.field fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

.field popEnterAnim:I

.field popExitAnim:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method

.method constructor <init>(ILcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "fragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput p1, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->cmd:I

    .line 205
    iput-object p2, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 206
    return-void
.end method
