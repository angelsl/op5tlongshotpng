.class Lcom/google/analytics/tracking/android/GAUsage;
.super Ljava/lang/Object;
.source "GAUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/GAUsage$Field;
    }
.end annotation


# static fields
.field private static final BASE_64_CHARS:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

.field private static final INSTANCE:Lcom/google/analytics/tracking/android/GAUsage;


# instance fields
.field private mDisableUsage:Z

.field private mSequence:Ljava/lang/StringBuilder;

.field private mUsedFields:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/google/analytics/tracking/android/GAUsage$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lcom/google/analytics/tracking/android/GAUsage;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/GAUsage;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/GAUsage;->INSTANCE:Lcom/google/analytics/tracking/android/GAUsage;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mDisableUsage:Z

    .line 114
    return-void
.end method

.method public static getInstance()Lcom/google/analytics/tracking/android/GAUsage;
    .locals 1

    .line 106
    sget-object v0, Lcom/google/analytics/tracking/android/GAUsage;->INSTANCE:Lcom/google/analytics/tracking/android/GAUsage;

    return-object v0
.end method

.method static getPrivateInstance()Lcom/google/analytics/tracking/android/GAUsage;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 111
    new-instance v0, Lcom/google/analytics/tracking/android/GAUsage;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/GAUsage;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getAndClearSequence()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .end local p0    # "this":Lcom/google/analytics/tracking/android/GAUsage;
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-object v0

    .line 186
    .end local v0    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAndClearUsage()Ljava/lang/String;
    .locals 8

    monitor-enter p0

    .line 134
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 142
    .local v1, "spot":I
    const/4 v2, 0x6

    move v3, v2

    .line 144
    .local v3, "nextBoundary":I
    :goto_0
    iget-object v4, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 148
    iget-object v4, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/analytics/tracking/android/GAUsage$Field;

    .line 149
    .local v4, "f":Lcom/google/analytics/tracking/android/GAUsage$Field;
    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    invoke-interface {v5, v4}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v4}, Lcom/google/analytics/tracking/android/GAUsage$Field;->ordinal()I

    move-result v5

    .line 158
    .local v5, "nextLoc":I
    :goto_1
    if-lt v5, v3, :cond_0

    .line 159
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    const/4 v1, 0x0

    .line 161
    add-int/lit8 v3, v3, 0x6

    goto :goto_1

    .line 163
    .end local p0    # "this":Lcom/google/analytics/tracking/android/GAUsage;
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/google/analytics/tracking/android/GAUsage$Field;->ordinal()I

    move-result v7

    rem-int/2addr v7, v2

    shl-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 164
    .end local v4    # "f":Lcom/google/analytics/tracking/android/GAUsage$Field;
    .end local v5    # "nextLoc":I
    goto :goto_0

    .line 169
    :cond_1
    if-gtz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 170
    :cond_2
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :cond_3
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->clear()V

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 133
    .end local v0    # "result":Ljava/lang/StringBuilder;
    .end local v1    # "spot":I
    .end local v3    # "nextBoundary":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDisableUsage(Z)V
    .locals 0
    .param p1, "disableUsage"    # Z

    monitor-enter p0

    .line 117
    :try_start_0
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/GAUsage;->mDisableUsage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 116
    .end local p0    # "this":Lcom/google/analytics/tracking/android/GAUsage;
    .end local p1    # "disableUsage":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V
    .locals 3
    .param p1, "field"    # Lcom/google/analytics/tracking/android/GAUsage$Field;

    monitor-enter p0

    .line 121
    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mDisableUsage:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/GAUsage$Field;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local p0    # "this":Lcom/google/analytics/tracking/android/GAUsage;
    :cond_0
    monitor-exit p0

    return-void

    .line 120
    .end local p1    # "field":Lcom/google/analytics/tracking/android/GAUsage$Field;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
