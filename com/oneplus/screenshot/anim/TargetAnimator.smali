.class public Lcom/oneplus/screenshot/anim/TargetAnimator;
.super Landroid/animation/ValueAnimator;
.source "TargetAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;,
        Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;,
        Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;,
        Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;,
        Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;,
        Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mLoader:Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

.field private mSetAnimators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;",
            ">;"
        }
    .end annotation
.end field

.field private mSetEnds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;",
            ">;"
        }
    .end annotation
.end field

.field private mSetStarts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/screenshot/anim/TargetAnimator;Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .registers 4
    .param p0, "-this"    # Lcom/oneplus/screenshot/anim/TargetAnimator;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "setter"    # Ljava/lang/reflect/Method;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/screenshot/anim/TargetAnimator;->invoke(Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 16
    const-string/jumbo v0, "TargetAnimator"

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

.method private addSetters(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V
    .registers 16
    .param p1, "target"    # Landroid/view/View;
    .param p2, "props"    # Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p3, "clsParam":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "setters":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;>;"
    new-instance v7, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;-><init>(Lcom/oneplus/screenshot/anim/TargetAnimator;Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;)V

    .line 93
    .local v7, "methods":Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;
    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 94
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    invoke-virtual {p2}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "entry$iterator":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 96
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_1e
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/oneplus/screenshot/anim/TargetAnimator;->getSetterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object p3, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 97
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_39} :catch_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_39} :catch_44
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_39} :catch_3f

    goto :goto_12

    .line 98
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :catch_3a
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_12

    .line 102
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3f
    move-exception v3

    .line 103
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_12

    .line 100
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_44
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_12

    .line 106
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_49
    invoke-interface {p4, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method private getSetterName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "prop"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 135
    .local v0, "firstLetter":C
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "theRest":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private invoke(Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .registers 10
    .param p1, "target"    # Landroid/view/View;
    .param p2, "setter"    # Ljava/lang/reflect/Method;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 121
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {p2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_9} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_9} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_9} :catch_a

    .line 131
    :goto_9
    return-void

    .line 128
    :catch_a
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_9

    .line 126
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_f
    move-exception v3

    .line 127
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_9

    .line 124
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_14
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_9

    .line 122
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_19
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_9
.end method

.method private invokeSetters(Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V
    .registers 10
    .param p1, "runner"    # Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "setters":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 111
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 112
    .local v5, "target":Landroid/view/View;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;

    .line 113
    .local v2, "propSetter":Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;
    invoke-virtual {v2}, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "setter$iterator":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 114
    .local v3, "setter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Ljava/lang/Object;>;"
    invoke-interface {p1, v5, v3}, Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;->run(Landroid/view/View;Ljava/util/Map$Entry;)V

    goto :goto_28

    .line 117
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;>;"
    .end local v2    # "propSetter":Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;
    .end local v3    # "setter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Ljava/lang/Object;>;"
    .end local v4    # "setter$iterator":Ljava/util/Iterator;
    .end local v5    # "target":Landroid/view/View;
    :cond_38
    return-void
.end method


# virtual methods
.method public addPropAnimator(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "props"    # Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    .prologue
    .line 77
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetAnimators:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addSetters(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V

    .line 78
    return-void
.end method

.method public addPropEnd(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "props"    # Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    .prologue
    .line 85
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetEnds:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addSetters(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V

    .line 86
    return-void
.end method

.method public addPropStart(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "props"    # Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    .prologue
    .line 81
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetStarts:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addSetters(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V

    .line 82
    return-void
.end method

.method public getLoader()Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mLoader:Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 53
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 48
    new-instance v0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;

    const-string/jumbo v1, "End"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;-><init>(Lcom/oneplus/screenshot/anim/TargetAnimator;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetEnds:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->invokeSetters(Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V

    .line 49
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 57
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 43
    new-instance v0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;

    const-string/jumbo v1, "Start"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;-><init>(Lcom/oneplus/screenshot/anim/TargetAnimator;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetStarts:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->invokeSetters(Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V

    .line 44
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 62
    .local v0, "value":F
    new-instance v1, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;-><init>(Lcom/oneplus/screenshot/anim/TargetAnimator;F)V

    iget-object v2, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetAnimators:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->invokeSetters(Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V

    .line 63
    return-void
.end method

.method public setLoader(Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)V
    .registers 2
    .param p1, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mLoader:Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    .line 74
    return-void
.end method
