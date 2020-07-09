.class public final enum Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
.super Ljava/lang/Enum;
.source "BitmapDumper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Options"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum DIVIDE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum FILE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum FULL:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum LAST:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum NEXT:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum ONE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum OVER:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum PREV:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;


# instance fields
.field private mValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 153
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const/4 v1, 0x0

    const-string v2, "FULL"

    invoke-direct {v0, v2, v1, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FULL:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    .line 154
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const/4 v2, 0x1

    const-string v3, "LAST"

    invoke-direct {v0, v3, v2, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->LAST:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    .line 155
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const/4 v3, 0x2

    const-string v4, "NEXT"

    invoke-direct {v0, v4, v3, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->NEXT:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    .line 156
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const/4 v4, 0x3

    const-string v5, "OVER"

    invoke-direct {v0, v5, v4, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->OVER:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    .line 157
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const/4 v5, 0x4

    const-string v6, "ONE"

    invoke-direct {v0, v6, v5, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->ONE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    .line 158
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const/4 v6, 0x5

    const-string v7, "PREV"

    invoke-direct {v0, v7, v6, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->PREV:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    .line 159
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const/4 v7, 0x6

    const-string v8, "FILE"

    invoke-direct {v0, v8, v7, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FILE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    .line 160
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const/4 v8, 0x7

    const-string v9, "DIVIDE"

    invoke-direct {v0, v9, v8, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->DIVIDE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    .line 151
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    sget-object v9, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FULL:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v9, v0, v1

    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->LAST:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->NEXT:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->OVER:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->ONE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->PREV:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FILE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->DIVIDE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v1, v0, v8

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->$VALUES:[Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->mValue:Z

    .line 165
    iput-boolean p3, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->mValue:Z

    .line 166
    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    .param p1, "x1"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->mValue:Z

    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 151
    const-class v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    .locals 1

    .line 151
    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->$VALUES:[Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, [Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    return-object v0
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->mValue:Z

    return v0
.end method
