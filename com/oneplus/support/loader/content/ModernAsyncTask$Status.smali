.class public final enum Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;
.super Ljava/lang/Enum;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/loader/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

.field public static final enum FINISHED:Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

.field public static final enum PENDING:Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

.field public static final enum RUNNING:Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 101
    new-instance v0, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;->PENDING:Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

    .line 105
    new-instance v0, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;->RUNNING:Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

    .line 109
    new-instance v0, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

    const/4 v3, 0x2

    const-string v4, "FINISHED"

    invoke-direct {v0, v4, v3}, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;->FINISHED:Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

    sget-object v4, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;->PENDING:Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;->RUNNING:Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;->FINISHED:Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;->$VALUES:[Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 97
    const-class v0, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;
    .locals 1

    .line 97
    sget-object v0, Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;->$VALUES:[Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

    invoke-virtual {v0}, [Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/support/loader/content/ModernAsyncTask$Status;

    return-object v0
.end method
