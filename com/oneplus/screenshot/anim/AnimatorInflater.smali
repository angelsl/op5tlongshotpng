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
    .registers 3

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    .line 60
    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "alpha"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scaleX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scaleY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTarget(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator;)V
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "anim"    # Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-object/from16 v0, p0

    .line 348
    move-object/from16 v1, p2

    sget-object v2, Lcom/oneplus/screenshot/R$styleable;->Target:[I

    .line 349
    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 351
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    .line 353
    .local v4, "target":Landroid/view/View;
    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 354
    .local v6, "viewID":I
    if-lez v6, :cond_1d

    .line 355
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->getLoader()Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 359
    :cond_1d
    if-eqz v4, :cond_82

    .line 360
    new-instance v7, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v7}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    .line 361
    .local v7, "propAnimators":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    new-instance v8, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v8}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    .line 362
    .local v8, "propStarts":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    new-instance v9, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v9}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    .line 363
    .local v9, "propEnds":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    .line 364
    .local v10, "N":I
    move v11, v5

    .local v11, "i":I
    :goto_33
    if-ge v11, v10, :cond_79

    .line 365
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v12

    .line 366
    .local v12, "attr":I
    packed-switch v12, :pswitch_data_86

    .end local v12    # "attr":I
    goto :goto_76

    .line 382
    .restart local v12    # "attr":I
    :pswitch_3d
    invoke-virtual {v2, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 383
    .local v13, "resID":I
    invoke-static {v0, v13}, Lcom/oneplus/screenshot/anim/InterpolatorUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v14

    .line 384
    .local v14, "interpolator":Landroid/view/animation/Interpolator;
    sget-object v15, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 386
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v7, v5, v14}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    goto :goto_65

    .line 374
    .end local v5    # "name":Ljava/lang/String;
    .end local v13    # "resID":I
    .end local v14    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_55
    const/16 v5, 0x8

    invoke-virtual {v2, v12, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 376
    .local v5, "visibility":I
    const-string v13, "visibility"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    nop

    .line 364
    .end local v5    # "visibility":I
    .end local v12    # "attr":I
    :goto_65
    const/4 v5, 0x0

    goto :goto_76

    .line 368
    .restart local v12    # "attr":I
    :pswitch_67
    const/4 v5, 0x0

    invoke-virtual {v2, v12, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 370
    .local v13, "visibility":I
    const-string v14, "visibility"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    nop

    .line 364
    .end local v12    # "attr":I
    .end local v13    # "visibility":I
    :goto_76
    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    .line 391
    .end local v11    # "i":I
    :cond_79
    invoke-virtual {v1, v4, v7}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropAnimator(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    .line 392
    invoke-virtual {v1, v4, v8}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropStart(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    .line 393
    invoke-virtual {v1, v4, v9}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropEnd(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    .line 396
    .end local v7    # "propAnimators":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    .end local v8    # "propStarts":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    .end local v9    # "propEnds":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    .end local v10    # "N":I
    :cond_82
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 397
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_67
        :pswitch_55
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
    .end packed-switch
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;
    .registers 9
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
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
    .registers 22
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

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "anim":Landroid/animation/Animator;
    const/4 v1, 0x0

    .line 117
    .local v1, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move-object v9, v1

    .end local v1    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v2, "depth":I
    .local v9, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :goto_d
    move v10, v2

    .line 119
    .end local v2    # "depth":I
    .local v10, "depth":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v11, v1

    .local v11, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v10, :cond_1d

    goto :goto_21

    .line 157
    :cond_1d
    move-object/from16 v1, p2

    goto/16 :goto_c6

    .line 119
    :cond_21
    :goto_21
    const/4 v1, 0x1

    if-eq v11, v1, :cond_1d

    .line 122
    const/4 v1, 0x2

    if-eq v11, v1, :cond_2c

    .line 123
    nop

    .line 117
    move-object/from16 v1, p2

    goto/16 :goto_a8

    .line 126
    :cond_2c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, "name":Ljava/lang/String;
    const-string v1, "objectAnimator"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 129
    invoke-static {v6, v7}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 150
    :goto_3c
    move-object/from16 v1, p2

    goto :goto_89

    .line 130
    :cond_3f
    const-string v1, "animator"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 131
    const/4 v1, 0x0

    invoke-static {v6, v7, v1}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_3c

    .line 132
    :cond_4d
    const-string v1, "set"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 134
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v13, v1

    .line 135
    .end local v0    # "anim":Landroid/animation/Animator;
    .local v13, "anim":Landroid/animation/Animator;
    sget-object v0, Landroid/R$styleable;->AnimatorSet:[I

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 137
    .local v14, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    invoke-virtual {v14, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 139
    .local v15, "ordering":I
    move-object v4, v13

    check-cast v4, Landroid/animation/AnimatorSet;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    move v5, v15

    invoke-static/range {v0 .. v5}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    .line 140
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    .end local v14    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "ordering":I
    nop

    .line 150
    move-object/from16 v1, p2

    move-object v0, v13

    goto :goto_89

    .line 141
    .end local v13    # "anim":Landroid/animation/Animator;
    .restart local v0    # "anim":Landroid/animation/Animator;
    :cond_7b
    const-string v1, "targetAnimator"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 142
    move-object/from16 v1, p2

    invoke-static {v6, v7, v1}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadTargetAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-result-object v0

    .line 150
    :goto_89
    if-eqz v8, :cond_96

    .line 151
    if-nez v9, :cond_93

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    .line 154
    :cond_93
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v12    # "name":Ljava/lang/String;
    :cond_96
    goto :goto_a8

    .line 143
    .restart local v12    # "name":Ljava/lang/String;
    :cond_97
    move-object/from16 v1, p2

    const-string v2, "target"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 144
    move-object v2, v0

    check-cast v2, Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-static {v6, v7, v2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->addTarget(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator;)V

    .line 145
    nop

    .line 117
    .end local v10    # "depth":I
    .end local v11    # "type":I
    .end local v12    # "name":Ljava/lang/String;
    .restart local v2    # "depth":I
    :goto_a8
    move v2, v10

    goto/16 :goto_d

    .line 147
    .end local v2    # "depth":I
    .restart local v10    # "depth":I
    .restart local v11    # "type":I
    .restart local v12    # "name":Ljava/lang/String;
    :cond_ab
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

    .line 157
    .end local v12    # "name":Ljava/lang/String;
    :goto_c6
    if-eqz v8, :cond_f1

    if-eqz v9, :cond_f1

    .line 158
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/animation/Animator;

    .line 159
    .local v2, "animsArray":[Landroid/animation/Animator;
    const/4 v3, 0x0

    .line 160
    .local v3, "index":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 161
    .local v5, "a":Landroid/animation/Animator;
    add-int/lit8 v12, v3, 0x1

    .local v12, "index":I
    aput-object v5, v2, v3

    .line 162
    .end local v3    # "index":I
    .end local v5    # "a":Landroid/animation/Animator;
    nop

    .line 160
    move v3, v12

    goto :goto_d5

    .line 163
    .end local v12    # "index":I
    .restart local v3    # "index":I
    :cond_e8
    if-nez p5, :cond_ee

    .line 164
    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_f1

    .line 166
    :cond_ee
    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 170
    .end local v2    # "animsArray":[Landroid/animation/Animator;
    .end local v3    # "index":I
    :cond_f1
    :goto_f1
    return-object v0
.end method

.method private static createTargetAnimator(Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "anim":Lcom/oneplus/screenshot/anim/TargetAnimator;
    if-eqz p1, :cond_40

    .line 403
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oneplus/screenshot/anim/TargetAnimator;

    .line 404
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 405
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 407
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/anim/TargetAnimator;
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_20} :catch_3b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_20} :catch_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_20} :catch_31
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_20} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_20} :catch_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_20} :catch_22

    move-object v0, v2

    .line 420
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    :goto_21
    goto :goto_46

    .line 418
    :catch_22
    move-exception v1

    .line 419
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_21

    .line 416
    :catch_27
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_21

    .line 414
    :catch_2c
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InstantiationException;
    goto :goto_21

    .line 412
    :catch_31
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_21

    .line 410
    :catch_36
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_21

    .line 408
    :catch_3b
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/ClassCastException;
    goto :goto_21

    .line 423
    :cond_40
    new-instance v1, Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-direct {v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;-><init>()V

    move-object v0, v1

    .line 425
    :goto_46
    invoke-virtual {v0, p2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->setLoader(Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)V

    .line 426
    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;ILcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;ILcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 84
    invoke-static {p0, v0, p2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;

    move-result-object v1
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_e} :catch_35
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_16
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    .line 98
    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 84
    :cond_13
    return-object v1

    .line 98
    :catchall_14
    move-exception v1

    goto :goto_54

    .line 91
    :catch_16
    move-exception v1

    .line 92
    .local v1, "ex":Ljava/io/IOException;
    :try_start_17
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 96
    throw v2

    .line 85
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catch_35
    move-exception v1

    .line 86
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 90
    throw v2
    :try_end_54
    .catchall {:try_start_17 .. :try_end_54} :catchall_14

    .line 98
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :goto_54
    if-eqz v0, :cond_59

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_59
    throw v1
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "anim"    # Landroid/animation/ValueAnimator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 203
    sget-object v1, Landroid/R$styleable;->Animator:[I

    .line 204
    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 206
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    const/16 v4, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v4, v4

    .line 208
    .local v4, "duration":J
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    int-to-long v8, v8

    .line 210
    .local v8, "startDelay":J
    const/4 v10, 0x7

    invoke-virtual {v1, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 213
    .local v10, "valueType":I
    if-nez p2, :cond_27

    .line 214
    new-instance v12, Landroid/animation/ValueAnimator;

    invoke-direct {v12}, Landroid/animation/ValueAnimator;-><init>()V

    move-object v11, v12

    .end local p2    # "anim":Landroid/animation/ValueAnimator;
    .local v11, "anim":Landroid/animation/ValueAnimator;
    goto :goto_29

    .line 218
    .end local v11    # "anim":Landroid/animation/ValueAnimator;
    .restart local p2    # "anim":Landroid/animation/ValueAnimator;
    :cond_27
    move-object/from16 v11, p2

    .end local p2    # "anim":Landroid/animation/ValueAnimator;
    .restart local v11    # "anim":Landroid/animation/ValueAnimator;
    :goto_29
    const/4 v12, 0x0

    .line 220
    .local v12, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v13, 0x5

    .line 221
    .local v13, "valueFromIndex":I
    const/4 v14, 0x6

    .line 223
    .local v14, "valueToIndex":I
    if-nez v10, :cond_30

    move v15, v3

    goto :goto_31

    :cond_30
    move v15, v7

    .line 225
    .local v15, "getFloats":Z
    :goto_31
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 226
    .local v3, "tvFrom":Landroid/util/TypedValue;
    if-eqz v3, :cond_3a

    const/16 v16, 0x1

    goto :goto_3c

    :cond_3a
    move/from16 v16, v7

    .line 227
    .local v16, "hasFrom":Z
    :goto_3c
    if-eqz v16, :cond_41

    iget v7, v3, Landroid/util/TypedValue;->type:I

    goto :goto_42

    :cond_41
    const/4 v7, 0x0

    .line 228
    .local v7, "fromType":I
    :goto_42
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 229
    .local v6, "tvTo":Landroid/util/TypedValue;
    if-eqz v6, :cond_4b

    const/16 v18, 0x1

    goto :goto_4d

    :cond_4b
    const/16 v18, 0x0

    .line 230
    .local v18, "hasTo":Z
    :goto_4d
    if-eqz v18, :cond_52

    iget v2, v6, Landroid/util/TypedValue;->type:I

    goto :goto_53

    :cond_52
    const/4 v2, 0x0

    .line 232
    .local v2, "toType":I
    :goto_53
    move-object/from16 v19, v3

    .end local v3    # "tvFrom":Landroid/util/TypedValue;
    .local v19, "tvFrom":Landroid/util/TypedValue;
    const/16 v3, 0x1c

    if-eqz v16, :cond_60

    if-lt v7, v3, :cond_60

    const/16 v3, 0x1f

    if-le v7, v3, :cond_6c

    goto :goto_62

    :cond_60
    const/16 v3, 0x1f

    :goto_62
    if-eqz v18, :cond_75

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_75

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_75

    .line 237
    :cond_6c
    const/4 v15, 0x0

    .line 238
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 241
    :cond_75
    if-eqz v15, :cond_d8

    .line 244
    if-eqz v16, :cond_b8

    .line 245
    const/4 v3, 0x5

    if-ne v7, v3, :cond_82

    .line 246
    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    .local v20, "valueFrom":F
    goto :goto_87

    .line 248
    .end local v20    # "valueFrom":F
    :cond_82
    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    .line 250
    .restart local v20    # "valueFrom":F
    :goto_87
    if-eqz v18, :cond_a9

    .line 251
    const/4 v3, 0x5

    if-ne v2, v3, :cond_92

    .line 252
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .local v3, "valueTo":F
    goto :goto_97

    .line 254
    .end local v3    # "valueTo":F
    :cond_92
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 256
    .restart local v3    # "valueTo":F
    :goto_97
    move-object/from16 v21, v6

    const/4 v6, 0x2

    new-array v6, v6, [F

    .end local v6    # "tvTo":Landroid/util/TypedValue;
    .local v21, "tvTo":Landroid/util/TypedValue;
    const/16 v17, 0x0

    aput v20, v6, v17

    move/from16 v22, v10

    const/4 v10, 0x1

    aput v3, v6, v10

    .end local v10    # "valueType":I
    .local v22, "valueType":I
    invoke-virtual {v11, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_d3

    .line 258
    .end local v3    # "valueTo":F
    .end local v21    # "tvTo":Landroid/util/TypedValue;
    .end local v22    # "valueType":I
    .restart local v6    # "tvTo":Landroid/util/TypedValue;
    .restart local v10    # "valueType":I
    :cond_a9
    move-object/from16 v21, v6

    move/from16 v22, v10

    const/4 v10, 0x1

    const/16 v17, 0x0

    .end local v6    # "tvTo":Landroid/util/TypedValue;
    .end local v10    # "valueType":I
    .restart local v21    # "tvTo":Landroid/util/TypedValue;
    .restart local v22    # "valueType":I
    new-array v3, v10, [F

    aput v20, v3, v17

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_d3

    .line 261
    .end local v20    # "valueFrom":F
    .end local v21    # "tvTo":Landroid/util/TypedValue;
    .end local v22    # "valueType":I
    .restart local v6    # "tvTo":Landroid/util/TypedValue;
    .restart local v10    # "valueType":I
    :cond_b8
    move-object/from16 v21, v6

    move/from16 v22, v10

    .end local v6    # "tvTo":Landroid/util/TypedValue;
    .end local v10    # "valueType":I
    .restart local v21    # "tvTo":Landroid/util/TypedValue;
    .restart local v22    # "valueType":I
    const/4 v3, 0x5

    if-ne v2, v3, :cond_c5

    .line 262
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .restart local v3    # "valueTo":F
    goto :goto_ca

    .line 264
    .end local v3    # "valueTo":F
    :cond_c5
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 266
    .restart local v3    # "valueTo":F
    :goto_ca
    const/4 v6, 0x1

    new-array v10, v6, [F

    const/4 v6, 0x0

    aput v3, v10, v6

    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 268
    .end local v3    # "valueTo":F
    :goto_d3
    nop

    .line 308
    move/from16 v23, v7

    goto/16 :goto_163

    .line 271
    .end local v21    # "tvTo":Landroid/util/TypedValue;
    .end local v22    # "valueType":I
    .restart local v6    # "tvTo":Landroid/util/TypedValue;
    .restart local v10    # "valueType":I
    :cond_d8
    move-object/from16 v21, v6

    move/from16 v22, v10

    .end local v6    # "tvTo":Landroid/util/TypedValue;
    .end local v10    # "valueType":I
    .restart local v21    # "tvTo":Landroid/util/TypedValue;
    .restart local v22    # "valueType":I
    if-eqz v16, :cond_138

    .line 272
    const/4 v3, 0x5

    if-ne v7, v3, :cond_e9

    .line 273
    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v3, v6

    .line 278
    .local v3, "valueFrom":I
    move v6, v3

    goto :goto_fc

    .line 274
    .end local v3    # "valueFrom":I
    :cond_e9
    const/16 v3, 0x1c

    if-lt v7, v3, :cond_f7

    const/16 v3, 0x1f

    if-gt v7, v3, :cond_f7

    .line 276
    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .local v6, "valueFrom":I
    goto :goto_fc

    .line 278
    .end local v6    # "valueFrom":I
    :cond_f7
    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .restart local v6    # "valueFrom":I
    :goto_fc
    move v3, v6

    .line 280
    .end local v6    # "valueFrom":I
    .restart local v3    # "valueFrom":I
    if-eqz v18, :cond_12c

    .line 281
    const/4 v6, 0x5

    if-ne v2, v6, :cond_10b

    .line 282
    const/4 v6, 0x0

    invoke-virtual {v1, v14, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    .line 287
    .local v6, "valueTo":I
    move v10, v6

    const/4 v6, 0x0

    goto :goto_11e

    .line 283
    .end local v6    # "valueTo":I
    :cond_10b
    const/16 v6, 0x1c

    if-lt v2, v6, :cond_119

    const/16 v6, 0x1f

    if-gt v2, v6, :cond_119

    .line 285
    const/4 v6, 0x0

    invoke-virtual {v1, v14, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .local v10, "valueTo":I
    goto :goto_11e

    .line 287
    .end local v10    # "valueTo":I
    :cond_119
    const/4 v6, 0x0

    invoke-virtual {v1, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 289
    .restart local v10    # "valueTo":I
    :goto_11e
    move/from16 v23, v7

    const/4 v7, 0x2

    new-array v7, v7, [I

    .end local v7    # "fromType":I
    .local v23, "fromType":I
    aput v3, v7, v6

    const/4 v6, 0x1

    aput v10, v7, v6

    invoke-virtual {v11, v7}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_163

    .line 291
    .end local v10    # "valueTo":I
    .end local v23    # "fromType":I
    .restart local v7    # "fromType":I
    :cond_12c
    move/from16 v23, v7

    const/4 v6, 0x1

    .end local v7    # "fromType":I
    .restart local v23    # "fromType":I
    new-array v7, v6, [I

    const/4 v6, 0x0

    aput v3, v7, v6

    invoke-virtual {v11, v7}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_163

    .line 294
    .end local v3    # "valueFrom":I
    .end local v23    # "fromType":I
    .restart local v7    # "fromType":I
    :cond_138
    move/from16 v23, v7

    .end local v7    # "fromType":I
    .restart local v23    # "fromType":I
    if-eqz v18, :cond_163

    .line 295
    const/4 v3, 0x5

    if-ne v2, v3, :cond_148

    .line 296
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    .line 301
    .local v3, "valueTo":I
    move v6, v3

    const/4 v3, 0x0

    goto :goto_15b

    .line 297
    .end local v3    # "valueTo":I
    :cond_148
    const/16 v3, 0x1c

    if-lt v2, v3, :cond_156

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_156

    .line 299
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .restart local v6    # "valueTo":I
    goto :goto_15b

    .line 301
    .end local v6    # "valueTo":I
    :cond_156
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 303
    .restart local v6    # "valueTo":I
    :goto_15b
    const/4 v7, 0x1

    new-array v10, v7, [I

    aput v6, v10, v3

    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 308
    .end local v6    # "valueTo":I
    :cond_163
    :goto_163
    invoke-virtual {v11, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 309
    invoke-virtual {v11, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 311
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_179

    .line 312
    nop

    .line 313
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 312
    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 315
    :cond_179
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_189

    .line 316
    nop

    .line 317
    const/4 v6, 0x1

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 316
    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 320
    :cond_189
    if-eqz v12, :cond_18e

    .line 321
    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 324
    :cond_18e
    nop

    .line 325
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 326
    .local v3, "resID":I
    if-lez v3, :cond_19d

    .line 327
    invoke-static {v0, v3}, Lcom/oneplus/screenshot/anim/InterpolatorUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    :cond_19d
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 331
    return-object v11
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 177
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 179
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, v0}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 181
    sget-object v1, Landroid/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 183
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    return-object v0
.end method

.method private static loadTargetAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 337
    const-string v0, "class"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "name":Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createTargetAnimator(Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-result-object v1

    .line 341
    .local v1, "anim":Lcom/oneplus/screenshot/anim/TargetAnimator;
    invoke-static {p0, p1, v1}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 343
    return-object v1
.end method
