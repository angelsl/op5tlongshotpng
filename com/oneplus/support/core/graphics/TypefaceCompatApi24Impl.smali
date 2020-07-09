.class Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;
.super Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi24Impl.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ADD_FONT_WEIGHT_STYLE_METHOD:Ljava/lang/String; = "addFontWeightStyle"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi24Impl"

.field private static final sAddFontWeightStyle:Ljava/lang/reflect/Method;

.field private static final sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field private static final sFontFamily:Ljava/lang/Class;

.field private static final sFontFamilyCtor:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 69
    :try_start_0
    const-string v0, "android.graphics.FontFamily"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "fontFamilyClass":Ljava/lang/Class;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 71
    .local v2, "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    const-string v3, "addFontWeightStyle"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/nio/ByteBuffer;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-class v7, Ljava/util/List;

    aput-object v7, v4, v5

    const/4 v5, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    const/4 v5, 0x4

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 73
    .local v3, "addFontMethod":Ljava/lang/reflect/Method;
    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 74
    .local v4, "familyArray":Ljava/lang/Object;
    const-class v5, Landroid/graphics/Typeface;

    const-string v7, "createFromFamiliesWithDefault"

    new-array v6, v6, [Ljava/lang/Class;

    .line 76
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v1

    .line 75
    invoke-virtual {v5, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v4    # "familyArray":Ljava/lang/Object;
    .local v1, "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 77
    .end local v0    # "fontFamilyClass":Ljava/lang/Class;
    .end local v1    # "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    .end local v2    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    .end local v3    # "addFontMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TypefaceCompatApi24Impl"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "fontFamilyClass":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 81
    .restart local v2    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x0

    .line 82
    .restart local v3    # "addFontMethod":Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 84
    .local v0, "fontFamilyClass":Ljava/lang/Class;
    .local v1, "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    :goto_0
    sput-object v2, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    .line 85
    sput-object v0, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->sFontFamily:Ljava/lang/Class;

    .line 86
    sput-object v3, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    .line 87
    sput-object v1, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    .line 88
    .end local v0    # "fontFamilyClass":Ljava/lang/Class;
    .end local v1    # "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    .end local v2    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    .end local v3    # "addFontMethod":Ljava/lang/reflect/Method;
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private static addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    .locals 4
    .param p0, "family"    # Ljava/lang/Object;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "ttcIndex"    # I
    .param p3, "weight"    # I
    .param p4, "style"    # Z

    .line 112
    :try_start_0
    sget-object v0, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 113
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 112
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 114
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 115
    .end local v0    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "family"    # Ljava/lang/Object;

    .line 122
    :try_start_0
    sget-object v0, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->sFontFamily:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "familyArray":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 124
    sget-object v3, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 126
    .end local v0    # "familyArray":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isUsable()Z
    .locals 2

    .line 94
    sget-object v0, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "TypefaceCompatApi24Impl"

    const-string v1, "Unable to collect necessary private methods.Fallback to legacy implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    sget-object v0, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static newFamily()Ljava/lang/Object;
    .locals 2

    .line 103
    :try_start_0
    sget-object v0, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entry"    # Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "style"    # I

    .line 156
    invoke-static {}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->newFamily()Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, "family":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 158
    .local v4, "e":Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    nop

    .line 159
    invoke-virtual {v4}, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v5

    invoke-static {p1, p3, v5}, Lcom/oneplus/support/core/graphics/TypefaceCompatUtil;->copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 160
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 161
    return-object v6

    .line 163
    :cond_0
    invoke-virtual {v4}, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v7

    invoke-virtual {v4}, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v8

    invoke-virtual {v4}, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v9

    invoke-static {v0, v5, v7, v8, v9}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v7

    if-nez v7, :cond_1

    .line 164
    return-object v6

    .line 157
    .end local v4    # "e":Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    :cond_2
    invoke-static {v0}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "fonts"    # [Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "style"    # I

    .line 134
    invoke-static {}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->newFamily()Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, "family":Ljava/lang/Object;
    new-instance v1, Lcom/oneplus/support/collection/SimpleArrayMap;

    invoke-direct {v1}, Lcom/oneplus/support/collection/SimpleArrayMap;-><init>()V

    .line 137
    .local v1, "bufferCache":Lcom/oneplus/support/collection/SimpleArrayMap;, "Lcom/oneplus/support/collection/SimpleArrayMap<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p3, v3

    .line 138
    .local v4, "font":Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    invoke-virtual {v4}, Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 139
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v5}, Lcom/oneplus/support/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 140
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    if-nez v6, :cond_0

    .line 141
    invoke-static {p1, p2, v5}, Lcom/oneplus/support/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 142
    invoke-virtual {v1, v5, v6}, Lcom/oneplus/support/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    invoke-virtual {v4}, Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v7

    invoke-virtual {v4}, Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v8

    .line 145
    invoke-virtual {v4}, Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v9

    .line 144
    invoke-static {v0, v6, v7, v8, v9}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v7

    if-nez v7, :cond_1

    .line 146
    const/4 v2, 0x0

    return-object v2

    .line 137
    .end local v4    # "font":Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    :cond_2
    invoke-static {v0}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 150
    .local v2, "typeface":Landroid/graphics/Typeface;
    invoke-static {v2, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3
.end method
