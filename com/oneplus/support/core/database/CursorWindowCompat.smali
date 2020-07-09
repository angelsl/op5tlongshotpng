.class public final Lcom/oneplus/support/core/database/CursorWindowCompat;
.super Ljava/lang/Object;
.source "CursorWindowCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;J)Landroid/database/CursorWindow;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "windowSizeBytes"    # J
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 42
    new-instance v0, Landroid/database/CursorWindow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/database/CursorWindow;-><init>(Z)V

    return-object v0
.end method
