.class Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$1;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    .line 56
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$1;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$1;->this$0:Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->populateOptionsMenu()V

    .line 60
    return-void
.end method
