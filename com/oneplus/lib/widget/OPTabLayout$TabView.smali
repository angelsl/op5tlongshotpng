.class Lcom/oneplus/lib/widget/OPTabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "OPTabLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private final mTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oneplus/lib/widget/OPTabLayout;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/content/Context;Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V
    .locals 4
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/OPTabLayout;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    .line 1102
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    .line 1103
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1104
    iput-object p3, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    .line 1105
    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$200(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$200(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1108
    :cond_0
    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$300(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v0

    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$400(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v1

    .line 1109
    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$500(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v2

    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$600(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v3

    .line 1108
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setPaddingRelative(IIII)V

    .line 1110
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setGravity(I)V

    .line 1111
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->update()V

    .line 1112
    return-void
.end method

.method private updateTextAndIcon(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "tab"    # Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "iconView"    # Landroid/widget/ImageView;

    .line 1220
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1221
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1223
    .local v1, "text":Ljava/lang/CharSequence;
    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    .line 1224
    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1226
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1227
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setVisibility(I)V

    goto :goto_0

    .line 1229
    :cond_0
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1230
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1232
    :goto_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1235
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 1236
    .local v5, "hasText":Z
    if-eqz p2, :cond_3

    .line 1237
    if-eqz v5, :cond_2

    .line 1238
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1240
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1241
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setVisibility(I)V

    goto :goto_1

    .line 1243
    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1244
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1248
    :cond_3
    :goto_1
    if-nez v5, :cond_4

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1249
    invoke-virtual {p0, p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    .line 1251
    :cond_4
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1252
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setLongClickable(Z)V

    .line 1254
    :goto_2
    return-void
.end method


# virtual methods
.method public getTab()Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1133
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1135
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1136
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1141
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1143
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1144
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 1258
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1259
    .local v0, "screenPos":[I
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getLocationOnScreen([I)V

    .line 1261
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1262
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getWidth()I

    move-result v2

    .line 1263
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getHeight()I

    move-result v3

    .line 1264
    .local v3, "height":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1266
    .local v4, "screenWidth":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 1269
    .local v5, "cheatSheet":Landroid/widget/Toast;
    aget v6, v0, v6

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    const/16 v7, 0x31

    invoke-virtual {v5, v7, v6, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1272
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1273
    const/4 v6, 0x1

    return v6
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1148
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1150
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getMeasuredWidth()I

    move-result v0

    .line 1151
    .local v0, "measuredWidth":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$700(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$800(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1153
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    .line 1154
    invoke-static {v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$700(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v2}, Lcom/oneplus/lib/widget/OPTabLayout;->access$800(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/widget/OPMathUtils;->constrain(III)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    .line 1153
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1156
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1158
    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .line 1116
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1117
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1118
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1119
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 1121
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1122
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1124
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1125
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1128
    :cond_2
    return-void
.end method

.method final update()V
    .locals 6

    .line 1161
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    .line 1162
    .local v0, "tab":Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 1163
    .local v1, "custom":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1164
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1165
    .local v3, "customParent":Landroid/view/ViewParent;
    if-eq v3, p0, :cond_1

    .line 1166
    if-eqz v3, :cond_0

    .line 1167
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1169
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1171
    :cond_1
    iput-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1172
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    if-eqz v4, :cond_2

    .line 1173
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1175
    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 1176
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1177
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1180
    :cond_3
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1181
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    .line 1182
    .end local v3    # "customParent":Landroid/view/ViewParent;
    goto :goto_0

    .line 1184
    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1185
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 1186
    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1188
    :cond_5
    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1189
    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    .line 1192
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomView:Landroid/view/View;

    if-nez v2, :cond_9

    .line 1194
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-nez v2, :cond_6

    .line 1195
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/oneplus/commonctrl/R$layout;->op_layout_tab_icon:I

    .line 1196
    invoke-virtual {v2, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1197
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 1198
    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    .line 1200
    .end local v2    # "iconView":Landroid/widget/ImageView;
    :cond_6
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_7

    .line 1201
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/oneplus/commonctrl/R$layout;->op_layout_tab_text:I

    .line 1202
    invoke-virtual {v2, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1203
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1204
    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 1206
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_7
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v4}, Lcom/oneplus/lib/widget/OPTabLayout;->access$900(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1207
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v2}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1000(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1208
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v3}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1000(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1210
    :cond_8
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2, v3}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->updateTextAndIcon(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 1213
    :cond_9
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    .line 1214
    :cond_a
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2, v3}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->updateTextAndIcon(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1217
    :cond_b
    :goto_1
    return-void
.end method
