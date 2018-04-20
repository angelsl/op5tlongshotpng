.class Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$1;
.super Ljava/lang/Object;
.source "ResourceLoaderSchedulerImpl.java"

# interfaces
.implements Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ScheduledExecutorServiceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/CtfeHost;Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ScheduledExecutorServiceFactory;Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ResourceLoaderFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$1;->this$0:Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    .prologue
    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
