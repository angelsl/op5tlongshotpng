.class Lcom/google/tagmanager/HttpNetworkClient;
.super Ljava/lang/Object;
.source "HttpNetworkClient.java"

# interfaces
.implements Lcom/google/tagmanager/NetworkClient;


# instance fields
.field private mClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeWithClient(Lorg/apache/http/client/HttpClient;)V
    .locals 1
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;

    .line 61
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 64
    :cond_0
    return-void
.end method

.method private handleServerResponse(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 3
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 69
    .local v0, "responseCode":I
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 70
    const-string v1, "Success response"

    invoke-static {v1}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 71
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 75
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "errorMessage":Ljava/lang/String;
    const/16 v2, 0x194

    if-ne v0, v2, :cond_1

    .line 77
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_1
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/tagmanager/HttpNetworkClient;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/HttpNetworkClient;->closeWithClient(Lorg/apache/http/client/HttpClient;)V

    .line 58
    return-void
.end method

.method createNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 85
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 86
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 87
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 89
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method createPostRequest(Ljava/lang/String;[B)Lorg/apache/http/client/methods/HttpPost;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # [B
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 48
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 52
    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/google/tagmanager/HttpNetworkClient;->createNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/HttpNetworkClient;->mClient:Lorg/apache/http/client/HttpClient;

    .line 32
    iget-object v0, p0, Lcom/google/tagmanager/HttpNetworkClient;->mClient:Lorg/apache/http/client/HttpClient;

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 33
    .local v0, "response":Lorg/apache/http/HttpResponse;
    iget-object v1, p0, Lcom/google/tagmanager/HttpNetworkClient;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-direct {p0, v1, v0}, Lcom/google/tagmanager/HttpNetworkClient;->handleServerResponse(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public sendPostRequest(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/google/tagmanager/HttpNetworkClient;->createNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 39
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/HttpNetworkClient;->createPostRequest(Ljava/lang/String;[B)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 40
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 42
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0, v2}, Lcom/google/tagmanager/HttpNetworkClient;->handleServerResponse(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    .line 43
    invoke-direct {p0, v0}, Lcom/google/tagmanager/HttpNetworkClient;->closeWithClient(Lorg/apache/http/client/HttpClient;)V

    .line 44
    return-void
.end method
