.class Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/fragment/app/FragmentTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentContainerTransition"
.end annotation


# instance fields
.field public firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

.field public firstOutIsPop:Z

.field public firstOutTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

.field public lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

.field public lastInIsPop:Z

.field public lastInTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
