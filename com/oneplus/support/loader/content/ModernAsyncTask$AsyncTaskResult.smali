.class Lcom/oneplus/support/loader/content/ModernAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/loader/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/oneplus/support/loader/content/ModernAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/oneplus/support/loader/content/ModernAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/oneplus/support/loader/content/ModernAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/loader/content/ModernAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .line 526
    .local p0, "this":Lcom/oneplus/support/loader/content/ModernAsyncTask$AsyncTaskResult;, "Lcom/oneplus/support/loader/content/ModernAsyncTask$AsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-object p1, p0, Lcom/oneplus/support/loader/content/ModernAsyncTask$AsyncTaskResult;->mTask:Lcom/oneplus/support/loader/content/ModernAsyncTask;

    .line 528
    iput-object p2, p0, Lcom/oneplus/support/loader/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 529
    return-void
.end method
