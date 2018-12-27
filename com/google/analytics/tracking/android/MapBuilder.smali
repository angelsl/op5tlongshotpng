.class public Lcom/google/analytics/tracking/android/MapBuilder;
.super Ljava/lang/Object;
.source "MapBuilder.java"


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/MapBuilder;->map:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 2
    .param p0, "b"    # Ljava/lang/Boolean;

    .line 287
    if-nez p0, :cond_4

    .line 288
    const/4 v0, 0x0

    return-object v0

    .line 290
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "1"

    goto :goto_f

    :cond_d
    const-string v0, "0"

    :goto_f
    return-object v0
.end method

.method public static createAppView()Lcom/google/analytics/tracking/android/MapBuilder;
    .registers 3

    .line 88
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_APP_VIEW:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 89
    new-instance v0, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    .line 90
    .local v0, "builder":Lcom/google/analytics/tracking/android/MapBuilder;
    const-string v1, "&t"

    const-string v2, "appview"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 91
    return-object v0
.end method

.method public static createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;
    .registers 8
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Long;

    .line 99
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_EVENT:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 100
    new-instance v0, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    .line 101
    .local v0, "builder":Lcom/google/analytics/tracking/android/MapBuilder;
    const-string v1, "&t"

    const-string v2, "event"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 102
    const-string v1, "&ec"

    invoke-virtual {v0, v1, p0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 103
    const-string v1, "&ea"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 104
    const-string v1, "&el"

    invoke-virtual {v0, v1, p2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 105
    const-string v1, "&ev"

    if-nez p3, :cond_2a

    const/4 v2, 0x0

    goto :goto_32

    :cond_2a
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    :goto_32
    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 106
    return-object v0
.end method

.method public static createException(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/analytics/tracking/android/MapBuilder;
    .registers 5
    .param p0, "exceptionDescription"    # Ljava/lang/String;
    .param p1, "fatal"    # Ljava/lang/Boolean;

    .line 164
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_EXCEPTION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 165
    new-instance v0, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    .line 166
    .local v0, "builder":Lcom/google/analytics/tracking/android/MapBuilder;
    const-string v1, "&t"

    const-string v2, "exception"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 167
    const-string v1, "&exd"

    invoke-virtual {v0, v1, p0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 168
    const-string v1, "&exf"

    invoke-static {p1}, Lcom/google/analytics/tracking/android/MapBuilder;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 169
    return-object v0
.end method

.method public static createItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;
    .registers 12
    .param p0, "transactionId"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "price"    # Ljava/lang/Double;
    .param p5, "quantity"    # Ljava/lang/Long;
    .param p6, "currencyCode"    # Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_ITEM:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 148
    new-instance v0, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    .line 149
    .local v0, "builder":Lcom/google/analytics/tracking/android/MapBuilder;
    const-string v1, "&t"

    const-string v2, "item"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 150
    const-string v1, "&ti"

    invoke-virtual {v0, v1, p0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 151
    const-string v1, "&ic"

    invoke-virtual {v0, v1, p2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 152
    const-string v1, "&in"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 153
    const-string v1, "&iv"

    invoke-virtual {v0, v1, p3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 154
    const-string v1, "&ip"

    const/4 v2, 0x0

    if-nez p4, :cond_30

    move-object v3, v2

    goto :goto_38

    :cond_30
    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    :goto_38
    invoke-virtual {v0, v1, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 155
    const-string v1, "&iq"

    if-nez p5, :cond_40

    goto :goto_48

    :cond_40
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    :goto_48
    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 156
    const-string v1, "&cu"

    invoke-virtual {v0, v1, p6}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 157
    return-object v0
.end method

.method public static createSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;
    .registers 6
    .param p0, "network"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 221
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_SOCIAL:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 222
    new-instance v0, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    .line 223
    .local v0, "builder":Lcom/google/analytics/tracking/android/MapBuilder;
    const-string v1, "&t"

    const-string v2, "social"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 224
    const-string v1, "&sn"

    invoke-virtual {v0, v1, p0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 225
    const-string v1, "&sa"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 226
    const-string v1, "&st"

    invoke-virtual {v0, v1, p2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 227
    return-object v0
.end method

.method public static createTiming(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;
    .registers 8
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "intervalInMilliseconds"    # Ljava/lang/Long;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .line 203
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_TIMING:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 204
    new-instance v0, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    .line 205
    .local v0, "builder":Lcom/google/analytics/tracking/android/MapBuilder;
    const-string v1, "&t"

    const-string v2, "timing"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 206
    const-string v1, "&utc"

    invoke-virtual {v0, v1, p0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "interval":Ljava/lang/String;
    if-eqz p1, :cond_25

    .line 209
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 211
    :cond_25
    const-string v2, "&utt"

    invoke-virtual {v0, v2, v1}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 212
    const-string v2, "&utv"

    invoke-virtual {v0, v2, p2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 213
    const-string v2, "&utl"

    invoke-virtual {v0, v2, p3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 214
    return-object v0
.end method

.method public static createTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;
    .registers 11
    .param p0, "transactionId"    # Ljava/lang/String;
    .param p1, "affiliation"    # Ljava/lang/String;
    .param p2, "revenue"    # Ljava/lang/Double;
    .param p3, "tax"    # Ljava/lang/Double;
    .param p4, "shipping"    # Ljava/lang/Double;
    .param p5, "currencyCode"    # Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_TRANSACTION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 120
    new-instance v0, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    .line 121
    .local v0, "builder":Lcom/google/analytics/tracking/android/MapBuilder;
    const-string v1, "&t"

    const-string v2, "transaction"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 122
    const-string v1, "&ti"

    invoke-virtual {v0, v1, p0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 123
    const-string v1, "&ta"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 124
    const-string v1, "&tr"

    const/4 v2, 0x0

    if-nez p2, :cond_26

    move-object v3, v2

    goto :goto_2e

    :cond_26
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    :goto_2e
    invoke-virtual {v0, v1, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 126
    const-string v1, "&tt"

    if-nez p3, :cond_37

    move-object v3, v2

    goto :goto_3f

    :cond_37
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    :goto_3f
    invoke-virtual {v0, v1, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 129
    const-string v1, "&ts"

    if-nez p4, :cond_47

    goto :goto_4f

    :cond_47
    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    :goto_4f
    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 132
    const-string v1, "&cu"

    invoke-virtual {v0, v1, p5}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 133
    return-object v0
.end method


# virtual methods
.method public build()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/MapBuilder;->map:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "paramName"    # Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->MAP_BUILDER_GET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 77
    iget-object v0, p0, Lcom/google/analytics/tracking/android/MapBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;
    .registers 5
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->MAP_BUILDER_SET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 58
    if-eqz p1, :cond_11

    .line 59
    iget-object v0, p0, Lcom/google/analytics/tracking/android/MapBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 61
    :cond_11
    const-string v0, " MapBuilder.set() called with a null paramName."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 63
    :goto_16
    return-object p0
.end method

.method public setAll(Ljava/util/Map;)Lcom/google/analytics/tracking/android/MapBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/analytics/tracking/android/MapBuilder;"
        }
    .end annotation

    .line 67
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->MAP_BUILDER_SET_ALL:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 68
    if-nez p1, :cond_c

    .line 69
    return-object p0

    .line 71
    :cond_c
    iget-object v0, p0, Lcom/google/analytics/tracking/android/MapBuilder;->map:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 72
    return-object p0
.end method

.method public setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;
    .registers 6
    .param p1, "utmParams"    # Ljava/lang/String;

    .line 260
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->MAP_BUILDER_SET_CAMPAIGN_PARAMS:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 261
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Utils;->filterCampaign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "filteredCampaign":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 263
    return-object p0

    .line 267
    :cond_14
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->parseURLParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 273
    .local v1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "&cc"

    const-string v3, "utm_content"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 274
    const-string v2, "&cm"

    const-string v3, "utm_medium"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 275
    const-string v2, "&cn"

    const-string v3, "utm_campaign"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 276
    const-string v2, "&cs"

    const-string v3, "utm_source"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 277
    const-string v2, "&ck"

    const-string v3, "utm_term"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 278
    const-string v2, "&ci"

    const-string v3, "utm_id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 279
    const-string v2, "&gclid"

    const-string v3, "gclid"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 280
    const-string v2, "&dclid"

    const-string v3, "dclid"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 281
    const-string v2, "&gmob_t"

    const-string v3, "gmob_t"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    .line 283
    return-object p0
.end method
