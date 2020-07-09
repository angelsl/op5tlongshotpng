.class Lcom/oneplus/lib/widget/OPProgressBar$1;
.super Landroid/util/FloatProperty;
.source "OPProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/oneplus/lib/widget/OPProgressBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/OPProgressBar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPProgressBar;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/OPProgressBar;
    .param p2, "x0"    # Ljava/lang/String;

    .line 2006
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPProgressBar$1;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/oneplus/lib/widget/OPProgressBar;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/oneplus/lib/widget/OPProgressBar;

    .line 2015
    invoke-static {p1}, Lcom/oneplus/lib/widget/OPProgressBar;->access$800(Lcom/oneplus/lib/widget/OPProgressBar;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2006
    check-cast p1, Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar$1;->get(Lcom/oneplus/lib/widget/OPProgressBar;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/oneplus/lib/widget/OPProgressBar;F)V
    .locals 1
    .param p1, "object"    # Lcom/oneplus/lib/widget/OPProgressBar;
    .param p2, "value"    # F

    .line 2009
    const v0, 0x102000d

    invoke-static {p1, v0, p2}, Lcom/oneplus/lib/widget/OPProgressBar;->access$700(Lcom/oneplus/lib/widget/OPProgressBar;IF)V

    .line 2010
    invoke-static {p1, p2}, Lcom/oneplus/lib/widget/OPProgressBar;->access$802(Lcom/oneplus/lib/widget/OPProgressBar;F)F

    .line 2011
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 2006
    check-cast p1, Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/OPProgressBar$1;->setValue(Lcom/oneplus/lib/widget/OPProgressBar;F)V

    return-void
.end method
