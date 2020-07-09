.class public Lcom/oneplus/lib/app/appcompat/TintTypedArray;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTypedValue:Landroid/util/TypedValue;

.field private final mWrapped:Landroid/content/res/TypedArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "array"    # Landroid/content/res/TypedArray;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 50
    return-void
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;I[I)Lcom/oneplus/lib/app/appcompat/TintTypedArray;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "attrs"    # [I

    .line 44
    new-instance v0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/oneplus/lib/app/appcompat/TintTypedArray;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .line 34
    new-instance v0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/oneplus/lib/app/appcompat/TintTypedArray;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 39
    new-instance v0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 39
    return-object v0
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .line 101
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getColor(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 113
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "index"    # I

    .line 117
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 119
    .local v0, "resourceId":I
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {v1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 122
    .local v1, "value":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 123
    return-object v1

    .line 127
    .end local v0    # "resourceId":I
    .end local v1    # "value":Landroid/content/res/ColorStateList;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getDimension(IF)F
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .line 135
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    return v0
.end method

.method public getDimensionPixelOffset(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 139
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method public getDimensionPixelSize(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 143
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "index"    # I

    .line 53
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 55
    .local v0, "resourceId":I
    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 59
    .end local v0    # "resourceId":I
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "index"    # I

    .line 63
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 65
    .local v0, "resourceId":I
    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->get()Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 69
    .end local v0    # "resourceId":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloat(IF)F
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .line 109
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method public getFraction(IIIF)F
    .locals 1
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I
    .param p4, "defValue"    # F

    .line 155
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    return v0
.end method

.method public getIndex(I)I
    .locals 1
    .param p1, "at"    # I

    .line 81
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    return v0
.end method

.method public getIndexCount()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    return v0
.end method

.method public getInt(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 105
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getInteger(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 131
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method public getLayoutDimension(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 151
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    return v0
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 97
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceId(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 159
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 93
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .line 89
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .line 163
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 2
    .param p1, "index"    # I

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 178
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->type:I

    return v0
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .line 167
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0
.end method

.method public hasValue(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 183
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .locals 1
    .param p1, "index"    # I

    .line 187
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    return-object v0
.end method

.method public recycle()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    return-void
.end method
