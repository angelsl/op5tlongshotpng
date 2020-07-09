.class Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;)V
    .locals 0

    .line 1308
    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;->this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/widget/AutoCompleteTextView;
    .param p2, "x1"    # Lcom/oneplus/lib/widget/AutoCompleteTextView$1;

    .line 1308
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 1310
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;->this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->access$500(Lcom/oneplus/lib/widget/AutoCompleteTextView;Landroid/view/View;IJ)V

    .line 1311
    return-void
.end method
