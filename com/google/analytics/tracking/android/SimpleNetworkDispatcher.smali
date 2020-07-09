.class Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;
.super Ljava/lang/Object;
.source "SimpleNetworkDispatcher.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Dispatcher;


# static fields
.field private static final USER_AGENT_TEMPLATE:Ljava/lang/String; = "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"


# instance fields
.field private final ctx:Landroid/content/Context;

.field private gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private mOverrideHostUrl:Ljava/net/URL;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V
    .locals 1
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 78
    invoke-static {p2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/analytics/tracking/android/GoogleAnalytics;Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/analytics/tracking/android/GoogleAnalytics;Landroid/content/Context;)V
    .locals 8
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p2, "gaInstance"    # Lcom/google/analytics/tracking/android/GoogleAnalytics;
    .param p3, "ctx"    # Landroid/content/Context;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->ctx:Landroid/content/Context;

    .line 64
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "GoogleAnalytics"

    const-string v3, "3.0"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->createUserAgentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->userAgent:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 74
    iput-object p2, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 75
    return-void
.end method

.method private buildRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;
    .locals 5
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "Empty hit, discarding."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 192
    return-object v1

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "full":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7f4

    if-ge v2, v3, :cond_1

    .line 196
    new-instance v1, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v2, "GET"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    goto :goto_0

    .line 198
    .end local v1    # "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    :cond_1
    new-instance v2, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v3, "POST"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v2, "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    move-object v1, v2

    .line 207
    .end local v2    # "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    .restart local v1    # "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    :goto_0
    iget-object v2, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->userAgent:Ljava/lang/String;

    const-string v3, "User-Agent"

    invoke-interface {v1, v3, v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-object v1

    .line 201
    .end local v1    # "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    .restart local v2    # "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    :catch_0
    move-exception v3

    .line 203
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "Encoding error, discarding hit"

    invoke-static {v4}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 204
    return-object v1
.end method

.method private logDebugInformation(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 7
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 217
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v0, "httpHeaders":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/http/Header;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    const-string v4, "\n"

    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 219
    .local v5, "header":Lorg/apache/http/Header;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    .end local v5    # "header":Lorg/apache/http/Header;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "arr$":[Lorg/apache/http/Header;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 224
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 225
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 227
    .local v2, "avail":I
    if-lez v2, :cond_1

    .line 228
    new-array v3, v2, [B

    .line 229
    .local v3, "b":[B
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 230
    const-string v5, "POST:\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "avail":I
    .end local v3    # "b":[B
    :cond_1
    goto :goto_1

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Error Writing hit to log..."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 238
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 239
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 178
    return-void
.end method

.method createUserAgentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "product"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "release"    # Ljava/lang/String;
    .param p4, "language"    # Ljava/lang/String;
    .param p5, "model"    # Ljava/lang/String;
    .param p6, "id"    # Ljava/lang/String;

    .line 248
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const-string v1, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dispatchHits(Ljava/util/List;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;)I"
        }
    .end annotation

    .line 99
    .local p1, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 100
    .local v0, "hitsDispatched":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x28

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 101
    .local v2, "maxHits":I
    const/4 v3, 0x1

    .line 102
    .local v3, "firstSend":Z
    const/4 v4, 0x0

    move v5, v3

    move v3, v0

    .end local v0    # "hitsDispatched":I
    .local v3, "hitsDispatched":I
    .local v4, "i":I
    .local v5, "firstSend":Z
    :goto_0
    if-ge v4, v2, :cond_a

    .line 103
    move-object/from16 v6, p1

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/analytics/tracking/android/Hit;

    .line 104
    .local v7, "hit":Lcom/google/analytics/tracking/android/Hit;
    invoke-virtual {v1, v7}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->getUrl(Lcom/google/analytics/tracking/android/Hit;)Ljava/net/URL;

    move-result-object v8

    .line 106
    .local v8, "url":Ljava/net/URL;
    if-nez v8, :cond_1

    .line 107
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No destination: discarding hit: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_0
    const-string v0, "No destination: discarding hit."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 112
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 113
    goto/16 :goto_5

    .line 116
    :cond_1
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/URL;->getPort()I

    move-result v10

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v10, v11}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v9, v0

    .line 118
    .local v9, "targetHost":Lorg/apache/http/HttpHost;
    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "path":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/google/analytics/tracking/android/HitBuilder;->postProcessHit(Lcom/google/analytics/tracking/android/Hit;J)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v11, v0

    .line 129
    .local v11, "params":Ljava/lang/String;
    invoke-direct {v1, v11, v10}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;

    move-result-object v12

    .line 130
    .local v12, "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    if-nez v12, :cond_3

    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 132
    goto/16 :goto_5

    .line 134
    :cond_3
    invoke-virtual {v9}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "Host"

    invoke-interface {v12, v13, v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    invoke-direct {v1, v12}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->logDebugInformation(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 138
    :cond_4
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v13, 0x2000

    if-le v0, v13, :cond_5

    .line 139
    const-string v0, "Hit too long (> 8192 bytes)--not sent"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 141
    :cond_5
    iget-object v0, v1, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->isDryRunEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    const-string v0, "Dry run enabled. Hit not actually sent."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)V

    goto :goto_4

    .line 145
    :cond_6
    if-eqz v5, :cond_7

    .line 146
    :try_start_0
    iget-object v0, v1, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GANetworkReceiver;->sendRadioPoweredBroadcast(Landroid/content/Context;)V

    .line 147
    const/4 v0, 0x0

    move v5, v0

    .line 149
    :cond_7
    iget-object v0, v1, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v9, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 150
    .local v0, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 151
    .local v13, "statusCode":I
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    .line 152
    .local v14, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v14, :cond_8

    .line 153
    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 155
    :cond_8
    const/16 v15, 0xc8

    if-eq v13, v15, :cond_9

    .line 157
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad response: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 163
    .end local v0    # "response":Lorg/apache/http/HttpResponse;
    .end local v13    # "statusCode":I
    .end local v14    # "entity":Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception sending hit: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 166
    return v3

    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v1, "ClientProtocolException sending hit; discarding hit..."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 167
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_9
    :goto_3
    nop

    .line 169
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 102
    .end local v7    # "hit":Lcom/google/analytics/tracking/android/Hit;
    .end local v8    # "url":Ljava/net/URL;
    .end local v9    # "targetHost":Lorg/apache/http/HttpHost;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "params":Ljava/lang/String;
    .end local v12    # "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v6, p1

    .line 171
    .end local v4    # "i":I
    return v3
.end method

.method getUrl(Lcom/google/analytics/tracking/android/Hit;)Ljava/net/URL;
    .locals 3
    .param p1, "hit"    # Lcom/google/analytics/tracking/android/Hit;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->mOverrideHostUrl:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 257
    return-object v0

    .line 260
    :cond_0
    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Hit;->getHitUrlScheme()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "hitUrlScheme":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "http://www.google-analytics.com/collect"

    goto :goto_0

    :cond_1
    const-string v2, "https://ssl.google-analytics.com/collect"

    :goto_0
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 266
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v2, "Error trying to parse the hardcoded host url. This really shouldn\'t happen."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    .line 270
    const/4 v2, 0x0

    return-object v2
.end method

.method public okToDispatch()Z
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->ctx:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 85
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 90
    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 91
    :cond_1
    :goto_0
    const-string v2, "...no network connectivity"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 92
    const/4 v2, 0x0

    return v2
.end method

.method public overrideHostUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostUrl"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 282
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->mOverrideHostUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e1":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->mOverrideHostUrl:Ljava/net/URL;

    .line 286
    .end local v0    # "e1":Ljava/net/MalformedURLException;
    :goto_0
    return-void
.end method
