.class Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "OPAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/OPAlertController$AlertParams;->createListView(Lcom/oneplus/lib/app/OPAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/oneplus/lib/app/OPAlertController;

.field final synthetic val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/oneplus/lib/app/OPAlertController$RecycleListView;Lcom/oneplus/lib/app/OPAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/OPAlertController$AlertParams;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/database/Cursor;
    .param p4, "x2"    # Z

    .line 1188
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p5, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    iput-object p6, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->val$dialog:Lcom/oneplus/lib/app/OPAlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1193
    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object p5

    .line 1194
    .local p5, "cursor":Landroid/database/Cursor;
    iget-object p6, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object p6, p6, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p5, p6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p6

    iput p6, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->mLabelIndex:I

    .line 1195
    iget-object p6, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object p6, p6, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p5, p6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p6

    iput p6, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1196
    .end local p5    # "cursor":Landroid/database/Cursor;
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 1200
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 1201
    .local v0, "text":Landroid/widget/CheckedTextView;
    iget v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1203
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1202
    :goto_0
    invoke-virtual {v1, v2, v4}, Lcom/oneplus/lib/app/OPAlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1204
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1208
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v0, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->val$dialog:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->access$1000(Lcom/oneplus/lib/app/OPAlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
