.class public Lcom/oneplus/screenshot/anim/InterpolatorUtils;
.super Ljava/lang/Object;
.source "InterpolatorUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InterpolatorUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createInterpolatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    .line 67
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 69
    .local v1, "depth":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_7

    :cond_0
    const/4 v2, 0x1

    if-eq v3, v2, :cond_7

    .line 72
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 73
    goto :goto_0

    .line 76
    :cond_1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 78
    .local v2, "attrs":Landroid/util/AttributeSet;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "name":Ljava/lang/String;
    const-string v5, "factorLinearInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    new-instance v5, Lcom/oneplus/screenshot/anim/FactorLinearInterpolator;

    invoke-direct {v5, p0, v2}, Lcom/oneplus/screenshot/anim/FactorLinearInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 82
    :cond_2
    const-string v5, "flashInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    new-instance v5, Lcom/oneplus/screenshot/anim/FlashInterpolator;

    invoke-direct {v5, p0, v2}, Lcom/oneplus/screenshot/anim/FlashInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 84
    :cond_3
    const-string v5, "backgroundInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 85
    new-instance v5, Lcom/oneplus/screenshot/anim/BackgroundInterpolator;

    invoke-direct {v5, p0, v2}, Lcom/oneplus/screenshot/anim/BackgroundInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 86
    :cond_4
    const-string v5, "scaleInInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 87
    new-instance v5, Lcom/oneplus/screenshot/anim/ScaleInInterpolator;

    invoke-direct {v5, p0, v2}, Lcom/oneplus/screenshot/anim/ScaleInInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 88
    :cond_5
    const-string v5, "scaleOutInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 89
    new-instance v5, Lcom/oneplus/screenshot/anim/ScaleOutInterpolator;

    invoke-direct {v5, p0, v2}, Lcom/oneplus/screenshot/anim/ScaleOutInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .line 91
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "name":Ljava/lang/String;
    :cond_6
    :goto_1
    goto :goto_0

    .line 92
    :cond_7
    return-object v0
.end method

.method public static loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 32
    const-string v0, "Can\'t load animation resource ID #0x"

    const/4 v1, 0x0

    .line 34
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 35
    invoke-static {p0, v1}, Lcom/oneplus/screenshot/anim/InterpolatorUtils;->createInterpolatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 36
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    if-nez v2, :cond_0

    .line 37
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    .line 39
    :cond_0
    nop

    .line 51
    if-eqz v1, :cond_1

    .line 52
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 39
    :cond_1
    return-object v2

    .line 51
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 48
    .local v0, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 49
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    throw v0

    .line 40
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    :catch_1
    move-exception v2

    .line 41
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 43
    .restart local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 44
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    :goto_0
    if-eqz v1, :cond_2

    .line 52
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v0
.end method
