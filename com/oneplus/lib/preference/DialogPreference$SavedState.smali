.class Lcom/oneplus/lib/preference/DialogPreference$SavedState;
.super Lcom/oneplus/lib/preference/Preference$BaseSavedState;
.source "DialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/preference/DialogPreference;
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
            "Lcom/oneplus/lib/preference/DialogPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dialogBundle:Landroid/os/Bundle;

.field isDialogShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 492
    new-instance v0, Lcom/oneplus/lib/preference/DialogPreference$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/preference/DialogPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 476
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->isDialogShowing:Z

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 479
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 489
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 490
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 483
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 484
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->isDialogShowing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 486
    return-void
.end method
