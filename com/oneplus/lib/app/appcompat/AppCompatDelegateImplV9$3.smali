.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$3;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/FitWindowsViewGroup$OnFitSystemWindowsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    .line 444
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$3;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFitSystemWindows(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 447
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$3;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->updateStatusGuard(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 448
    return-void
.end method
