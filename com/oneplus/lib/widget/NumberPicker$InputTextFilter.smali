.class Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 2112
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 2130
    move-object v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    iget-object v4, v0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$700(Lcom/oneplus/lib/widget/NumberPicker;)Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2131
    iget-object v4, v0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$700(Lcom/oneplus/lib/widget/NumberPicker;)Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->cancel()V

    .line 2134
    :cond_0
    iget-object v4, v0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, ""

    if-nez v4, :cond_5

    .line 2135
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2136
    .local v4, "filtered":Ljava/lang/CharSequence;
    if-nez v4, :cond_1

    .line 2137
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2140
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v5, v2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2141
    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2143
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2144
    return-object v5

    .line 2146
    :cond_2
    iget-object v7, v0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v7, v5}, Lcom/oneplus/lib/widget/NumberPicker;->access$900(Lcom/oneplus/lib/widget/NumberPicker;Ljava/lang/String;)I

    move-result v7

    .line 2155
    .local v7, "val":I
    iget-object v8, v0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v8}, Lcom/oneplus/lib/widget/NumberPicker;->access$1000(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v8

    if-gt v7, v8, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, v0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v9}, Lcom/oneplus/lib/widget/NumberPicker;->access$1000(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_3

    goto :goto_0

    .line 2158
    :cond_3
    return-object v4

    .line 2156
    :cond_4
    :goto_0
    return-object v6

    .line 2161
    .end local v4    # "filtered":Ljava/lang/CharSequence;
    .end local v5    # "result":Ljava/lang/String;
    .end local v7    # "val":I
    :cond_5
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2162
    .restart local v4    # "filtered":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2163
    return-object v6

    .line 2165
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v5, v2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2166
    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v8

    invoke-interface {v1, v3, v8}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2167
    .local v7, "result":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 2168
    .local v8, "str":Ljava/lang/String;
    iget-object v9, v0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v9}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    :goto_1
    if-ge v5, v10, :cond_8

    aget-object v11, v9, v5

    .line 2169
    .local v11, "val":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 2170
    .local v12, "valLowerCase":Ljava/lang/String;
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2171
    iget-object v5, v0, Lcom/oneplus/lib/widget/NumberPicker$InputTextFilter;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v5, v6, v9}, Lcom/oneplus/lib/widget/NumberPicker;->access$1100(Lcom/oneplus/lib/widget/NumberPicker;II)V

    .line 2172
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11, v2, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5

    .line 2168
    .end local v11    # "val":Ljava/lang/String;
    .end local v12    # "valLowerCase":Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2175
    :cond_8
    return-object v6
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .line 2122
    invoke-static {}, Lcom/oneplus/lib/widget/NumberPicker;->access$600()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .line 2117
    const/4 v0, 0x1

    return v0
.end method
