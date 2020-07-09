.class public abstract Lcom/oneplus/lib/app/appcompat/ActionMode;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;
    }
.end annotation


# instance fields
.field private mTag:Ljava/lang/Object;

.field private mTitleOptionalHint:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionMode;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionMode;->mTitleOptionalHint:Z

    return v0
.end method

.method public abstract invalidate()V
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public isUiFocusable()Z
    .locals 1

    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionMode;->mTag:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setTitleOptionalHint(Z)V
    .locals 0
    .param p1, "titleOptional"    # Z

    .line 131
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/ActionMode;->mTitleOptionalHint:Z

    .line 132
    return-void
.end method
