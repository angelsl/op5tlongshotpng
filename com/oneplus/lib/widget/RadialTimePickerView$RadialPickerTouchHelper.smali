.class Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;
.super Lcom/oneplus/lib/widget/ExploreByTouchHelper;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialPickerTouchHelper"
.end annotation


# instance fields
.field private final MASK_TYPE:I

.field private final MASK_VALUE:I

.field private final MINUTE_INCREMENT:I

.field private final SHIFT_TYPE:I

.field private final SHIFT_VALUE:I

.field private final TYPE_HOUR:I

.field private final TYPE_MINUTE:I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/RadialTimePickerView;)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 1142
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1127
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1129
    const/4 p1, 0x1

    iput p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_HOUR:I

    .line 1130
    const/4 p1, 0x2

    iput p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_MINUTE:I

    .line 1132
    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_TYPE:I

    .line 1133
    const/16 p1, 0xf

    iput p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_TYPE:I

    .line 1135
    const/16 p1, 0x8

    iput p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_VALUE:I

    .line 1136
    const/16 p1, 0xff

    iput p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_VALUE:I

    .line 1139
    const/4 p1, 0x5

    iput p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->MINUTE_INCREMENT:I

    .line 1143
    return-void
.end method

.method private adjustPicker(I)V
    .locals 7
    .param p1, "step"    # I

    .line 1176
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$100(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1177
    const/4 v0, 0x1

    .line 1179
    .local v0, "stepSize":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    .line 1180
    .local v1, "currentHour24":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$200(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1181
    move v2, v1

    .line 1182
    .local v2, "initialStep":I
    const/4 v3, 0x0

    .line 1183
    .local v3, "minValue":I
    const/16 v4, 0x17

    .local v4, "maxValue":I
    goto :goto_0

    .line 1185
    .end local v2    # "initialStep":I
    .end local v3    # "minValue":I
    .end local v4    # "maxValue":I
    :cond_0
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v2

    .line 1186
    .restart local v2    # "initialStep":I
    const/4 v3, 0x1

    .line 1187
    .restart local v3    # "minValue":I
    const/16 v4, 0xc

    .line 1189
    .end local v1    # "currentHour24":I
    .restart local v4    # "maxValue":I
    :goto_0
    goto :goto_1

    .line 1190
    .end local v0    # "stepSize":I
    .end local v2    # "initialStep":I
    .end local v3    # "minValue":I
    .end local v4    # "maxValue":I
    :cond_1
    const/4 v0, 0x5

    .line 1191
    .restart local v0    # "stepSize":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    div-int v2, v1, v0

    .line 1192
    .restart local v2    # "initialStep":I
    const/4 v3, 0x0

    .line 1193
    .restart local v3    # "minValue":I
    const/16 v4, 0x37

    .line 1196
    .restart local v4    # "maxValue":I
    :goto_1
    add-int v1, v2, p1

    mul-int/2addr v1, v0

    .line 1197
    .local v1, "nextValue":I
    invoke-static {v1, v3, v4}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v5

    .line 1198
    .local v5, "clampedValue":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v6}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$100(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1199
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentHour(I)V

    goto :goto_2

    .line 1201
    :cond_2
    iget-object v6, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 1203
    :goto_2
    return-void
.end method

.method private getBoundsForVirtualView(ILandroid/graphics/Rect;)V
    .locals 13
    .param p1, "virtualViewId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 1373
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1374
    .local v0, "type":I
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    .line 1377
    .local v1, "value":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1378
    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v3, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$900(Lcom/oneplus/lib/widget/RadialTimePickerView;I)Z

    move-result v3

    .line 1379
    .local v3, "innerCircle":Z
    if-eqz v3, :cond_0

    .line 1380
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1000(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v5}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1100(Lcom/oneplus/lib/widget/RadialTimePickerView;)[I

    move-result-object v5

    aget v2, v5, v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    .line 1381
    .local v2, "centerRadius":F
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1200(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v4

    int-to-float v4, v4

    .local v4, "radius":F
    goto :goto_0

    .line 1383
    .end local v2    # "centerRadius":F
    .end local v4    # "radius":F
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1000(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v2

    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1100(Lcom/oneplus/lib/widget/RadialTimePickerView;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 1384
    .restart local v2    # "centerRadius":F
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1200(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v4

    int-to-float v4, v4

    .line 1387
    .restart local v4    # "radius":F
    :goto_0
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v5, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1300(Lcom/oneplus/lib/widget/RadialTimePickerView;I)I

    move-result v5

    int-to-float v3, v5

    .line 1388
    .local v3, "degrees":F
    goto :goto_1

    .end local v2    # "centerRadius":F
    .end local v3    # "degrees":F
    .end local v4    # "radius":F
    :cond_1
    if-ne v0, v2, :cond_2

    .line 1389
    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1000(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v2

    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1100(Lcom/oneplus/lib/widget/RadialTimePickerView;)[I

    move-result-object v4

    aget v3, v4, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 1390
    .restart local v2    # "centerRadius":F
    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v3, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1400(Lcom/oneplus/lib/widget/RadialTimePickerView;I)I

    move-result v3

    int-to-float v3, v3

    .line 1391
    .restart local v3    # "degrees":F
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1200(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v4

    int-to-float v4, v4

    .restart local v4    # "radius":F
    goto :goto_1

    .line 1394
    .end local v2    # "centerRadius":F
    .end local v3    # "degrees":F
    .end local v4    # "radius":F
    :cond_2
    const/4 v2, 0x0

    .line 1395
    .restart local v2    # "centerRadius":F
    const/4 v3, 0x0

    .line 1396
    .restart local v3    # "degrees":F
    const/4 v4, 0x0

    .line 1399
    .restart local v4    # "radius":F
    :goto_1
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 1400
    .local v5, "radians":D
    iget-object v7, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v7}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1500(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    .line 1401
    .local v7, "xCenter":F
    iget-object v8, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v8}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$1600(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    .line 1403
    .local v8, "yCenter":F
    sub-float v9, v7, v4

    float-to-int v9, v9

    sub-float v10, v8, v4

    float-to-int v10, v10

    add-float v11, v7, v4

    float-to-int v11, v11

    add-float v12, v8, v4

    float-to-int v12, v12

    invoke-virtual {p2, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1405
    return-void
.end method

.method private getCircularDiff(III)I
    .locals 3
    .param p1, "first"    # I
    .param p2, "second"    # I
    .param p3, "max"    # I

    .line 1249
    sub-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1250
    .local v0, "diff":I
    div-int/lit8 v1, p3, 0x2

    .line 1251
    .local v1, "midpoint":I
    if-le v0, v1, :cond_0

    sub-int v2, p3, v0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method private getTypeFromId(I)I
    .locals 1
    .param p1, "id"    # I

    .line 1434
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private getValueFromId(I)I
    .locals 1
    .param p1, "id"    # I

    .line 1438
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private getVirtualViewDescription(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 1409
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1412
    :cond_0
    const/4 v0, 0x0

    .local v0, "description":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1410
    .end local v0    # "description":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1414
    .restart local v0    # "description":Ljava/lang/CharSequence;
    :goto_1
    return-object v0
.end method

.method private getVirtualViewIdAfter(II)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 1311
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1312
    add-int/lit8 v0, p2, 0x1

    .line 1313
    .local v0, "nextValue":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$200(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    .line 1314
    .local v1, "max":I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 1315
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v2

    return v2

    .line 1314
    .end local v0    # "nextValue":I
    .end local v1    # "max":I
    :cond_1
    goto :goto_1

    .line 1317
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1318
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .line 1319
    .local v0, "current":I
    rem-int/lit8 v1, p2, 0x5

    sub-int v1, p2, v1

    .line 1320
    .local v1, "snapValue":I
    add-int/lit8 v2, v1, 0x5

    .line 1321
    .local v2, "nextValue":I
    if-ge p2, v0, :cond_3

    if-le v2, v0, :cond_3

    .line 1323
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    return v3

    .line 1324
    :cond_3
    const/16 v3, 0x3c

    if-ge v2, v3, :cond_5

    .line 1325
    invoke-direct {p0, p1, v2}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    return v3

    .line 1317
    .end local v0    # "current":I
    .end local v1    # "snapValue":I
    .end local v2    # "nextValue":I
    :cond_4
    :goto_1
    nop

    .line 1328
    :cond_5
    const/high16 v0, -0x80000000

    return v0
.end method

.method private hour12To24(II)I
    .locals 2
    .param p1, "hour12"    # I
    .param p2, "amOrPm"    # I

    .line 1350
    move v0, p1

    .line 1351
    .local v0, "hour24":I
    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    .line 1352
    if-nez p2, :cond_1

    .line 1353
    const/4 v0, 0x0

    goto :goto_0

    .line 1355
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1356
    add-int/lit8 v0, v0, 0xc

    .line 1358
    :cond_1
    :goto_0
    return v0
.end method

.method private hour24To12(I)I
    .locals 1
    .param p1, "hour24"    # I

    .line 1362
    const/16 v0, 0xc

    if-nez p1, :cond_0

    .line 1363
    return v0

    .line 1364
    :cond_0
    if-le p1, v0, :cond_1

    .line 1365
    add-int/lit8 v0, p1, -0xc

    return v0

    .line 1367
    :cond_1
    return p1
.end method

.method private isVirtualViewSelected(II)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 1419
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1420
    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v2

    if-ne v2, p2, :cond_0

    move v0, v1

    .local v0, "selected":Z
    :cond_0
    goto :goto_0

    .line 1421
    .end local v0    # "selected":Z
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1422
    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v2

    if-ne v2, p2, :cond_2

    move v0, v1

    .restart local v0    # "selected":Z
    :cond_2
    goto :goto_0

    .line 1424
    .end local v0    # "selected":Z
    :cond_3
    const/4 v0, 0x0

    .line 1426
    .restart local v0    # "selected":Z
    :goto_0
    return v0
.end method

.method private makeId(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 1430
    shl-int/lit8 v0, p1, 0x0

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1208
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$300(Lcom/oneplus/lib/widget/RadialTimePickerView;FFZ)I

    move-result v0

    .line 1209
    .local v0, "degrees":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 1210
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$400(II)I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    .line 1211
    .local v2, "snapDegrees":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$100(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1212
    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v3, p1, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$500(Lcom/oneplus/lib/widget/RadialTimePickerView;FF)Z

    move-result v3

    .line 1213
    .local v3, "isOnInnerCircle":Z
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v4, v2, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$600(Lcom/oneplus/lib/widget/RadialTimePickerView;IZ)I

    move-result v4

    .line 1214
    .local v4, "hour24":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v5}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$200(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v5

    .line 1215
    .local v5, "hour":I
    :goto_0
    invoke-direct {p0, v1, v5}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v1

    .line 1216
    .end local v3    # "isOnInnerCircle":Z
    .end local v4    # "hour24":I
    .end local v5    # "hour":I
    .local v1, "id":I
    goto :goto_2

    .line 1217
    .end local v1    # "id":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    .line 1218
    .local v1, "current":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v3, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$700(Lcom/oneplus/lib/widget/RadialTimePickerView;I)I

    move-result v3

    .line 1219
    .local v3, "touched":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v4, v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$700(Lcom/oneplus/lib/widget/RadialTimePickerView;I)I

    move-result v4

    .line 1223
    .local v4, "snapped":I
    const/16 v5, 0x3c

    invoke-direct {p0, v1, v3, v5}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result v6

    .line 1224
    .local v6, "currentOffset":I
    invoke-direct {p0, v4, v3, v5}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result v5

    .line 1226
    .local v5, "snappedOffset":I
    if-ge v6, v5, :cond_2

    .line 1227
    move v7, v1

    .local v7, "minute":I
    goto :goto_1

    .line 1229
    .end local v7    # "minute":I
    :cond_2
    move v7, v4

    .line 1231
    .restart local v7    # "minute":I
    :goto_1
    const/4 v8, 0x2

    invoke-direct {p0, v8, v7}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v1

    .line 1233
    .end local v2    # "snapDegrees":I
    .end local v3    # "touched":I
    .end local v4    # "snapped":I
    .end local v5    # "snappedOffset":I
    .end local v6    # "currentOffset":I
    .end local v7    # "minute":I
    .local v1, "id":I
    :goto_2
    goto :goto_3

    .line 1234
    .end local v1    # "id":I
    :cond_3
    const/high16 v1, -0x80000000

    .line 1237
    .restart local v1    # "id":I
    :goto_3
    return v1
.end method

.method protected getVisibleVirtualViews(Lcom/oneplus/lib/widget/IntArray;)V
    .locals 5
    .param p1, "virtualViewIds"    # Lcom/oneplus/lib/widget/IntArray;

    .line 1256
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$100(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1257
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$200(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1258
    .local v0, "min":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$200(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    .line 1259
    .local v2, "max":I
    :goto_0
    move v3, v0

    .local v3, "i":I
    :goto_1
    if-gt v3, v2, :cond_1

    .line 1260
    invoke-direct {p0, v1, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/oneplus/lib/widget/IntArray;->add(I)V

    .line 1259
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1262
    .end local v0    # "min":I
    .end local v2    # "max":I
    .end local v3    # "i":I
    :cond_1
    goto :goto_3

    .line 1263
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .line 1264
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_4

    .line 1265
    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/oneplus/lib/widget/IntArray;->add(I)V

    .line 1269
    if-le v0, v1, :cond_3

    add-int/lit8 v3, v1, 0x5

    if-ge v0, v3, :cond_3

    .line 1270
    invoke-direct {p0, v2, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/widget/IntArray;->add(I)V

    .line 1264
    :cond_3
    add-int/lit8 v1, v1, 0x5

    goto :goto_2

    .line 1274
    .end local v0    # "current":I
    .end local v1    # "i":I
    :cond_4
    :goto_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1147
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1149
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1150
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1151
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1334
    const/16 v0, 0x10

    if-ne p2, v0, :cond_2

    .line 1335
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1336
    .local v0, "type":I
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    .line 1337
    .local v1, "value":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1338
    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$200(Lcom/oneplus/lib/widget/RadialTimePickerView;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$800(Lcom/oneplus/lib/widget/RadialTimePickerView;)I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour12To24(II)I

    move-result v3

    .line 1339
    .local v3, "hour":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 1340
    return v2

    .line 1341
    .end local v3    # "hour":I
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 1342
    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 1343
    return v2

    .line 1346
    .end local v0    # "type":I
    .end local v1    # "value":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1280
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1281
    .local v0, "type":I
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    .line 1282
    .local v1, "value":I
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1283
    .local v2, "description":Ljava/lang/CharSequence;
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1284
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1289
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1291
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1292
    .local v0, "type":I
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    .line 1293
    .local v1, "value":I
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1294
    .local v2, "description":Ljava/lang/CharSequence;
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1296
    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->getBoundsForVirtualView(ILandroid/graphics/Rect;)V

    .line 1297
    iget-object v3, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1299
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->isVirtualViewSelected(II)Z

    move-result v3

    .line 1300
    .local v3, "selected":Z
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 1302
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewIdAfter(II)I

    move-result v4

    .line 1303
    .local v4, "nextId":I
    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    .line 1304
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-lt v5, v6, :cond_0

    .line 1305
    iget-object v5, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p2, v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 1308
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1155
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1156
    return v1

    .line 1159
    :cond_0
    const/16 v0, 0x1000

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1

    .line 1168
    const/4 v0, 0x0

    return v0

    .line 1164
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    .line 1165
    return v1

    .line 1161
    :cond_2
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    .line 1162
    return v1
.end method
