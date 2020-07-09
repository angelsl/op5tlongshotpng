.class Lcom/oneplus/lib/widget/ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/ForwardingListener;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/ForwardingListener;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/oneplus/lib/widget/ForwardingListener$TriggerLongPress;->this$0:Lcom/oneplus/lib/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/oneplus/lib/widget/ForwardingListener$TriggerLongPress;->this$0:Lcom/oneplus/lib/widget/ForwardingListener;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ForwardingListener;->onLongPress()V

    .line 317
    return-void
.end method
