.class Lcom/google/tagmanager/SimpleNetworkDispatcher;
.super Ljava/lang/Object;
.source "SimpleNetworkDispatcher.java"

# interfaces
.implements Lcom/google/tagmanager/Dispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;
    }
.end annotation


# static fields
.field private static final USER_AGENT_TEMPLATE:Ljava/lang/String; = "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"


# instance fields
.field private final ctx:Landroid/content/Context;

.field private dispatchListener:Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;)V
    .registers 12
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "dispatchListener"    # Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/SimpleNetworkDispatcher;->ctx:Landroid/content/Context;

    .line 62
    const-string v2, "GoogleTagManager"

    const-string v3, "3.02"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/SimpleNetworkDispatcher;->getUserAgentLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/tagmanager/SimpleNetworkDispatcher;->createUserAgentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/SimpleNetworkDispatcher;->userAgent:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/google/tagmanager/SimpleNetworkDispatcher;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 71
    iput-object p3, p0, Lcom/google/tagmanager/SimpleNetworkDispatcher;->dispatchListener:Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;

    .line 72
    return-void
.end method

.method private constructGtmRequest(Ljava/net/URL;)Lorg/apache/http/HttpEntityEnclosingRequest;
    .registers 6
    .param p1, "url"    # Ljava/net/URL;

    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    :try_start_1
    new-instance v1, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v2, "GET"

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 163
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/google/tagmanager/SimpleNetworkDispatcher;->userAgent:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_18} :catch_19

    .line 167
    goto :goto_3d

    .line 164
    :catch_19
    move-exception v1

    .line 165
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception sending hit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 168
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :goto_3d
    return-object v0
.end method

.method static getUserAgentLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 219
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 220
    return-object v0

    .line 222
    :cond_4
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    goto :goto_4a

    .line 225
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v0, "lang":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_45

    .line 228
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 223
    .end local v0    # "lang":Ljava/lang/StringBuilder;
    :cond_4a
    :goto_4a
    return-object v0
.end method

.method private logDebugInformation(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .registers 8
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 176
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    .local v0, "httpHeaders":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/http/Header;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_b
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 178
    .local v4, "header":Lorg/apache/http/Header;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    .end local v4    # "header":Lorg/apache/http/Header;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 180
    .end local v1    # "arr$":[Lorg/apache/http/Header;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1e
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 183
    :try_start_34
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 184
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_5b

    .line 185
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 186
    .local v2, "avail":I
    if-lez v2, :cond_5b

    .line 187
    new-array v3, v2, [B

    .line 188
    .local v3, "b":[B
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 189
    const-string v4, "POST:\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_5b} :catch_5c

    .line 195
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "avail":I
    .end local v3    # "b":[B
    :cond_5b
    goto :goto_62

    .line 193
    :catch_5c
    move-exception v1

    .line 194
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Error Writing hit to log..."

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 197
    .end local v1    # "e":Ljava/io/IOException;
    :cond_62
    :goto_62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 198
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/google/tagmanager/SimpleNetworkDispatcher;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 152
    return-void
.end method

.method createUserAgentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "product"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "release"    # Ljava/lang/String;
    .param p4, "language"    # Ljava/lang/String;
    .param p5, "model"    # Ljava/lang/String;
    .param p6, "id"    # Ljava/lang/String;

    .line 207
    const-string v0, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dispatchHits(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/Hit;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p1, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 93
    .local v0, "maxHits":I
    const/4 v1, 0x1

    .line 94
    .local v1, "firstSend":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_da

    .line 95
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/Hit;

    .line 96
    .local v3, "hit":Lcom/google/tagmanager/Hit;
    invoke-virtual {p0, v3}, Lcom/google/tagmanager/SimpleNetworkDispatcher;->getUrl(Lcom/google/tagmanager/Hit;)Ljava/net/URL;

    move-result-object v4

    .line 98
    .local v4, "url":Ljava/net/URL;
    if-nez v4, :cond_26

    .line 99
    const-string v5, "No destination: discarding hit."

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 101
    iget-object v5, p0, Lcom/google/tagmanager/SimpleNetworkDispatcher;->dispatchListener:Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;

    invoke-interface {v5, v3}, Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;->onHitPermanentDispatchFailure(Lcom/google/tagmanager/Hit;)V

    .line 102
    goto/16 :goto_d6

    .line 105
    :cond_26
    invoke-direct {p0, v4}, Lcom/google/tagmanager/SimpleNetworkDispatcher;->constructGtmRequest(Ljava/net/URL;)Lorg/apache/http/HttpEntityEnclosingRequest;

    move-result-object v5

    .line 107
    .local v5, "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    if-nez v5, :cond_33

    .line 108
    iget-object v6, p0, Lcom/google/tagmanager/SimpleNetworkDispatcher;->dispatchListener:Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;

    invoke-interface {v6, v3}, Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;->onHitPermanentDispatchFailure(Lcom/google/tagmanager/Hit;)V

    .line 109
    goto/16 :goto_d6

    .line 112
    :cond_33
    new-instance v6, Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v8

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    .local v6, "targetHost":Lorg/apache/http/HttpHost;
    const-string v7, "Host"

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, v5}, Lcom/google/tagmanager/SimpleNetworkDispatcher;->logDebugInformation(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 119
    if-eqz v1, :cond_5d

    .line 120
    :try_start_52
    iget-object v7, p0, Lcom/google/tagmanager/SimpleNetworkDispatcher;->ctx:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/tagmanager/NetworkReceiver;->sendRadioPoweredBroadcast(Landroid/content/Context;)V

    .line 121
    const/4 v1, 0x0

    goto :goto_5d

    .line 140
    :catch_59
    move-exception v7

    goto :goto_a0

    .line 135
    :catch_5b
    move-exception v7

    goto :goto_ca

    .line 123
    :cond_5d
    :goto_5d
    iget-object v7, p0, Lcom/google/tagmanager/SimpleNetworkDispatcher;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v7, v6, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 124
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 125
    .local v8, "statusCode":I
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 126
    .local v9, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v9, :cond_74

    .line 127
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 129
    :cond_74
    const/16 v10, 0xc8

    if-eq v8, v10, :cond_9a

    .line 130
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 131
    iget-object v10, p0, Lcom/google/tagmanager/SimpleNetworkDispatcher;->dispatchListener:Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;

    invoke-interface {v10, v3}, Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;->onHitTransientDispatchFailure(Lcom/google/tagmanager/Hit;)V

    goto :goto_d5

    .line 133
    :cond_9a
    iget-object v10, p0, Lcom/google/tagmanager/SimpleNetworkDispatcher;->dispatchListener:Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;

    invoke-interface {v10, v3}, Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;->onHitDispatched(Lcom/google/tagmanager/Hit;)V
    :try_end_9f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_52 .. :try_end_9f} :catch_5b
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_9f} :catch_59

    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "statusCode":I
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_d5

    .line 140
    :goto_a0
    nop

    .line 141
    .local v7, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception sending hit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 143
    iget-object v8, p0, Lcom/google/tagmanager/SimpleNetworkDispatcher;->dispatchListener:Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;

    invoke-interface {v8, v3}, Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;->onHitTransientDispatchFailure(Lcom/google/tagmanager/Hit;)V

    .end local v3    # "hit":Lcom/google/tagmanager/Hit;
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v6    # "targetHost":Lorg/apache/http/HttpHost;
    .end local v7    # "e":Ljava/io/IOException;
    goto :goto_d6

    .line 135
    .restart local v3    # "hit":Lcom/google/tagmanager/Hit;
    .restart local v4    # "url":Ljava/net/URL;
    .restart local v5    # "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    .restart local v6    # "targetHost":Lorg/apache/http/HttpHost;
    :goto_ca
    nop

    .line 138
    .local v7, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v8, "ClientProtocolException sending hit; discarding hit..."

    invoke-static {v8}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 139
    iget-object v8, p0, Lcom/google/tagmanager/SimpleNetworkDispatcher;->dispatchListener:Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;

    invoke-interface {v8, v3}, Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;->onHitPermanentDispatchFailure(Lcom/google/tagmanager/Hit;)V

    .line 144
    .end local v3    # "hit":Lcom/google/tagmanager/Hit;
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v6    # "targetHost":Lorg/apache/http/HttpHost;
    .end local v7    # "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_d5
    nop

    .line 94
    :goto_d6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 146
    .end local v2    # "i":I
    :cond_da
    return-void
.end method

.method getUrl(Lcom/google/tagmanager/Hit;)Ljava/net/URL;
    .registers 5
    .param p1, "hit"    # Lcom/google/tagmanager/Hit;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 235
    invoke-virtual {p1}, Lcom/google/tagmanager/Hit;->getHitUrl()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "hitUrl":Ljava/lang/String;
    :try_start_4
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_9} :catch_a

    return-object v1

    .line 238
    :catch_a
    move-exception v1

    .line 239
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v2, "Error trying to parse the GTM url."

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 240
    const/4 v2, 0x0

    return-object v2
.end method

.method public okToDispatch()Z
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/google/tagmanager/SimpleNetworkDispatcher;->ctx:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 78
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 83
    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_19

    .line 87
    :cond_17
    const/4 v2, 0x1

    return v2

    .line 84
    :cond_19
    :goto_19
    const-string v2, "...no network connectivity"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 85
    const/4 v2, 0x0

    return v2
.end method
