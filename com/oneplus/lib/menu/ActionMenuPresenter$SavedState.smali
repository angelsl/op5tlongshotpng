.class Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public openSubMenuId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 617
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 605
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 609
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 614
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    return-void
.end method
