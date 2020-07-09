.class Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;
.super Lcom/oneplus/lib/preference/Preference$BaseSavedState;
.source "OPSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;
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
            "Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field max:I

.field progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 259
    new-instance v0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 238
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;->progress:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;->max:I

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 255
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 256
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 247
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 250
    iget v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;->max:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    return-void
.end method
