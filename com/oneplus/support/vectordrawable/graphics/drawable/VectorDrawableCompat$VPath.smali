.class Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPath"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field protected mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

.field mPathName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    .line 1516
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;)V
    .locals 1
    .param p1, "copy"    # Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;

    .line 1540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    .line 1541
    iget-object v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    .line 1542
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I

    .line 1543
    iget-object v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    invoke-static {v0}, Lcom/oneplus/support/core/graphics/PathParser;->deepCopyNodes([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    .line 1544
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 1562
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 1558
    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;
    .locals 1

    .line 1571
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .line 1554
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    return-object v0
.end method

.method public isClipPath()Z
    .locals 1

    .line 1565
    const/4 v0, 0x0

    return v0
.end method

.method public nodesToString([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)Ljava/lang/String;
    .locals 6
    .param p1, "nodes"    # [Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    .line 1529
    const-string v0, " "

    .line 1530
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    iget-char v3, v3, Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;->mType:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1532
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 1533
    .local v2, "params":[F
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 1534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1533
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1530
    .end local v2    # "params":[F
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1537
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public printVPath(I)V
    .locals 4
    .param p1, "level"    # I

    .line 1519
    const-string v0, ""

    .line 1520
    .local v0, "indent":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1523
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "current path is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pathData is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    .line 1524
    invoke-virtual {p0, v2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->nodesToString([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1523
    const-string v2, "VectorDrawableCompat"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    return-void
.end method

.method public setPathData([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)V
    .locals 1
    .param p1, "nodes"    # [Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    .line 1576
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    invoke-static {v0, p1}, Lcom/oneplus/support/core/graphics/PathParser;->canMorph([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1578
    invoke-static {p1}, Lcom/oneplus/support/core/graphics/PathParser;->deepCopyNodes([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    goto :goto_0

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    invoke-static {v0, p1}, Lcom/oneplus/support/core/graphics/PathParser;->updateNodes([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)V

    .line 1582
    :goto_0
    return-void
.end method

.method public toPath(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    .line 1547
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1548
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    if-eqz v0, :cond_0

    .line 1549
    invoke-static {v0, p1}, Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;->nodesToPath([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V

    .line 1551
    :cond_0
    return-void
.end method
