.class public Lcom/oneplus/screenshot/anim/InterpolatorUtils;
.super Ljava/lang/Object;
.source "InterpolatorUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InterpolatorUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createInterpolatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .registers 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v2, 0x0

    .line 69
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 71
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    .local v1, "depth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_6b

    .line 72
    :cond_12
    const/4 v5, 0x1

    if-eq v4, v5, :cond_6b

    .line 74
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 78
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 80
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v5, "factorLinearInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 83
    new-instance v2, Lcom/oneplus/screenshot/anim/FactorLinearInterpolator;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/screenshot/anim/FactorLinearInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_5

    .line 84
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_2f
    const-string/jumbo v5, "flashInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 85
    new-instance v2, Lcom/oneplus/screenshot/anim/FlashInterpolator;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/screenshot/anim/FlashInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_5

    .line 86
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_3e
    const-string/jumbo v5, "backgroundInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 87
    new-instance v2, Lcom/oneplus/screenshot/anim/BackgroundInterpolator;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/screenshot/anim/BackgroundInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_5

    .line 88
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_4d
    const-string/jumbo v5, "scaleInInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 89
    new-instance v2, Lcom/oneplus/screenshot/anim/ScaleInInterpolator;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/screenshot/anim/ScaleInInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_5

    .line 90
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_5c
    const-string/jumbo v5, "scaleOutInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 91
    new-instance v2, Lcom/oneplus/screenshot/anim/ScaleOutInterpolator;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/screenshot/anim/ScaleOutInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_5

    .line 94
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v3    # "name":Ljava/lang/String;
    :cond_6b
    return-object v2
.end method

.method public static loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v3, 0x0

    .line 36
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 37
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v3}, Lcom/oneplus/screenshot/anim/InterpolatorUtils;->createInterpolatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 38
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    if-nez v2, :cond_13

    .line 39
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_12} :catch_42
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_19
    .catchall {:try_start_1 .. :try_end_12} :catchall_3b

    move-result-object v2

    .line 53
    :cond_13
    if-eqz v3, :cond_18

    .line 54
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 41
    :cond_18
    return-object v2

    .line 47
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_19
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1a
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t load animation resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 50
    .local v4, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 51
    throw v4
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_3b

    .line 52
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v4    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_3b
    move-exception v5

    .line 53
    if-eqz v3, :cond_41

    .line 54
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 52
    :cond_41
    throw v5

    .line 42
    :catch_42
    move-exception v1

    .line 43
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_43
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t load animation resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 45
    .restart local v4    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 46
    throw v4
    :try_end_64
    .catchall {:try_start_43 .. :try_end_64} :catchall_3b
.end method
