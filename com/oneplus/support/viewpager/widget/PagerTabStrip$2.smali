.class Lcom/oneplus/support/viewpager/widget/PagerTabStrip$2;
.super Ljava/lang/Object;
.source "PagerTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/viewpager/widget/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/viewpager/widget/PagerTabStrip;


# direct methods
.method constructor <init>(Lcom/oneplus/support/viewpager/widget/PagerTabStrip;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/support/viewpager/widget/PagerTabStrip;

    .line 118
    iput-object p1, p0, Lcom/oneplus/support/viewpager/widget/PagerTabStrip$2;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/oneplus/support/viewpager/widget/PagerTabStrip$2;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTabStrip;

    iget-object v0, v0, Lcom/oneplus/support/viewpager/widget/PagerTabStrip;->mPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/oneplus/support/viewpager/widget/PagerTabStrip$2;->this$0:Lcom/oneplus/support/viewpager/widget/PagerTabStrip;

    iget-object v1, v1, Lcom/oneplus/support/viewpager/widget/PagerTabStrip;->mPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 122
    return-void
.end method
