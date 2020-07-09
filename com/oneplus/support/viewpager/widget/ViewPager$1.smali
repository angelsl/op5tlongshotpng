.class Lcom/oneplus/support/viewpager/widget/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;
    .param p2, "rhs"    # Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    .line 143
    iget v0, p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v1, p2, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 140
    check-cast p1, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    check-cast p2, Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/viewpager/widget/ViewPager$1;->compare(Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;Lcom/oneplus/support/viewpager/widget/ViewPager$ItemInfo;)I

    move-result p1

    return p1
.end method
