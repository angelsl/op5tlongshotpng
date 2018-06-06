.class Lcom/oneplus/screenshot/longshot/util/Configs$Types;
.super Ljava/lang/Object;
.source "Configs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/util/Configs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Types"
.end annotation


# static fields
.field public static final ARRAY:Ljava/lang/String; = "array"

.field public static final DIMEN:Ljava/lang/String; = "dimen"

.field public static final INTEGER:Ljava/lang/String; = "integer"


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/util/Configs;


# direct methods
.method private constructor <init>(Lcom/oneplus/screenshot/longshot/util/Configs;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/util/Configs;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/util/Configs$Types;->this$0:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
