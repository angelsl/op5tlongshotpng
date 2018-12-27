.class public Lcom/oneplus/screenshot/anim/TargetAnimator;
.super Landroid/animation/ValueAnimator;
.source "TargetAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;,
        Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;,
        Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;,
        Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;,
        Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;,
        Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mLoader:Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

.field private mSetAnimators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;",
            ">;"
        }
    .end annotation
.end field

.field private mSetEnds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;",
            ">;"
        }
    .end annotation
.end field

.field private mSetStarts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 16
    const-string v0, "TargetAnimator"

    iput-object v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mLoader:Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetAnimators:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetStarts:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetEnds:Ljava/util/Map;

    .line 34
    invoke-virtual {p0, p0}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 35
    invoke-virtual {p0, p0}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/anim/TargetAnimator;Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .registers 4
    .param p0, "x0"    # Lcom/oneplus/screenshot/anim/TargetAnimator;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/reflect/Method;
    .param p3, "x3"    # Ljava/lang/Object;

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/screenshot/anim/TargetAnimator;->invoke(Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private addSetters(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V
    .registers 12
    .param p1, "target"    # Landroid/view/View;
    .param p2, "props"    # Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p3, "clsParam":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "setters":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;>;"
    new-instance v0, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;-><init>(Lcom/oneplus/screenshot/anim/TargetAnimator;Lcom/oneplus/screenshot/anim/TargetAnimator$1;)V

    .line 93
    .local v0, "methods":Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 94
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    invoke-virtual {p2}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 96
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_1e
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/oneplus/screenshot/anim/TargetAnimator;->getSetterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 97
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_39} :catch_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_39} :catch_3f
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_39} :catch_3a

    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto :goto_48

    .line 102
    :catch_3a
    move-exception v4

    .line 103
    .local v4, "e":Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "e":Ljava/lang/SecurityException;
    goto :goto_49

    .line 100
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_3f
    move-exception v4

    .line 101
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_48

    .line 98
    :catch_44
    move-exception v4

    .line 99
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 104
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_48
    nop

    .line 105
    :goto_49
    goto :goto_12

    .line 106
    :cond_4a
    invoke-interface {p4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getSetterName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "prop"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 135
    .local v0, "firstLetter":C
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "theRest":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private invoke(Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "setter"    # Ljava/lang/reflect/Method;
    .param p3, "value"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_9} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_9} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_1d

    .line 128
    :catch_a
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_1e

    .line 126
    :catch_f
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1d

    .line 124
    :catch_14
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1d

    .line 122
    :catch_19
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 130
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_1d
    nop

    .line 131
    :goto_1e
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private invokeSetters(Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V
    .registers 9
    .param p1, "runner"    # Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p2, "setters":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 111
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 112
    .local v2, "target":Landroid/view/View;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;

    .line 113
    .local v3, "propSetter":Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;
    invoke-virtual {v3}, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 114
    .local v5, "setter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Ljava/lang/Object;>;"
    invoke-interface {p1, v2, v5}, Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;->run(Landroid/view/View;Ljava/util/Map$Entry;)V

    .line 115
    .end local v5    # "setter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Ljava/lang/Object;>;"
    goto :goto_28

    .line 116
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;>;"
    .end local v2    # "target":Landroid/view/View;
    .end local v3    # "propSetter":Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;
    :cond_38
    goto :goto_8

    .line 117
    :cond_39
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public addPropAnimator(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "props"    # Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    .line 77
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetAnimators:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addSetters(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V

    .line 78
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public addPropEnd(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "props"    # Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    .line 85
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetEnds:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addSetters(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V

    .line 86
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public addPropStart(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "props"    # Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    .line 81
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetStarts:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addSetters(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V

    .line 82
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getLoader()Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mLoader:Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 53
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 48
    new-instance v0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;

    const-string v1, "End"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;-><init>(Lcom/oneplus/screenshot/anim/TargetAnimator;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetEnds:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->invokeSetters(Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V

    .line 49
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 57
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 43
    new-instance v0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;

    const-string v1, "Start"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;-><init>(Lcom/oneplus/screenshot/anim/TargetAnimator;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetStarts:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->invokeSetters(Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V

    .line 44
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 61
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 62
    .local v0, "value":F
    new-instance v1, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;-><init>(Lcom/oneplus/screenshot/anim/TargetAnimator;F)V

    iget-object v2, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetAnimators:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->invokeSetters(Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V

    .line 63
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setLoader(Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)V
    .registers 2
    .param p1, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    .line 73
    iput-object p1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mLoader:Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    .line 74
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
