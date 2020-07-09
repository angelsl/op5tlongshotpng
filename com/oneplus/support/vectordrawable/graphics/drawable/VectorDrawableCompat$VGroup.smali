.class Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VGroup"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private final mLocalMatrix:Landroid/graphics/Matrix;

.field private mPivotX:F

.field private mPivotY:F

.field mRotate:F

.field private mScaleX:F

.field private mScaleY:F

.field private final mStackedMatrix:Landroid/graphics/Matrix;

.field private mThemeAttrs:[I

.field private mTranslateX:F

.field private mTranslateY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1294
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1295
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1296
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1297
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1298
    iput v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1299
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1300
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1304
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 1307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1350
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Lcom/oneplus/support/collection/ArrayMap;)V
    .locals 6
    .param p1, "copy"    # Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1309
    .local p2, "targetsMap":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1294
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1295
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1296
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1297
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1298
    iput v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1299
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1300
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1304
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 1307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1310
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1311
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1312
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1313
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1314
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1315
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1316
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1317
    iget-object v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I

    .line 1318
    iget-object v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1319
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I

    .line 1320
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1321
    invoke-virtual {p2, v0, p0}, Lcom/oneplus/support/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1326
    iget-object v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1327
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1328
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1329
    .local v2, "copyChild":Ljava/lang/Object;
    instance-of v3, v2, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v3, :cond_1

    .line 1330
    move-object v3, v2

    check-cast v3, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1331
    .local v3, "copyGroup":Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    iget-object v4, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    new-instance v5, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v5, v3, p2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Lcom/oneplus/support/collection/ArrayMap;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    .end local v3    # "copyGroup":Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    goto :goto_2

    .line 1333
    :cond_1
    const/4 v3, 0x0

    .line 1334
    .local v3, "newPath":Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    instance-of v4, v2, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    if-eqz v4, :cond_2

    .line 1335
    new-instance v4, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    move-object v5, v2

    check-cast v5, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    invoke-direct {v4, v5}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;-><init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;)V

    move-object v3, v4

    goto :goto_1

    .line 1336
    :cond_2
    instance-of v4, v2, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;

    if-eqz v4, :cond_4

    .line 1337
    new-instance v4, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;

    move-object v5, v2

    check-cast v5, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;

    invoke-direct {v4, v5}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;-><init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;)V

    move-object v3, v4

    .line 1341
    :goto_1
    iget-object v4, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    iget-object v4, v3, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1343
    iget-object v4, v3, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    invoke-virtual {p2, v4, v3}, Lcom/oneplus/support/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    .end local v2    # "copyChild":Ljava/lang/Object;
    .end local v3    # "newPath":Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1339
    .restart local v2    # "copyChild":Ljava/lang/Object;
    .restart local v3    # "newPath":Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unknown object in the tree!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1347
    .end local v1    # "i":I
    .end local v2    # "copyChild":Ljava/lang/Object;
    .end local v3    # "newPath":Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    :cond_5
    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1285
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1285
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private updateLocalMatrix()V
    .locals 4

    .line 1406
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1407
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    neg-float v1, v1

    iget v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1408
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    iget v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1409
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1410
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    iget v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    iget v3, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1411
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I

    .line 1375
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    const-string v1, "rotation"

    const/4 v2, 0x5

    invoke-static {p1, p2, v1, v2, v0}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1378
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1379
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1382
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    const-string v1, "scaleX"

    const/4 v2, 0x3

    invoke-static {p1, p2, v1, v2, v0}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1386
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    const-string v1, "scaleY"

    const/4 v2, 0x4

    invoke-static {p1, p2, v1, v2, v0}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1389
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    const-string v1, "translateX"

    const/4 v2, 0x6

    invoke-static {p1, p2, v1, v2, v0}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1391
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    const-string v1, "translateY"

    const/4 v2, 0x7

    invoke-static {p1, p2, v1, v2, v0}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1394
    nop

    .line 1395
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1396
    .local v0, "groupName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1397
    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1400
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1401
    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 1353
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1357
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .line 1429
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .line 1442
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 1416
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 1455
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 1468
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    .line 1481
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .line 1494
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1361
    sget-object v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP:[I

    invoke-static {p1, p3, p2, v0}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1363
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0, p4}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1364
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1365
    return-void
.end method

.method public setPivotX(F)V
    .locals 1
    .param p1, "pivotX"    # F

    .line 1434
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1435
    iput p1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1436
    invoke-direct {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1438
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1
    .param p1, "pivotY"    # F

    .line 1447
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1448
    iput p1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1449
    invoke-direct {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1451
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .line 1421
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1422
    iput p1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1423
    invoke-direct {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1425
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .param p1, "scaleX"    # F

    .line 1460
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1461
    iput p1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1462
    invoke-direct {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1464
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .param p1, "scaleY"    # F

    .line 1473
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1474
    iput p1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1475
    invoke-direct {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1477
    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1
    .param p1, "translateX"    # F

    .line 1486
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1487
    iput p1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1488
    invoke-direct {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1490
    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1
    .param p1, "translateY"    # F

    .line 1499
    iget v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1500
    iput p1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1501
    invoke-direct {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1503
    :cond_0
    return-void
.end method
