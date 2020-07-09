.class public Lcom/oneplus/lib/widget/OPToast;
.super Landroid/widget/Toast;
.source "OPToast.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OPToast"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private static getScaledTextSize(Landroid/widget/TextView;)F
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/oneplus/lib/widget/OPToast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/oneplus/lib/widget/OPToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/oneplus/lib/widget/OPToast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/oneplus/lib/widget/OPToast;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .line 26
    new-instance v0, Lcom/oneplus/lib/widget/OPToast;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/OPToast;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "result":Lcom/oneplus/lib/widget/OPToast;
    nop

    .line 29
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 31
    .local v1, "inflate":Landroid/view/LayoutInflater;
    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPToast:[I

    sget v3, Lcom/oneplus/commonctrl/R$attr;->OPToastStyle:I

    sget v4, Lcom/oneplus/commonctrl/R$style;->Oneplus_DeviceDefault_OPToast:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 32
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPToast_android_layout:I

    sget v4, Lcom/oneplus/commonctrl/R$layout;->op_transient_notification_light:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 33
    .local v3, "layoutResId":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 36
    .local v4, "v":Landroid/view/View;
    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 37
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-static {v0, v4, p2}, Lcom/oneplus/lib/widget/OPToast;->setViewAndDuation(Lcom/oneplus/lib/widget/OPToast;Landroid/view/View;I)V

    .line 42
    :try_start_0
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    .line 43
    .local v6, "textSize":F
    invoke-static {v5}, Lcom/oneplus/lib/widget/OPToast;->getScaledTextSize(Landroid/widget/TextView;)F

    move-result v7

    .line 44
    .local v7, "scaledTextSize":F
    const-string v8, "OPToast"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " / textSize:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", scaledTextSize:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", text:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    nop

    .end local v6    # "textSize":F
    .end local v7    # "scaledTextSize":F
    goto :goto_0

    .line 45
    :catch_0
    move-exception v6

    .line 46
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private static setViewAndDuation(Lcom/oneplus/lib/widget/OPToast;Landroid/view/View;I)V
    .locals 0
    .param p0, "toast"    # Lcom/oneplus/lib/widget/OPToast;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "duration"    # I

    .line 59
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPToast;->setView(Landroid/view/View;)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/OPToast;->setDuration(I)V

    .line 61
    return-void
.end method
