.class public Lcom/oneplus/lib/animator/ShareElementViewAttrs;
.super Ljava/lang/Object;
.source "ShareElementViewAttrs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/animator/ShareElementViewAttrs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alpha:F

.field public height:F

.field public id:I

.field public startX:F

.field public startY:F

.field public width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/oneplus/lib/animator/ShareElementViewAttrs$1;

    invoke-direct {v0}, Lcom/oneplus/lib/animator/ShareElementViewAttrs$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IFFFF)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .line 20
    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/animator/ShareElementViewAttrs;-><init>(IFFFFF)V

    .line 21
    return-void
.end method

.method public constructor <init>(IFFFFF)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "alpha"    # F

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->id:I

    .line 25
    iput p2, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->startX:F

    .line 26
    iput p3, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->startY:F

    .line 27
    iput p4, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->width:F

    .line 28
    iput p5, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->height:F

    .line 29
    iput p6, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->alpha:F

    .line 30
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->id:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->startX:F

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->startY:F

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->width:F

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->height:F

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->alpha:F

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 39
    iget v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->startX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 41
    iget v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->startY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 42
    iget v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->width:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 43
    iget v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->height:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 44
    iget v0, p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->alpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 45
    return-void
.end method
