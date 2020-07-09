.class public Lcom/oneplus/lib/app/appcompat/TintInfo;
.super Ljava/lang/Object;
.source "TintInfo.java"


# instance fields
.field public mHasTintList:Z

.field public mHasTintMode:Z

.field public mTintList:Landroid/content/res/ColorStateList;

.field public mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 19
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/TintInfo;->mHasTintList:Z

    .line 20
    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 21
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/TintInfo;->mHasTintMode:Z

    .line 22
    return-void
.end method
