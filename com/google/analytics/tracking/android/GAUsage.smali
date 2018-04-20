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
            "Ljava/util/SortedSet",
            "<",
            "Lcom/google/analytics/tracking/android/GAUsage$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    new-instance v0, Lcom/google/analytics/tracking/android/GAUsage;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/GAUsage;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/GAUsage;->INSTANCE:Lcom/google/analytics/tracking/android/GAUsage;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
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
    .registers 1

    .prologue
    .line 106
    sget-object v0, Lcom/google/analytics/tracking/android/GAUsage;->INSTANCE:Lcom/google/analytics/tracking/android/GAUsage;

    return-object v0
.end method

.method static getPrivateInstance()Lcom/google/analytics/tracking/android/GAUsage;
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/google/analytics/tracking/android/GAUsage;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/GAUsage;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getAndClearSequence()Ljava/lang/String;
    .registers 5

    .prologue
    monitor-enter p0

    .line 187
    :try_start_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_18

    .line 190
    :goto_9
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_22

    monitor-exit p0

    .line 192
    return-object v0

    .line 188
    .end local v0    # "result":Ljava/lang/String;
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "."

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    goto :goto_9

    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAndClearUsage()Ljava/lang/String;
    .registers 8

    .prologue
    monitor-enter p0

    .line 134
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 142
    .local v4, "spot":I
    const/4 v1, 0x6

    .line 144
    .local v1, "nextBoundary":I
    :goto_8
    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->size()I

    move-result v5

    if-gtz v5, :cond_27

    .line 169
    if-lez v4, :cond_53

    .line 170
    :cond_12
    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :goto_1c
    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->clear()V

    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_5a

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 148
    :cond_27
    :try_start_27
    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/GAUsage$Field;

    .line 149
    .local v0, "f":Lcom/google/analytics/tracking/android/GAUsage$Field;
    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    invoke-interface {v5, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAUsage$Field;->ordinal()I

    move-result v2

    .line 158
    .local v2, "nextLoc":I
    :goto_38
    if-ge v2, v1, :cond_45

    .line 163
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAUsage$Field;->ordinal()I

    move-result v5

    rem-int/lit8 v5, v5, 0x6

    const/4 v6, 0x1

    shl-int v5, v6, v5

    add-int/2addr v4, v5

    goto :goto_8

    .line 159
    :cond_45
    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    const/4 v4, 0x0

    .line 161
    add-int/lit8 v1, v1, 0x6

    goto :goto_38

    .line 169
    .end local v0    # "f":Lcom/google/analytics/tracking/android/GAUsage$Field;
    .end local v2    # "nextLoc":I
    :cond_53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
    :try_end_56
    .catchall {:try_start_27 .. :try_end_56} :catchall_5a

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_1c

    .end local v1    # "nextBoundary":I
    .end local v3    # "result":Ljava/lang/StringBuilder;
    .end local v4    # "spot":I
    :catchall_5a
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setDisableUsage(Z)V
    .registers 3
    .param p1, "disableUsage"    # Z

    .prologue
    monitor-enter p0

    .line 117
    :try_start_1
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/GAUsage;->mDisableUsage:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    .line 118
    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V
    .registers 5
    .param p1, "field"    # Lcom/google/analytics/tracking/android/GAUsage$Field;

    .prologue
    monitor-enter p0

    .line 121
    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mDisableUsage:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    .line 125
    return-void

    .line 122
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/GAUsage$Field;->ordinal()I

    move-result v1

    const-string/jumbo v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1d

    goto :goto_5

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
