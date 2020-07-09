.class public Lcom/oneplus/screenshot/anim/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# static fields
.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TARGET_ANIM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x4

.field private static final VALUE_TYPE_CUSTOM:I = 0x5

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VISIBILITY:Ljava/lang/String; = "visibility"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    .line 55
    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "alpha"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scaleX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scaleY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTarget(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "anim"    # Lcom/oneplus/screenshot/anim/TargetAnimator;

    .line 340
    if-nez p2, :cond_0

    .line 341
    const-string v0, "AnimatorInflater"

    const-string v1, "addTarget anim is null, turn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void

    .line 345
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/R$styleable;->Target:[I

    .line 346
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 348
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 350
    .local v1, "target":Landroid/view/View;
    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 351
    .local v2, "viewID":I
    if-lez v2, :cond_1

    .line 352
    invoke-virtual {p2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->getLoader()Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 356
    :cond_1
    if-eqz v1, :cond_6

    .line 357
    new-instance v3, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v3}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    .line 358
    .local v3, "propAnimators":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    new-instance v4, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v4}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    .line 359
    .local v4, "propStarts":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    new-instance v5, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v5}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    .line 360
    .local v5, "propEnds":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    .line 361
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 362
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 363
    .local v8, "attr":I
    const/4 v9, 0x0

    if-eqz v8, :cond_4

    const-string v10, "visibility"

    const/4 v11, 0x1

    if-eq v8, v11, :cond_3

    const/4 v11, 0x3

    if-eq v8, v11, :cond_4

    const/4 v11, 0x4

    if-eq v8, v11, :cond_4

    const/4 v11, 0x5

    if-eq v8, v11, :cond_2

    goto :goto_1

    .line 365
    :cond_2
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 367
    .local v9, "visibility":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    goto :goto_1

    .line 371
    .end local v9    # "visibility":I
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 373
    .restart local v9    # "visibility":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    goto :goto_1

    .line 381
    .end local v9    # "visibility":I
    :cond_4
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 382
    .local v9, "resID":I
    invoke-static {p0, v9}, Lcom/oneplus/screenshot/anim/InterpolatorUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    .line 383
    .local v10, "interpolator":Landroid/view/animation/Interpolator;
    sget-object v11, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 385
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {v3, v11, v10}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    nop

    .line 361
    .end local v8    # "attr":I
    .end local v9    # "resID":I
    .end local v10    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v11    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 392
    .end local v7    # "i":I
    :cond_5
    invoke-virtual {p2, v1, v3}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropAnimator(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    .line 393
    invoke-virtual {p2, v1, v4}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropStart(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    .line 394
    invoke-virtual {p2, v1, v5}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropEnd(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    .line 397
    .end local v3    # "propAnimators":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    .end local v4    # "propStarts":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    .end local v5    # "propEnds":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    .end local v6    # "N":I
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 398
    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;
    .locals 16
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parent"    # Landroid/animation/AnimatorSet;
    .param p5, "sequenceOrdering"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v0, 0x0

    .line 110
    .local v0, "anim":Landroid/animation/Animator;
    const/4 v1, 0x0

    .line 114
    .local v1, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    move-object v10, v1

    .line 116
    .end local v1    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v9, "depth":I
    .local v10, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v11, v1

    .local v11, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v9, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v1, p2

    goto/16 :goto_3

    :cond_1
    :goto_1
    const/4 v1, 0x1

    if-eq v11, v1, :cond_a

    .line 119
    const/4 v1, 0x2

    if-eq v11, v1, :cond_2

    .line 120
    move-object/from16 v1, p2

    goto :goto_0

    .line 123
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, "name":Ljava/lang/String;
    const-string v1, "objectAnimator"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    invoke-static {v6, v7}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object/from16 v1, p2

    goto :goto_2

    .line 127
    :cond_3
    const-string v1, "animator"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    const/4 v1, 0x0

    invoke-static {v6, v7, v1}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    move-object/from16 v1, p2

    goto :goto_2

    .line 129
    :cond_4
    const-string v1, "set"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v13, v1

    .line 132
    .end local v0    # "anim":Landroid/animation/Animator;
    .local v13, "anim":Landroid/animation/Animator;
    sget-object v0, Landroid/R$styleable;->AnimatorSet:[I

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 134
    .local v14, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    invoke-virtual {v14, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 136
    .local v15, "ordering":I
    move-object v4, v13

    check-cast v4, Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v5, v15

    invoke-static/range {v0 .. v5}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    .line 137
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    .end local v14    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "ordering":I
    move-object/from16 v1, p2

    move-object v0, v13

    goto :goto_2

    .end local v13    # "anim":Landroid/animation/Animator;
    .restart local v0    # "anim":Landroid/animation/Animator;
    :cond_5
    const-string v1, "targetAnimator"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 139
    move-object/from16 v1, p2

    invoke-static {v6, v7, v1}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadTargetAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-result-object v0

    .line 147
    :goto_2
    if-eqz v8, :cond_7

    .line 148
    if-nez v10, :cond_6

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 151
    :cond_6
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v12    # "name":Ljava/lang/String;
    :cond_7
    goto/16 :goto_0

    .line 140
    .restart local v12    # "name":Ljava/lang/String;
    :cond_8
    move-object/from16 v1, p2

    const-string v2, "target"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 141
    move-object v2, v0

    check-cast v2, Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-static {v6, v7, v2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->addTarget(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator;)V

    .line 142
    goto/16 :goto_0

    .line 144
    :cond_9
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown animator name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    .end local v12    # "name":Ljava/lang/String;
    :cond_a
    move-object/from16 v1, p2

    .line 154
    :goto_3
    if-eqz v8, :cond_d

    if-eqz v10, :cond_d

    .line 155
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/animation/Animator;

    .line 156
    .local v2, "animsArray":[Landroid/animation/Animator;
    const/4 v3, 0x0

    .line 157
    .local v3, "index":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 158
    .local v5, "a":Landroid/animation/Animator;
    add-int/lit8 v12, v3, 0x1

    .end local v3    # "index":I
    .local v12, "index":I
    aput-object v5, v2, v3

    .line 159
    .end local v5    # "a":Landroid/animation/Animator;
    move v3, v12

    goto :goto_4

    .line 160
    .end local v12    # "index":I
    .restart local v3    # "index":I
    :cond_b
    if-nez p5, :cond_c

    .line 161
    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_5

    .line 163
    :cond_c
    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 167
    .end local v2    # "animsArray":[Landroid/animation/Animator;
    .end local v3    # "index":I
    :cond_d
    :goto_5
    return-object v0
.end method

.method private static createTargetAnimator(Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "anim":Lcom/oneplus/screenshot/anim/TargetAnimator;
    if-eqz p1, :cond_0

    .line 404
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oneplus/screenshot/anim/TargetAnimator;

    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 406
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 408
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/anim/TargetAnimator;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 421
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    :goto_0
    goto :goto_1

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 417
    :catch_1
    move-exception v1

    .line 418
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 415
    :catch_2
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 413
    :catch_3
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 411
    :catch_4
    move-exception v1

    .line 412
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 409
    :catch_5
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 424
    :cond_0
    new-instance v1, Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-direct {v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;-><init>()V

    move-object v0, v1

    .line 427
    :goto_1
    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {v0, p2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->setLoader(Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)V

    goto :goto_2

    .line 430
    :cond_1
    const-string v1, "AnimatorInflater"

    const-string v2, "createTargetAnimator anim is null, don\'t setLoader"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_2
    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;ILcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;ILcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 76
    const-string v0, "Can\'t load animation resource ID #0x"

    const/4 v1, 0x0

    .line 78
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 79
    invoke-static {p0, v1, p2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 79
    :cond_0
    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 90
    .local v0, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 91
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    .end local p2    # "loader":Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    throw v0

    .line 80
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    .restart local p2    # "loader":Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    :catch_1
    move-exception v2

    .line 81
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 84
    .restart local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 85
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    .end local p2    # "loader":Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .end local v0    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    .restart local p2    # "loader":Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    :goto_0
    if-eqz v1, :cond_1

    .line 94
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v0
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "anim"    # Landroid/animation/ValueAnimator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 200
    move-object/from16 v0, p0

    sget-object v1, Landroid/R$styleable;->Animator:[I

    .line 201
    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 203
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    const/16 v4, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v4, v4

    .line 205
    .local v4, "duration":J
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    int-to-long v8, v8

    .line 207
    .local v8, "startDelay":J
    const/4 v10, 0x7

    invoke-virtual {v1, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 210
    .local v10, "valueType":I
    if-nez p2, :cond_0

    .line 211
    new-instance v11, Landroid/animation/ValueAnimator;

    invoke-direct {v11}, Landroid/animation/ValueAnimator;-><init>()V

    .end local p2    # "anim":Landroid/animation/ValueAnimator;
    .local v11, "anim":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 210
    .end local v11    # "anim":Landroid/animation/ValueAnimator;
    .restart local p2    # "anim":Landroid/animation/ValueAnimator;
    :cond_0
    move-object/from16 v11, p2

    .line 215
    .end local p2    # "anim":Landroid/animation/ValueAnimator;
    .restart local v11    # "anim":Landroid/animation/ValueAnimator;
    :goto_0
    const/4 v12, 0x5

    .line 216
    .local v12, "valueFromIndex":I
    const/4 v13, 0x6

    .line 218
    .local v13, "valueToIndex":I
    if-nez v10, :cond_1

    move v14, v3

    goto :goto_1

    :cond_1
    move v14, v7

    .line 220
    .local v14, "getFloats":Z
    :goto_1
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 221
    .local v15, "tvFrom":Landroid/util/TypedValue;
    if-eqz v15, :cond_2

    move/from16 v16, v3

    goto :goto_2

    :cond_2
    move/from16 v16, v7

    .line 222
    .local v16, "hasFrom":Z
    :goto_2
    if-eqz v16, :cond_3

    iget v3, v15, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    move v3, v7

    .line 223
    .local v3, "fromType":I
    :goto_3
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    .line 224
    .local v7, "tvTo":Landroid/util/TypedValue;
    if-eqz v7, :cond_4

    const/16 v18, 0x1

    goto :goto_4

    :cond_4
    const/16 v18, 0x0

    .line 225
    .local v18, "hasTo":Z
    :goto_4
    if-eqz v18, :cond_5

    iget v6, v7, Landroid/util/TypedValue;->type:I

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    .line 227
    .local v6, "toType":I
    :goto_5
    const/16 v2, 0x1c

    if-eqz v16, :cond_6

    if-lt v3, v2, :cond_6

    const/16 v2, 0x1f

    if-le v3, v2, :cond_7

    :cond_6
    if-eqz v18, :cond_8

    const/16 v2, 0x1c

    if-lt v6, v2, :cond_8

    const/16 v2, 0x1f

    if-gt v6, v2, :cond_8

    .line 232
    :cond_7
    const/4 v14, 0x0

    .line 233
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v11, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 236
    :cond_8
    if-eqz v14, :cond_e

    .line 239
    if-eqz v16, :cond_c

    .line 240
    const/4 v2, 0x5

    if-ne v3, v2, :cond_9

    .line 241
    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v19

    .local v19, "valueFrom":F
    goto :goto_6

    .line 243
    .end local v19    # "valueFrom":F
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    .line 245
    .restart local v19    # "valueFrom":F
    :goto_6
    if-eqz v18, :cond_b

    .line 246
    const/4 v2, 0x5

    if-ne v6, v2, :cond_a

    .line 247
    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .local v2, "valueTo":F
    goto :goto_7

    .line 249
    .end local v2    # "valueTo":F
    :cond_a
    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 251
    .restart local v2    # "valueTo":F
    :goto_7
    move-object/from16 v20, v7

    const/4 v7, 0x2

    .end local v7    # "tvTo":Landroid/util/TypedValue;
    .local v20, "tvTo":Landroid/util/TypedValue;
    new-array v7, v7, [F

    const/16 v17, 0x0

    aput v19, v7, v17

    move/from16 v21, v10

    const/4 v10, 0x1

    .end local v10    # "valueType":I
    .local v21, "valueType":I
    aput v2, v7, v10

    invoke-virtual {v11, v7}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_9

    .line 253
    .end local v2    # "valueTo":F
    .end local v20    # "tvTo":Landroid/util/TypedValue;
    .end local v21    # "valueType":I
    .restart local v7    # "tvTo":Landroid/util/TypedValue;
    .restart local v10    # "valueType":I
    :cond_b
    move-object/from16 v20, v7

    move/from16 v21, v10

    const/4 v10, 0x1

    const/16 v17, 0x0

    .end local v7    # "tvTo":Landroid/util/TypedValue;
    .end local v10    # "valueType":I
    .restart local v20    # "tvTo":Landroid/util/TypedValue;
    .restart local v21    # "valueType":I
    new-array v2, v10, [F

    aput v19, v2, v17

    invoke-virtual {v11, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_9

    .line 256
    .end local v19    # "valueFrom":F
    .end local v20    # "tvTo":Landroid/util/TypedValue;
    .end local v21    # "valueType":I
    .restart local v7    # "tvTo":Landroid/util/TypedValue;
    .restart local v10    # "valueType":I
    :cond_c
    move-object/from16 v20, v7

    move/from16 v21, v10

    .end local v7    # "tvTo":Landroid/util/TypedValue;
    .end local v10    # "valueType":I
    .restart local v20    # "tvTo":Landroid/util/TypedValue;
    .restart local v21    # "valueType":I
    const/4 v2, 0x5

    if-ne v6, v2, :cond_d

    .line 257
    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .restart local v2    # "valueTo":F
    goto :goto_8

    .line 259
    .end local v2    # "valueTo":F
    :cond_d
    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 261
    .restart local v2    # "valueTo":F
    :goto_8
    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v7, 0x0

    aput v2, v10, v7

    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 263
    .end local v2    # "valueTo":F
    :goto_9
    move/from16 v22, v3

    goto/16 :goto_d

    .line 266
    .end local v20    # "tvTo":Landroid/util/TypedValue;
    .end local v21    # "valueType":I
    .restart local v7    # "tvTo":Landroid/util/TypedValue;
    .restart local v10    # "valueType":I
    :cond_e
    move-object/from16 v20, v7

    move/from16 v21, v10

    .end local v7    # "tvTo":Landroid/util/TypedValue;
    .end local v10    # "valueType":I
    .restart local v20    # "tvTo":Landroid/util/TypedValue;
    .restart local v21    # "valueType":I
    if-eqz v16, :cond_14

    .line 267
    const/4 v2, 0x5

    if-ne v3, v2, :cond_f

    .line 268
    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    float-to-int v2, v7

    move v7, v2

    .local v2, "valueFrom":I
    goto :goto_a

    .line 269
    .end local v2    # "valueFrom":I
    :cond_f
    const/16 v2, 0x1c

    if-lt v3, v2, :cond_10

    const/16 v2, 0x1f

    if-gt v3, v2, :cond_10

    .line 271
    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .local v7, "valueFrom":I
    goto :goto_a

    .line 269
    .end local v7    # "valueFrom":I
    :cond_10
    const/4 v2, 0x0

    .line 273
    invoke-virtual {v1, v12, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 275
    .restart local v7    # "valueFrom":I
    :goto_a
    if-eqz v18, :cond_13

    .line 276
    const/4 v2, 0x5

    if-ne v6, v2, :cond_11

    .line 277
    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    move v10, v2

    const/4 v2, 0x0

    .local v2, "valueTo":I
    goto :goto_b

    .line 278
    .end local v2    # "valueTo":I
    :cond_11
    const/16 v2, 0x1c

    if-lt v6, v2, :cond_12

    const/16 v2, 0x1f

    if-gt v6, v2, :cond_12

    .line 280
    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .local v10, "valueTo":I
    goto :goto_b

    .line 278
    .end local v10    # "valueTo":I
    :cond_12
    const/4 v2, 0x0

    .line 282
    invoke-virtual {v1, v13, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 284
    .restart local v10    # "valueTo":I
    :goto_b
    move/from16 v22, v3

    const/4 v3, 0x2

    .end local v3    # "fromType":I
    .local v22, "fromType":I
    new-array v3, v3, [I

    aput v7, v3, v2

    const/4 v2, 0x1

    aput v10, v3, v2

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_d

    .line 286
    .end local v10    # "valueTo":I
    .end local v22    # "fromType":I
    .restart local v3    # "fromType":I
    :cond_13
    move/from16 v22, v3

    const/4 v2, 0x1

    .end local v3    # "fromType":I
    .restart local v22    # "fromType":I
    new-array v3, v2, [I

    const/4 v2, 0x0

    aput v7, v3, v2

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_d

    .line 289
    .end local v7    # "valueFrom":I
    .end local v22    # "fromType":I
    .restart local v3    # "fromType":I
    :cond_14
    move/from16 v22, v3

    .end local v3    # "fromType":I
    .restart local v22    # "fromType":I
    if-eqz v18, :cond_17

    .line 290
    const/4 v2, 0x5

    if-ne v6, v2, :cond_15

    .line 291
    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    move v3, v2

    const/4 v2, 0x0

    .restart local v2    # "valueTo":I
    goto :goto_c

    .line 292
    .end local v2    # "valueTo":I
    :cond_15
    const/16 v2, 0x1c

    if-lt v6, v2, :cond_16

    const/16 v2, 0x1f

    if-gt v6, v2, :cond_16

    .line 294
    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .local v3, "valueTo":I
    goto :goto_c

    .line 292
    .end local v3    # "valueTo":I
    :cond_16
    const/4 v2, 0x0

    .line 296
    invoke-virtual {v1, v13, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 298
    .restart local v3    # "valueTo":I
    :goto_c
    const/4 v7, 0x1

    new-array v10, v7, [I

    aput v3, v10, v2

    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 303
    .end local v3    # "valueTo":I
    :cond_17
    :goto_d
    invoke-virtual {v11, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 304
    invoke-virtual {v11, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 306
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 307
    nop

    .line 308
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 307
    invoke-virtual {v11, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 310
    :cond_18
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 311
    nop

    .line 312
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 311
    invoke-virtual {v11, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 316
    :cond_19
    nop

    .line 317
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 318
    .local v2, "resID":I
    if-lez v2, :cond_1a

    .line 319
    invoke-static {v0, v2}, Lcom/oneplus/screenshot/anim/InterpolatorUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 321
    :cond_1a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    return-object v11
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 174
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 176
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, v0}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 178
    sget-object v1, Landroid/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 180
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    return-object v0
.end method

.method private static loadTargetAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 329
    const/4 v0, 0x0

    const-string v1, "class"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "name":Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createTargetAnimator(Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-result-object v1

    .line 333
    .local v1, "anim":Lcom/oneplus/screenshot/anim/TargetAnimator;
    invoke-static {p0, p1, v1}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 335
    return-object v1
.end method
