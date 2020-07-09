.class public Lcom/oneplus/lib/widget/FakeWidget;
.super Ljava/lang/Object;
.source "FakeWidget.java"


# static fields
.field private static final Tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    const-class v0, Lcom/oneplus/lib/widget/FakeWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/FakeWidget;->Tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/oneplus/lib/widget/FakeWidget;->Tag:Ljava/lang/String;

    const-string v1, "FakeWidget created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void
.end method
