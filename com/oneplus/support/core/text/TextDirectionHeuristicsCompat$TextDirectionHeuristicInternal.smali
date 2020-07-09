.class Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;
.super Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextDirectionHeuristicInternal"
.end annotation


# instance fields
.field private final mDefaultIsRtl:Z


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V
    .locals 0
    .param p1, "algorithm"    # Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;
    .param p2, "defaultIsRtl"    # Z

    .line 156
    invoke-direct {p0, p1}, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;-><init>(Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V

    .line 157
    iput-boolean p2, p0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    .line 158
    return-void
.end method


# virtual methods
.method protected defaultIsRtl()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    return v0
.end method
