.class final Lcom/oneplus/lib/app/appcompat/GrowingArrayUtils;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append([III)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "currentSize"    # I
    .param p2, "element"    # I

    .line 42
    nop

    .line 44
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 45
    invoke-static {p1}, Lcom/oneplus/lib/app/appcompat/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [I

    .line 46
    .local v0, "newArray":[I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    move-object p0, v0

    .line 49
    .end local v0    # "newArray":[I
    :cond_0
    aput p2, p0, p1

    .line 50
    return-object p0
.end method

.method public static append([JIJ)[J
    .locals 2
    .param p0, "array"    # [J
    .param p1, "currentSize"    # I
    .param p2, "element"    # J

    .line 57
    nop

    .line 59
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 60
    invoke-static {p1}, Lcom/oneplus/lib/app/appcompat/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [J

    .line 61
    .local v0, "newArray":[J
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    move-object p0, v0

    .line 64
    .end local v0    # "newArray":[J
    :cond_0
    aput-wide p2, p0, p1

    .line 65
    return-object p0
.end method

.method public static append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "currentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .line 26
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    nop

    .line 28
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 30
    invoke-static {p1}, Lcom/oneplus/lib/app/appcompat/GrowingArrayUtils;->growSize(I)I

    move-result v1

    .line 29
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 31
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    move-object p0, v0

    .line 34
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    aput-object p2, p0, p1

    .line 35
    return-object p0
.end method

.method public static append([ZIZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "currentSize"    # I
    .param p2, "element"    # Z

    .line 72
    nop

    .line 74
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 75
    invoke-static {p1}, Lcom/oneplus/lib/app/appcompat/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [Z

    .line 76
    .local v0, "newArray":[Z
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    move-object p0, v0

    .line 79
    .end local v0    # "newArray":[Z
    :cond_0
    aput-boolean p2, p0, p1

    .line 80
    return-object p0
.end method

.method public static growSize(I)I
    .locals 1
    .param p0, "currentSize"    # I

    .line 174
    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p0, 0x2

    :goto_0
    return v0
.end method

.method public static insert([IIII)[I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # I

    .line 115
    nop

    .line 117
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-gt v0, v1, :cond_0

    .line 118
    add-int/lit8 v0, p2, 0x1

    sub-int v1, p1, p2

    invoke-static {p0, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    aput p3, p0, p2

    .line 120
    return-object p0

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/oneplus/lib/app/appcompat/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [I

    .line 124
    .local v0, "newArray":[I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    aput p3, v0, p2

    .line 126
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    return-object v0
.end method

.method public static insert([JIIJ)[J
    .locals 3
    .param p0, "array"    # [J
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # J

    .line 134
    nop

    .line 136
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-gt v0, v1, :cond_0

    .line 137
    add-int/lit8 v0, p2, 0x1

    sub-int v1, p1, p2

    invoke-static {p0, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    aput-wide p3, p0, p2

    .line 139
    return-object p0

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/oneplus/lib/app/appcompat/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [J

    .line 143
    .local v0, "newArray":[J
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    aput-wide p3, v0, p2

    .line 145
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    return-object v0
.end method

.method public static insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;)[TT;"
        }
    .end annotation

    .line 95
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p3, "element":Ljava/lang/Object;, "TT;"
    nop

    .line 97
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-gt v0, v1, :cond_0

    .line 98
    add-int/lit8 v0, p2, 0x1

    sub-int v1, p1, p2

    invoke-static {p0, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    aput-object p3, p0, p2

    .line 100
    return-object p0

    .line 103
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 104
    invoke-static {p1}, Lcom/oneplus/lib/app/appcompat/GrowingArrayUtils;->growSize(I)I

    move-result v1

    .line 103
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 105
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    aput-object p3, v0, p2

    .line 107
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    return-object v0
.end method

.method public static insert([ZIIZ)[Z
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # Z

    .line 153
    nop

    .line 155
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-gt v0, v1, :cond_0

    .line 156
    add-int/lit8 v0, p2, 0x1

    sub-int v1, p1, p2

    invoke-static {p0, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    aput-boolean p3, p0, p2

    .line 158
    return-object p0

    .line 161
    :cond_0
    invoke-static {p1}, Lcom/oneplus/lib/app/appcompat/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [Z

    .line 162
    .local v0, "newArray":[Z
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    aput-boolean p3, v0, p2

    .line 164
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    return-object v0
.end method
