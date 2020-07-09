.class public Lcom/oneplus/lib/preference/Preference$BaseSavedState;
.super Lcom/oneplus/support/core/view/AbsSavedState;
.source "Preference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/preference/Preference$BaseSavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2010
    new-instance v0, Lcom/oneplus/lib/preference/Preference$BaseSavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/preference/Preference$BaseSavedState$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/preference/Preference$BaseSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2003
    invoke-direct {p0, p1}, Lcom/oneplus/support/core/view/AbsSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2004
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 2007
    invoke-direct {p0, p1}, Lcom/oneplus/support/core/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2008
    return-void
.end method
