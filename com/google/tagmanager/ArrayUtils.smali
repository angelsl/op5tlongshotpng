.class Lcom/google/tagmanager/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static appendToArray([Lcom/google/analytics/containertag/proto/Debug$EventInfo;Lcom/google/analytics/containertag/proto/Debug$EventInfo;)[Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    .locals 3
    .param p0, "from"    # [Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    .param p1, "itemToAppend"    # Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    .line 20
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    .line 21
    .local v0, "result":[Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    array-length v1, p0

    aput-object p1, v0, v1

    .line 23
    return-object v0
.end method

.method public static appendToArray([Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 3
    .param p0, "from"    # [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .param p1, "itemToAppend"    # Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 28
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 29
    .local v0, "result":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    array-length v1, p0

    aput-object p1, v0, v1

    .line 31
    return-object v0
.end method

.method public static appendToArray([Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;)[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    .locals 3
    .param p0, "from"    # [Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    .param p1, "itemToAppend"    # Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .line 36
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .line 37
    .local v0, "result":[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    array-length v1, p0

    aput-object p1, v0, v1

    .line 39
    return-object v0
.end method

.method public static appendToArray([Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;)[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .locals 3
    .param p0, "from"    # [Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .param p1, "itemToAppend"    # Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 43
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 44
    .local v0, "result":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    array-length v1, p0

    aput-object p1, v0, v1

    .line 46
    return-object v0
.end method
