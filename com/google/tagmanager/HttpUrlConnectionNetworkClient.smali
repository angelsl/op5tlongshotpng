.class Lcom/google/tagmanager/HttpUrlConnectionNetworkClient;
.super Ljava/lang/Object;
.source "HttpUrlConnectionNetworkClient.java"

# interfaces
.implements Lcom/google/tagmanager/NetworkClient;


# instance fields
.field private mConnection:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeURLConnection(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 73
    :cond_0
    return-void
.end method

.method private handleServerResponse(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 51
    .local v0, "responseCode":I
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "errorMessage":Ljava/lang/String;
    const/16 v2, 0x194

    if-ne v0, v2, :cond_1

    .line 58
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_1
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/tagmanager/HttpUrlConnectionNetworkClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/HttpUrlConnectionNetworkClient;->closeURLConnection(Ljava/net/HttpURLConnection;)V

    .line 67
    return-void
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "urlStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/HttpUrlConnectionNetworkClient;->getUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/HttpUrlConnectionNetworkClient;->mConnection:Ljava/net/HttpURLConnection;

    .line 23
    iget-object v0, p0, Lcom/google/tagmanager/HttpUrlConnectionNetworkClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/HttpUrlConnectionNetworkClient;->handleServerResponse(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method getUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "urlStr"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 79
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 80
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 82
    return-object v1
.end method

.method public sendPostRequest(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/HttpUrlConnectionNetworkClient;->getUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 30
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v1, "Content-Length"

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 33
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 35
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    .local v1, "sendToServer":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 38
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 41
    nop

    .line 43
    invoke-direct {p0, v0}, Lcom/google/tagmanager/HttpUrlConnectionNetworkClient;->handleServerResponse(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    nop

    .end local v1    # "sendToServer":Ljava/io/OutputStream;
    invoke-direct {p0, v0}, Lcom/google/tagmanager/HttpUrlConnectionNetworkClient;->closeURLConnection(Ljava/net/HttpURLConnection;)V

    .line 46
    nop

    .line 47
    return-void

    .line 40
    .restart local v1    # "sendToServer":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local p0    # "this":Lcom/google/tagmanager/HttpUrlConnectionNetworkClient;
    .end local p1    # "urlStr":Ljava/lang/String;
    .end local p2    # "content":[B
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    .end local v1    # "sendToServer":Ljava/io/OutputStream;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Lcom/google/tagmanager/HttpUrlConnectionNetworkClient;
    .restart local p1    # "urlStr":Ljava/lang/String;
    .restart local p2    # "content":[B
    :catchall_1
    move-exception v1

    invoke-direct {p0, v0}, Lcom/google/tagmanager/HttpUrlConnectionNetworkClient;->closeURLConnection(Ljava/net/HttpURLConnection;)V

    throw v1
.end method
