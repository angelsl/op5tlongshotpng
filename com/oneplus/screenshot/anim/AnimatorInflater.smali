.class public Lcom/oneplus/screenshot/anim/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# static fields
.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TARGET_ANIM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
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

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    .line 60
    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "alpha"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "scaleX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "scaleY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTarget(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator;)V
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "anim"    # Lcom/oneplus/screenshot/anim/TargetAnimator;

    .prologue
    .line 349
    sget-object v15, Lcom/oneplus/screenshot/R$styleable;->Target:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 351
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    .line 353
    .local v12, "target":Landroid/view/View;
    const/4 v15, 0x0

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 354
    .local v13, "viewID":I
    if-lez v13, :cond_1e

    .line 355
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->getLoader()Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    move-result-object v15

    invoke-interface {v15, v13}, Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 359
    .end local v12    # "target":Landroid/view/View;
    :cond_1e
    if-eqz v12, :cond_8f

    .line 360
    new-instance v8, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v8}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    .line 361
    .local v8, "propAnimators":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    new-instance v10, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v10}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    .line 362
    .local v10, "propStarts":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    new-instance v9, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v9}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    .line 363
    .local v9, "propEnds":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 364
    .local v2, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_34
    if-ge v5, v2, :cond_80

    .line 365
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 366
    .local v4, "attr":I
    packed-switch v4, :pswitch_data_94

    .line 364
    :goto_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 368
    :pswitch_40
    const/4 v15, 0x0

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 370
    .local v14, "visibility":I
    const-string/jumbo v15, "visibility"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 374
    .end local v14    # "visibility":I
    :pswitch_52
    const/16 v15, 0x8

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 376
    .restart local v14    # "visibility":I
    const-string/jumbo v15, "visibility"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 382
    .end local v14    # "visibility":I
    :pswitch_65
    const/4 v15, 0x0

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 383
    .local v11, "resID":I
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/oneplus/screenshot/anim/InterpolatorUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 384
    .local v6, "interpolator":Landroid/view/animation/Interpolator;
    sget-object v15, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 386
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v8, v7, v6}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 391
    .end local v4    # "attr":I
    .end local v6    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v7    # "name":Ljava/lang/String;
    .end local v11    # "resID":I
    :cond_80
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v8}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropAnimator(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    .line 392
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v10}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropStart(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    .line 393
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v9}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropEnd(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    .line 396
    .end local v2    # "N":I
    .end local v5    # "i":I
    .end local v8    # "propAnimators":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    .end local v9    # "propEnds":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    .end local v10    # "propStarts":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    :cond_8f
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 397
    return-void

    .line 366
    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_40
        :pswitch_52
        :pswitch_65
        :pswitch_65
        :pswitch_65
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

    .prologue
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
    .registers 26
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

    .prologue
    .line 112
    const/4 v12, 0x0

    .line 113
    .local v12, "anim":Landroid/animation/Animator;
    const/4 v14, 0x0

    .line 117
    .local v14, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 119
    .end local v12    # "anim":Landroid/animation/Animator;
    .end local v14    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v15, "depth":I
    :cond_6
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, "type":I
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_15

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v15, :cond_d5

    .line 120
    :cond_15
    const/4 v3, 0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_d5

    .line 122
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_6

    .line 126
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 128
    .local v18, "name":Ljava/lang/String;
    const-string/jumbo v3, "objectAnimator"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 150
    .local v12, "anim":Landroid/animation/Animator;
    :goto_36
    if-eqz p4, :cond_6

    .line 151
    if-nez v14, :cond_3f

    .line 152
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 154
    :cond_3f
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 130
    .end local v12    # "anim":Landroid/animation/Animator;
    :cond_43
    const-string/jumbo v3, "animator"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 131
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v3}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v12

    .restart local v12    # "anim":Landroid/animation/Animator;
    goto :goto_36

    .line 132
    .end local v12    # "anim":Landroid/animation/Animator;
    :cond_58
    const-string/jumbo v3, "set"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 134
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 136
    .restart local v12    # "anim":Landroid/animation/Animator;
    sget-object v3, Landroid/R$styleable;->AnimatorSet:[I

    .line 135
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 137
    .local v10, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .line 138
    const/4 v4, 0x0

    .line 137
    invoke-virtual {v10, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .local v8, "ordering":I
    move-object v7, v12

    .line 139
    check-cast v7, Landroid/animation/AnimatorSet;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v3 .. v8}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    .line 140
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_36

    .line 141
    .end local v8    # "ordering":I
    .end local v10    # "a":Landroid/content/res/TypedArray;
    .end local v12    # "anim":Landroid/animation/Animator;
    :cond_8a
    const-string/jumbo v3, "targetAnimator"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadTargetAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-result-object v12

    .restart local v12    # "anim":Landroid/animation/Animator;
    goto :goto_36

    .line 143
    .end local v12    # "anim":Landroid/animation/Animator;
    :cond_a0
    const-string/jumbo v3, "target"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    move-object v3, v12

    .line 144
    check-cast v3, Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v3}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->addTarget(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator;)V

    goto/16 :goto_6

    .line 147
    :cond_b7
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown animator name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    .end local v18    # "name":Ljava/lang/String;
    :cond_d5
    if-eqz p4, :cond_ff

    if-eqz v14, :cond_ff

    .line 158
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v13, v3, [Landroid/animation/Animator;

    .line 159
    .local v13, "animsArray":[Landroid/animation/Animator;
    const/16 v16, 0x0

    .line 160
    .local v16, "index":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "a$iterator":Ljava/util/Iterator;
    :goto_e5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Animator;

    .line 161
    .local v9, "a":Landroid/animation/Animator;
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "index":I
    .local v17, "index":I
    aput-object v9, v13, v16

    move/from16 v16, v17

    .end local v17    # "index":I
    .restart local v16    # "index":I
    goto :goto_e5

    .line 163
    .end local v9    # "a":Landroid/animation/Animator;
    :cond_f8
    if-nez p5, :cond_100

    .line 164
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 170
    .end local v11    # "a$iterator":Ljava/util/Iterator;
    .end local v13    # "animsArray":[Landroid/animation/Animator;
    .end local v16    # "index":I
    :cond_ff
    :goto_ff
    return-object v12

    .line 166
    .restart local v11    # "a$iterator":Ljava/util/Iterator;
    .restart local v13    # "animsArray":[Landroid/animation/Animator;
    .restart local v16    # "index":I
    :cond_100
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_ff
.end method

.method private static createTargetAnimator(Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    .prologue
    .line 400
    const/4 v1, 0x0

    .line 401
    .local v1, "anim":Lcom/oneplus/screenshot/anim/TargetAnimator;
    if-eqz p1, :cond_45

    .line 403
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 404
    const-class v11, Lcom/oneplus/screenshot/anim/TargetAnimator;

    .line 403
    invoke-virtual {v10, v11}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 405
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 407
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-object v1, v0
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_23} :catch_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_23} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_23} :catch_36
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_23} :catch_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_23} :catch_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_23} :catch_27

    .line 425
    .end local v1    # "anim":Lcom/oneplus/screenshot/anim/TargetAnimator;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    :goto_23
    invoke-virtual {v1, p2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->setLoader(Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)V

    .line 426
    return-object v1

    .line 418
    .restart local v1    # "anim":Lcom/oneplus/screenshot/anim/TargetAnimator;
    :catch_27
    move-exception v8

    .line 419
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v8}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_23

    .line 416
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2c
    move-exception v9

    .line 417
    .local v9, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v9}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_23

    .line 414
    .end local v9    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_31
    move-exception v7

    .line 415
    .local v7, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v7}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_23

    .line 412
    .end local v7    # "e":Ljava/lang/InstantiationException;
    :catch_36
    move-exception v6

    .line 413
    .local v6, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_23

    .line 410
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_3b
    move-exception v5

    .line 411
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_23

    .line 408
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :catch_40
    move-exception v4

    .line 409
    .local v4, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v4}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_23

    .line 423
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :cond_45
    new-instance v1, Lcom/oneplus/screenshot/anim/TargetAnimator;

    .end local v1    # "anim":Lcom/oneplus/screenshot/anim/TargetAnimator;
    invoke-direct {v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;-><init>()V

    .local v1, "anim":Lcom/oneplus/screenshot/anim/TargetAnimator;
    goto :goto_23
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

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;ILcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;ILcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v2, 0x0

    .line 83
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 84
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v2, p2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_c} :catch_3c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_13
    .catchall {:try_start_1 .. :try_end_c} :catchall_35

    move-result-object v4

    .line 98
    if-eqz v2, :cond_12

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 84
    :cond_12
    return-object v4

    .line 91
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_13
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/io/IOException;
    :try_start_14
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t load animation resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 95
    .local v3, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 96
    throw v3
    :try_end_35
    .catchall {:try_start_14 .. :try_end_35} :catchall_35

    .line 97
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_35
    move-exception v4

    .line 98
    if-eqz v2, :cond_3b

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 97
    :cond_3b
    throw v4

    .line 85
    :catch_3c
    move-exception v1

    .line 87
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3d
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t load animation resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 90
    throw v3
    :try_end_5e
    .catchall {:try_start_3d .. :try_end_5e} :catchall_35
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "anim"    # Landroid/animation/ValueAnimator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 204
    sget-object v25, Landroid/R$styleable;->Animator:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 206
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v25, 0x1

    const/16 v26, 0x12c

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v25

    move/from16 v0, v25

    int-to-long v6, v0

    .line 208
    .local v6, "duration":J
    const/16 v25, 0x2

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v25

    move/from16 v0, v25

    int-to-long v14, v0

    .line 210
    .local v14, "startDelay":J
    const/16 v25, 0x7

    .line 211
    const/16 v26, 0x0

    .line 210
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    .line 213
    .local v24, "valueType":I
    if-nez p2, :cond_3d

    .line 214
    new-instance p2, Landroid/animation/ValueAnimator;

    .end local p2    # "anim":Landroid/animation/ValueAnimator;
    invoke-direct/range {p2 .. p2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 218
    .restart local p2    # "anim":Landroid/animation/ValueAnimator;
    :cond_3d
    const/4 v5, 0x0

    .line 220
    .local v5, "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v20, 0x5

    .line 221
    .local v20, "valueFromIndex":I
    const/16 v23, 0x6

    .line 223
    .local v23, "valueToIndex":I
    if-nez v24, :cond_11e

    const/4 v9, 0x1

    .line 225
    .local v9, "getFloats":Z
    :goto_45
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 226
    .local v16, "tvFrom":Landroid/util/TypedValue;
    if-eqz v16, :cond_121

    const/4 v10, 0x1

    .line 227
    .local v10, "hasFrom":Z
    :goto_4e
    if-eqz v10, :cond_124

    move-object/from16 v0, v16

    iget v8, v0, Landroid/util/TypedValue;->type:I

    .line 228
    .local v8, "fromType":I
    :goto_54
    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v17

    .line 229
    .local v17, "tvTo":Landroid/util/TypedValue;
    if-eqz v17, :cond_127

    const/4 v11, 0x1

    .line 230
    .local v11, "hasTo":Z
    :goto_5d
    if-eqz v11, :cond_12a

    move-object/from16 v0, v17

    iget v13, v0, Landroid/util/TypedValue;->type:I

    .line 232
    .local v13, "toType":I
    :goto_63
    if-eqz v10, :cond_12d

    const/16 v25, 0x1c

    move/from16 v0, v25

    if-lt v8, v0, :cond_12d

    .line 233
    const/16 v25, 0x1f

    move/from16 v0, v25

    if-gt v8, v0, :cond_12d

    .line 237
    :goto_71
    const/4 v9, 0x0

    .line 238
    new-instance v25, Landroid/animation/ArgbEvaluator;

    invoke-direct/range {v25 .. v25}, Landroid/animation/ArgbEvaluator;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 241
    :cond_7e
    if-eqz v9, :cond_19a

    .line 244
    if-eqz v10, :cond_16a

    .line 245
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v8, v0, :cond_13d

    .line 246
    const/16 v25, 0x0

    move/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    .line 250
    .local v18, "valueFrom":F
    :goto_92
    if-eqz v11, :cond_155

    .line 251
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v13, v0, :cond_149

    .line 252
    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v21

    .line 256
    .local v21, "valueTo":F
    :goto_a4
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v18, v25, v26

    const/16 v26, 0x1

    aput v21, v25, v26

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 308
    .end local v18    # "valueFrom":F
    .end local v21    # "valueTo":F
    :cond_bb
    :goto_bb
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 309
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 311
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    if-eqz v25, :cond_e2

    .line 313
    const/16 v25, 0x3

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v25

    .line 312
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 315
    :cond_e2
    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    if-eqz v25, :cond_ff

    .line 317
    const/16 v25, 0x4

    .line 318
    const/16 v26, 0x1

    .line 317
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v25

    .line 316
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 325
    :cond_ff
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 326
    .local v12, "resID":I
    if-lez v12, :cond_11a

    .line 327
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/oneplus/screenshot/anim/InterpolatorUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    :cond_11a
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 331
    return-object p2

    .line 223
    .end local v8    # "fromType":I
    .end local v9    # "getFloats":Z
    .end local v10    # "hasFrom":Z
    .end local v11    # "hasTo":Z
    .end local v12    # "resID":I
    .end local v13    # "toType":I
    .end local v16    # "tvFrom":Landroid/util/TypedValue;
    .end local v17    # "tvTo":Landroid/util/TypedValue;
    :cond_11e
    const/4 v9, 0x0

    .restart local v9    # "getFloats":Z
    goto/16 :goto_45

    .line 226
    .restart local v16    # "tvFrom":Landroid/util/TypedValue;
    :cond_121
    const/4 v10, 0x0

    .restart local v10    # "hasFrom":Z
    goto/16 :goto_4e

    .line 227
    :cond_124
    const/4 v8, 0x0

    .restart local v8    # "fromType":I
    goto/16 :goto_54

    .line 229
    .restart local v17    # "tvTo":Landroid/util/TypedValue;
    :cond_127
    const/4 v11, 0x0

    .restart local v11    # "hasTo":Z
    goto/16 :goto_5d

    .line 230
    :cond_12a
    const/4 v13, 0x0

    .restart local v13    # "toType":I
    goto/16 :goto_63

    .line 234
    :cond_12d
    if-eqz v11, :cond_7e

    const/16 v25, 0x1c

    move/from16 v0, v25

    if-lt v13, v0, :cond_7e

    .line 235
    const/16 v25, 0x1f

    move/from16 v0, v25

    if-gt v13, v0, :cond_7e

    goto/16 :goto_71

    .line 248
    :cond_13d
    const/16 v25, 0x0

    move/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    .restart local v18    # "valueFrom":F
    goto/16 :goto_92

    .line 254
    :cond_149
    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v21

    .restart local v21    # "valueTo":F
    goto/16 :goto_a4

    .line 258
    .end local v21    # "valueTo":F
    :cond_155
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v18, v25, v26

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_bb

    .line 261
    .end local v18    # "valueFrom":F
    :cond_16a
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v13, v0, :cond_18f

    .line 262
    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v21

    .line 266
    .restart local v21    # "valueTo":F
    :goto_17a
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v21, v25, v26

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_bb

    .line 264
    .end local v21    # "valueTo":F
    :cond_18f
    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v21

    .restart local v21    # "valueTo":F
    goto :goto_17a

    .line 271
    .end local v21    # "valueTo":F
    :cond_19a
    if-eqz v10, :cond_23a

    .line 272
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v8, v0, :cond_1e1

    .line 273
    const/16 v25, 0x0

    move/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    .line 280
    .local v19, "valueFrom":I
    :goto_1b1
    if-eqz v11, :cond_225

    .line 281
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v13, v0, :cond_203

    .line 282
    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v22, v0

    .line 289
    .local v22, "valueTo":I
    :goto_1c8
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v19, v25, v26

    const/16 v26, 0x1

    aput v22, v25, v26

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_bb

    .line 274
    .end local v19    # "valueFrom":I
    .end local v22    # "valueTo":I
    :cond_1e1
    const/16 v25, 0x1c

    move/from16 v0, v25

    if-lt v8, v0, :cond_1f8

    .line 275
    const/16 v25, 0x1f

    move/from16 v0, v25

    if-gt v8, v0, :cond_1f8

    .line 276
    const/16 v25, 0x0

    move/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    .restart local v19    # "valueFrom":I
    goto :goto_1b1

    .line 278
    .end local v19    # "valueFrom":I
    :cond_1f8
    const/16 v25, 0x0

    move/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .restart local v19    # "valueFrom":I
    goto :goto_1b1

    .line 283
    :cond_203
    const/16 v25, 0x1c

    move/from16 v0, v25

    if-lt v13, v0, :cond_21a

    .line 284
    const/16 v25, 0x1f

    move/from16 v0, v25

    if-gt v13, v0, :cond_21a

    .line 285
    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v22

    .restart local v22    # "valueTo":I
    goto :goto_1c8

    .line 287
    .end local v22    # "valueTo":I
    :cond_21a
    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    .restart local v22    # "valueTo":I
    goto :goto_1c8

    .line 291
    .end local v22    # "valueTo":I
    :cond_225
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v19, v25, v26

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_bb

    .line 294
    .end local v19    # "valueFrom":I
    :cond_23a
    if-eqz v11, :cond_bb

    .line 295
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v13, v0, :cond_266

    .line 296
    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v22, v0

    .line 303
    .restart local v22    # "valueTo":I
    :goto_251
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v22, v25, v26

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_bb

    .line 297
    .end local v22    # "valueTo":I
    :cond_266
    const/16 v25, 0x1c

    move/from16 v0, v25

    if-lt v13, v0, :cond_27d

    .line 298
    const/16 v25, 0x1f

    move/from16 v0, v25

    if-gt v13, v0, :cond_27d

    .line 299
    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v22

    .restart local v22    # "valueTo":I
    goto :goto_251

    .line 301
    .end local v22    # "valueTo":I
    :cond_27d
    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    .restart local v22    # "valueTo":I
    goto :goto_251
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 179
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, v1}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 181
    sget-object v3, Landroid/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 183
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    return-object v1
.end method

.method private static loadTargetAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 337
    const-string/jumbo v2, "class"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "name":Ljava/lang/String;
    invoke-static {p0, v1, p2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createTargetAnimator(Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-result-object v0

    .line 341
    .local v0, "anim":Lcom/oneplus/screenshot/anim/TargetAnimator;
    invoke-static {p0, p1, v0}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 343
    return-object v0
.end method
