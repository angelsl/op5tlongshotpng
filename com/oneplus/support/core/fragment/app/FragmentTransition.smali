.class Lcom/oneplus/support/core/fragment/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I

.field private static final PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

.field private static final SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 58
    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;

    invoke-direct {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;-><init>()V

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    .line 61
    invoke-static {}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->resolveSupportImpl()Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    sput-object v0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    return-void
.end method

.method static synthetic access$000(Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # I

    .line 39
    invoke-static {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Landroid/view/View;

    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p1, "x1"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/oneplus/support/collection/ArrayMap;
    .param p4, "x4"    # Z

    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->callSharedElementStartEnd(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .param p1, "x1"    # Lcom/oneplus/support/collection/ArrayMap;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->captureInSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/support/collection/ArrayMap;
    .param p1, "x1"    # Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Z

    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getInEpicenterView(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/oneplus/support/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 646
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "sharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p2, "nameOverridesSet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/oneplus/support/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 647
    invoke-virtual {p1, v0}, Lcom/oneplus/support/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 648
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 652
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static addToFirstInLastOut(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .locals 22
    .param p0, "transaction"    # Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    .param p1, "op"    # Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;
    .param p3, "isPop"    # Z
    .param p4, "isReorderedTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;",
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1118
    .local p2, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v10, v1, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 1119
    .local v10, "fragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    if-nez v10, :cond_0

    .line 1120
    return-void

    .line 1122
    :cond_0
    iget v11, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainerId:I

    .line 1123
    .local v11, "containerId":I
    if-nez v11, :cond_1

    .line 1124
    return-void

    .line 1126
    :cond_1
    if-eqz v3, :cond_2

    sget-object v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    iget v5, v1, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->cmd:I

    aget v4, v4, v5

    goto :goto_0

    :cond_2
    iget v4, v1, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->cmd:I

    :goto_0
    move v12, v4

    .line 1127
    .local v12, "command":I
    const/4 v4, 0x0

    .line 1128
    .local v4, "setLastIn":Z
    const/4 v5, 0x0

    .line 1129
    .local v5, "wasRemoved":Z
    const/4 v6, 0x0

    .line 1130
    .local v6, "setFirstOut":Z
    const/4 v7, 0x0

    .line 1131
    .local v7, "wasAdded":Z
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v12, v9, :cond_e

    const/4 v13, 0x3

    if-eq v12, v13, :cond_a

    const/4 v13, 0x4

    if-eq v12, v13, :cond_6

    const/4 v13, 0x5

    if-eq v12, v13, :cond_3

    const/4 v13, 0x6

    if-eq v12, v13, :cond_a

    const/4 v13, 0x7

    if-eq v12, v13, :cond_e

    move v13, v4

    move v15, v5

    move/from16 v16, v6

    move v14, v7

    goto/16 :goto_6

    .line 1133
    :cond_3
    if-eqz p4, :cond_5

    .line 1134
    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v13, :cond_4

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_4

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_4

    move v8, v9

    :cond_4
    move v4, v8

    goto :goto_1

    .line 1136
    :cond_5
    iget-boolean v4, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    .line 1138
    :goto_1
    const/4 v7, 0x1

    .line 1139
    move v13, v4

    move v15, v5

    move/from16 v16, v6

    move v14, v7

    goto/16 :goto_6

    .line 1150
    :cond_6
    if-eqz p4, :cond_8

    .line 1151
    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v13, :cond_7

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_7

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-eqz v13, :cond_7

    move v8, v9

    :cond_7
    move v6, v8

    goto :goto_2

    .line 1153
    :cond_8
    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_9

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_9

    move v8, v9

    :cond_9
    move v6, v8

    .line 1155
    :goto_2
    const/4 v5, 0x1

    .line 1156
    move v13, v4

    move v15, v5

    move/from16 v16, v6

    move v14, v7

    goto :goto_6

    .line 1159
    :cond_a
    if-eqz p4, :cond_c

    .line 1160
    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-nez v13, :cond_b

    iget-object v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v13, :cond_b

    iget-object v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1161
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_b

    iget v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_b

    move v8, v9

    goto :goto_3

    :cond_b
    nop

    :goto_3
    move v6, v8

    goto :goto_4

    .line 1164
    :cond_c
    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_d

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_d

    move v8, v9

    :cond_d
    move v6, v8

    .line 1166
    :goto_4
    const/4 v5, 0x1

    move v13, v4

    move v15, v5

    move/from16 v16, v6

    move v14, v7

    goto :goto_6

    .line 1142
    :cond_e
    if-eqz p4, :cond_f

    .line 1143
    iget-boolean v4, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_5

    .line 1145
    :cond_f
    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-nez v13, :cond_10

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_10

    move v8, v9

    :cond_10
    move v4, v8

    .line 1147
    :goto_5
    const/4 v7, 0x1

    .line 1148
    move v13, v4

    move v15, v5

    move/from16 v16, v6

    move v14, v7

    .line 1169
    .end local v4    # "setLastIn":Z
    .end local v5    # "wasRemoved":Z
    .end local v6    # "setFirstOut":Z
    .end local v7    # "wasAdded":Z
    .local v13, "setLastIn":Z
    .local v14, "wasAdded":Z
    .local v15, "wasRemoved":Z
    .local v16, "setFirstOut":Z
    :goto_6
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    .line 1170
    .local v4, "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    if-eqz v13, :cond_11

    .line 1171
    nop

    .line 1172
    invoke-static {v4, v2, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->ensureContainer(Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v4

    .line 1173
    iput-object v10, v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 1174
    iput-boolean v3, v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1175
    iput-object v0, v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    move-object v8, v4

    goto :goto_7

    .line 1170
    :cond_11
    move-object v8, v4

    .line 1177
    .end local v4    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .local v8, "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    :goto_7
    const/4 v7, 0x0

    if-nez p4, :cond_14

    if-eqz v14, :cond_14

    .line 1178
    if-eqz v8, :cond_12

    iget-object v4, v8, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-ne v4, v10, :cond_12

    .line 1179
    iput-object v7, v8, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 1186
    :cond_12
    iget-object v6, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    .line 1187
    .local v6, "manager":Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
    iget v4, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    if-ge v4, v9, :cond_13

    iget v4, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    if-lt v4, v9, :cond_13

    iget-boolean v4, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v4, :cond_13

    .line 1189
    invoke-virtual {v6, v10}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->makeActive(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    .line 1190
    const/4 v9, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v4, v6

    move-object v5, v10

    move-object/from16 v20, v6

    .end local v6    # "manager":Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
    .local v20, "manager":Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
    move v6, v9

    move-object v9, v7

    move/from16 v7, v17

    move-object/from16 v21, v8

    .end local v8    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .local v21, "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    move/from16 v8, v18

    move-object v1, v9

    move/from16 v9, v19

    invoke-virtual/range {v4 .. v9}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;IIIZ)V

    goto :goto_8

    .line 1187
    .end local v20    # "manager":Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
    .end local v21    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v6    # "manager":Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
    .restart local v8    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    :cond_13
    move-object/from16 v20, v6

    move-object v1, v7

    move-object/from16 v21, v8

    .end local v6    # "manager":Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
    .end local v8    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v20    # "manager":Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
    .restart local v21    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    goto :goto_8

    .line 1177
    .end local v20    # "manager":Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
    .end local v21    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v8    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    :cond_14
    move-object v1, v7

    move-object/from16 v21, v8

    .line 1193
    .end local v8    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v21    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    :goto_8
    if-eqz v16, :cond_16

    move-object/from16 v4, v21

    .end local v21    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v4    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    if-eqz v4, :cond_15

    iget-object v5, v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-nez v5, :cond_17

    .line 1194
    :cond_15
    nop

    .line 1195
    invoke-static {v4, v2, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->ensureContainer(Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v8

    .line 1196
    .end local v4    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v8    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    iput-object v10, v8, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 1197
    iput-boolean v3, v8, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1198
    iput-object v0, v8, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    move-object v4, v8

    goto :goto_9

    .line 1193
    .end local v8    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v21    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    :cond_16
    move-object/from16 v4, v21

    .line 1201
    .end local v21    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v4    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    :cond_17
    :goto_9
    if-nez p4, :cond_18

    if-eqz v15, :cond_18

    if-eqz v4, :cond_18

    iget-object v5, v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-ne v5, v10, :cond_18

    .line 1203
    iput-object v1, v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 1205
    :cond_18
    return-void
.end method

.method public static calculateFragments(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .param p0, "transaction"    # Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1070
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1071
    .local v0, "numOps":I
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1072
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;

    .line 1073
    .local v2, "op":Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;
    const/4 v3, 0x0

    invoke-static {p0, v2, p1, v3, p2}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->addToFirstInLastOut(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1071
    .end local v2    # "op":Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1075
    .end local v1    # "opNum":I
    :cond_0
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/oneplus/support/collection/ArrayMap;
    .locals 11
    .param p0, "containerId"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/support/core/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {v0}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    .line 162
    .local v0, "nameOverrides":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v1, p4, -0x1

    .local v1, "recordNum":I
    :goto_0
    if-lt v1, p3, :cond_4

    .line 163
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    .line 164
    .local v2, "record":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    invoke-virtual {v2, p0}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    goto :goto_4

    .line 167
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 168
    .local v3, "isPop":Z
    iget-object v4, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 169
    iget-object v4, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 172
    .local v4, "numSharedElements":I
    if-eqz v3, :cond_1

    .line 173
    iget-object v5, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 174
    .local v5, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .local v6, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 176
    .end local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v6, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 177
    .restart local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 179
    .restart local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v4, :cond_3

    .line 180
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 181
    .local v8, "sourceName":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 182
    .local v9, "targetName":Ljava/lang/String;
    invoke-virtual {v0, v9}, Lcom/oneplus/support/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 183
    .local v10, "previousTarget":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 184
    invoke-virtual {v0, v8, v10}, Lcom/oneplus/support/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 186
    :cond_2
    invoke-virtual {v0, v8, v9}, Lcom/oneplus/support/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v8    # "sourceName":Ljava/lang/String;
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "previousTarget":Ljava/lang/String;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 162
    .end local v2    # "record":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    .end local v3    # "isPop":Z
    .end local v4    # "numSharedElements":I
    .end local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i":I
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 191
    .end local v1    # "recordNum":I
    :cond_4
    return-object v0
.end method

.method public static calculatePopFragments(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .param p0, "transaction"    # Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1087
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    return-void

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1091
    .local v0, "numOps":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "opNum":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1092
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;

    .line 1093
    .local v2, "op":Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;
    const/4 v3, 0x1

    invoke-static {p0, v2, p1, v3, p2}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->addToFirstInLastOut(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1091
    .end local v2    # "op":Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1095
    .end local v1    # "opNum":I
    :cond_1
    return-void
.end method

.method private static callSharedElementStartEnd(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V
    .locals 6
    .param p0, "inFragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p1, "outFragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p2, "isPop"    # Z
    .param p4, "isStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            "Z",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 975
    .local p3, "sharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 976
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransitionCallback()Lcom/oneplus/support/core/app/SharedElementCallback;

    move-result-object v0

    goto :goto_0

    .line 977
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransitionCallback()Lcom/oneplus/support/core/app/SharedElementCallback;

    move-result-object v0

    :goto_0
    nop

    .line 978
    .local v0, "sharedElementCallback":Lcom/oneplus/support/core/app/SharedElementCallback;
    if-eqz v0, :cond_4

    .line 979
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 980
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/support/collection/ArrayMap;->size()I

    move-result v3

    .line 982
    .local v3, "count":I
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_2

    .line 983
    invoke-virtual {p3, v4}, Lcom/oneplus/support/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    invoke-virtual {p3, v4}, Lcom/oneplus/support/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 986
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    if-eqz p4, :cond_3

    .line 987
    invoke-virtual {v0, v2, v1, v4}, Lcom/oneplus/support/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    .line 989
    :cond_3
    invoke-virtual {v0, v2, v1, v4}, Lcom/oneplus/support/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 992
    .end local v1    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "count":I
    :cond_4
    :goto_3
    return-void
.end method

.method private static canHandleAll(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z
    .locals 3
    .param p0, "impl"    # Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 469
    .local p1, "transitions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 470
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 471
    const/4 v2, 0x0

    return v2

    .line 469
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static captureInSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;
    .locals 11
    .param p0, "impl"    # Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .param p2, "sharedElementTransition"    # Ljava/lang/Object;
    .param p3, "fragments"    # Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 837
    .local p1, "nameOverrides":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 838
    .local v0, "inFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 839
    .local v1, "fragmentView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/oneplus/support/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz p2, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 843
    :cond_0
    new-instance v2, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {v2}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    .line 844
    .local v2, "inSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0, v2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 848
    iget-object v3, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    .line 849
    .local v3, "inTransaction":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    iget-boolean v4, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v4, :cond_1

    .line 850
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getExitTransitionCallback()Lcom/oneplus/support/core/app/SharedElementCallback;

    move-result-object v4

    .line 851
    .local v4, "sharedElementCallback":Lcom/oneplus/support/core/app/SharedElementCallback;
    iget-object v5, v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 853
    .end local v4    # "sharedElementCallback":Lcom/oneplus/support/core/app/SharedElementCallback;
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransitionCallback()Lcom/oneplus/support/core/app/SharedElementCallback;

    move-result-object v4

    .line 854
    .restart local v4    # "sharedElementCallback":Lcom/oneplus/support/core/app/SharedElementCallback;
    iget-object v5, v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 857
    .restart local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz v5, :cond_2

    .line 858
    invoke-virtual {v2, v5}, Lcom/oneplus/support/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 859
    invoke-virtual {p1}, Lcom/oneplus/support/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/oneplus/support/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 861
    :cond_2
    if-eqz v4, :cond_7

    .line 862
    invoke-virtual {v4, v5, v2}, Lcom/oneplus/support/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 863
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_6

    .line 864
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 865
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v2, v7}, Lcom/oneplus/support/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 866
    .local v8, "view":Landroid/view/View;
    if-nez v8, :cond_3

    .line 867
    invoke-static {p1, v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->findKeyForValue(Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 868
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 869
    invoke-virtual {p1, v9}, Lcom/oneplus/support/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 871
    .end local v9    # "key":Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Lcom/oneplus/support/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 872
    invoke-static {p1, v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->findKeyForValue(Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 873
    .restart local v9    # "key":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 874
    invoke-static {v8}, Lcom/oneplus/support/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Lcom/oneplus/support/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 871
    .end local v9    # "key":Ljava/lang/String;
    :cond_4
    :goto_2
    nop

    .line 863
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "view":Landroid/view/View;
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .end local v6    # "i":I
    :cond_6
    goto :goto_4

    .line 879
    :cond_7
    invoke-static {p1, v2}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->retainValues(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/collection/ArrayMap;)V

    .line 881
    :goto_4
    return-object v2

    .line 840
    .end local v2    # "inSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v3    # "inTransaction":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    .end local v4    # "sharedElementCallback":Lcom/oneplus/support/core/app/SharedElementCallback;
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    :goto_5
    invoke-virtual {p1}, Lcom/oneplus/support/collection/ArrayMap;->clear()V

    .line 841
    const/4 v2, 0x0

    return-object v2
.end method

.method private static captureOutSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;
    .locals 10
    .param p0, "impl"    # Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .param p2, "sharedElementTransition"    # Ljava/lang/Object;
    .param p3, "fragments"    # Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 782
    .local p1, "nameOverrides":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/oneplus/support/collection/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_4

    .line 786
    :cond_0
    iget-object v0, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 787
    .local v0, "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    new-instance v1, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {v1}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    .line 788
    .local v1, "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 792
    iget-object v2, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    .line 793
    .local v2, "outTransaction":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    iget-boolean v3, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v3, :cond_1

    .line 794
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransitionCallback()Lcom/oneplus/support/core/app/SharedElementCallback;

    move-result-object v3

    .line 795
    .local v3, "sharedElementCallback":Lcom/oneplus/support/core/app/SharedElementCallback;
    iget-object v4, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .local v4, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 797
    .end local v3    # "sharedElementCallback":Lcom/oneplus/support/core/app/SharedElementCallback;
    .end local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getExitTransitionCallback()Lcom/oneplus/support/core/app/SharedElementCallback;

    move-result-object v3

    .line 798
    .restart local v3    # "sharedElementCallback":Lcom/oneplus/support/core/app/SharedElementCallback;
    iget-object v4, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 801
    .restart local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1, v4}, Lcom/oneplus/support/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 802
    if-eqz v3, :cond_5

    .line 803
    invoke-virtual {v3, v4, v1}, Lcom/oneplus/support/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 804
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_4

    .line 805
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 806
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/oneplus/support/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 807
    .local v7, "view":Landroid/view/View;
    if-nez v7, :cond_2

    .line 808
    invoke-virtual {p1, v6}, Lcom/oneplus/support/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 809
    :cond_2
    invoke-static {v7}, Lcom/oneplus/support/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 810
    invoke-virtual {p1, v6}, Lcom/oneplus/support/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 811
    .local v8, "targetValue":Ljava/lang/String;
    invoke-static {v7}, Lcom/oneplus/support/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Lcom/oneplus/support/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "targetValue":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .end local v5    # "i":I
    :cond_4
    goto :goto_3

    .line 815
    :cond_5
    invoke-virtual {v1}, Lcom/oneplus/support/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/oneplus/support/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 817
    :goto_3
    return-object v1

    .line 783
    .end local v0    # "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    .end local v1    # "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v2    # "outTransaction":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    .end local v3    # "sharedElementCallback":Lcom/oneplus/support/core/app/SharedElementCallback;
    .end local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :goto_4
    invoke-virtual {p1}, Lcom/oneplus/support/collection/ArrayMap;->clear()V

    .line 784
    const/4 v0, 0x0

    return-object v0
.end method

.method private static chooseImpl(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .locals 4
    .param p0, "outFragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p1, "inFragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v0, "transitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p0, :cond_2

    .line 425
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    .line 426
    .local v1, "exitTransition":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v2

    .line 430
    .local v2, "returnTransition":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 431
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v3

    .line 434
    .local v3, "sharedReturnTransition":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 435
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v1    # "exitTransition":Ljava/lang/Object;
    .end local v2    # "returnTransition":Ljava/lang/Object;
    .end local v3    # "sharedReturnTransition":Ljava/lang/Object;
    :cond_2
    if-eqz p1, :cond_5

    .line 439
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v1

    .line 440
    .local v1, "enterTransition":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 441
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v2

    .line 444
    .local v2, "reenterTransition":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 445
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v3

    .line 448
    .local v3, "sharedEnterTransition":Ljava/lang/Object;
    if-eqz v3, :cond_5

    .line 449
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    .end local v1    # "enterTransition":Ljava/lang/Object;
    .end local v2    # "reenterTransition":Ljava/lang/Object;
    .end local v3    # "sharedEnterTransition":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 453
    return-object v2

    .line 456
    :cond_6
    sget-object v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-eqz v1, :cond_7

    invoke-static {v1, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->canHandleAll(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 457
    sget-object v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    return-object v1

    .line 459
    :cond_7
    sget-object v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-eqz v1, :cond_8

    invoke-static {v1, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->canHandleAll(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 460
    sget-object v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    return-object v1

    .line 462
    :cond_8
    sget-object v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-nez v1, :cond_9

    sget-object v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-nez v1, :cond_9

    .line 465
    return-object v2

    .line 463
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Transition types"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static configureEnteringExitingViews(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "impl"    # Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .param p1, "transition"    # Ljava/lang/Object;
    .param p2, "fragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p4, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 997
    .local p3, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 998
    .local v0, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_2

    .line 999
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1000
    invoke-virtual {p2}, Lcom/oneplus/support/core/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1001
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1002
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1004
    :cond_0
    if-eqz p3, :cond_1

    .line 1005
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1007
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1008
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1012
    .end local v1    # "root":Landroid/view/View;
    :cond_2
    return-object v0
.end method

.method private static configureSharedElementsOrdered(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .param p0, "impl"    # Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .param p4, "fragments"    # Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p7, "enterTransition"    # Ljava/lang/Object;
    .param p8, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 689
    .local p3, "nameOverrides":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v13, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v12, p7

    iget-object v11, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 690
    .local v11, "inFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    iget-object v10, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 692
    .local v10, "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    const/4 v0, 0x0

    if-eqz v11, :cond_6

    if-nez v10, :cond_0

    move-object/from16 v1, p1

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    goto/16 :goto_3

    .line 696
    :cond_0
    iget-boolean v9, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 697
    .local v9, "inIsPop":Z
    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/support/collection/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 698
    :cond_1
    invoke-static {v13, v11, v10, v9}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getSharedElementTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    nop

    .line 700
    .local v1, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v8, p3

    invoke-static {v13, v8, v1, v14}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->captureOutSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;

    move-result-object v7

    .line 703
    .local v7, "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/support/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 704
    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_1

    .line 706
    :cond_2
    invoke-virtual {v7}, Lcom/oneplus/support/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v6, v1

    .line 709
    .end local v1    # "sharedElementTransition":Ljava/lang/Object;
    .local v6, "sharedElementTransition":Ljava/lang/Object;
    :goto_1
    if-nez v12, :cond_3

    if-nez p8, :cond_3

    if-nez v6, :cond_3

    .line 711
    return-object v0

    .line 714
    :cond_3
    const/4 v0, 0x1

    invoke-static {v11, v10, v9, v7, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->callSharedElementStartEnd(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V

    .line 717
    if-eqz v6, :cond_5

    .line 718
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v0

    .line 719
    .local v5, "inEpicenter":Landroid/graphics/Rect;
    move-object/from16 v4, p2

    invoke-virtual {v13, v6, v4, v15}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 721
    iget-boolean v3, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 722
    .local v3, "outIsPop":Z
    iget-object v2, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    .line 723
    .local v2, "outTransaction":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v16, v2

    .end local v2    # "outTransaction":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    .local v16, "outTransaction":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    move-object/from16 v2, p8

    move/from16 v17, v3

    .end local v3    # "outIsPop":Z
    .local v17, "outIsPop":Z
    move-object v3, v7

    move/from16 v4, v17

    move-object/from16 v18, v7

    move-object v7, v5

    .end local v5    # "inEpicenter":Landroid/graphics/Rect;
    .local v7, "inEpicenter":Landroid/graphics/Rect;
    .local v18, "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->setOutEpicenter(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/collection/ArrayMap;ZLcom/oneplus/support/core/fragment/app/BackStackRecord;)V

    .line 725
    if-eqz v12, :cond_4

    .line 726
    invoke-virtual {v13, v12, v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 728
    .end local v16    # "outTransaction":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    .end local v17    # "outIsPop":Z
    :cond_4
    move-object/from16 v16, v7

    goto :goto_2

    .line 729
    .end local v18    # "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v7, "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_5
    move-object/from16 v18, v7

    .end local v7    # "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v18    # "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 733
    .local v16, "inEpicenter":Landroid/graphics/Rect;
    :goto_2
    move-object v3, v6

    .line 734
    .local v3, "finalSharedElementTransition":Ljava/lang/Object;
    new-instance v7, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v17, v6

    .end local v6    # "sharedElementTransition":Ljava/lang/Object;
    .local v17, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v6, p2

    move-object v13, v7

    move-object v7, v11

    move-object v8, v10

    move/from16 v19, v9

    .end local v9    # "inIsPop":Z
    .local v19, "inIsPop":Z
    move-object/from16 v20, v10

    .end local v10    # "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    .local v20, "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    move-object/from16 v10, p5

    move-object/from16 v21, v11

    .end local v11    # "inFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    .local v21, "inFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    move-object/from16 v11, p7

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v1, p1

    invoke-static {v1, v13}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    .line 762
    return-object v17

    .line 692
    .end local v3    # "finalSharedElementTransition":Ljava/lang/Object;
    .end local v16    # "inEpicenter":Landroid/graphics/Rect;
    .end local v17    # "sharedElementTransition":Ljava/lang/Object;
    .end local v18    # "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v19    # "inIsPop":Z
    .end local v20    # "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    .end local v21    # "inFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    .restart local v10    # "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    .restart local v11    # "inFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    :cond_6
    move-object/from16 v1, p1

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    .line 693
    .end local v10    # "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    .end local v11    # "inFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    .restart local v20    # "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    .restart local v21    # "inFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    :goto_3
    return-object v0
.end method

.method private static configureSharedElementsReordered(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .param p0, "impl"    # Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .param p4, "fragments"    # Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p7, "enterTransition"    # Ljava/lang/Object;
    .param p8, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 560
    .local p3, "nameOverrides":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    iget-object v15, v11, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 561
    .local v15, "inFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    iget-object v7, v11, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 562
    .local v7, "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    if-eqz v15, :cond_0

    .line 563
    invoke-virtual {v15}, Lcom/oneplus/support/core/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 565
    :cond_0
    const/4 v0, 0x0

    if-eqz v15, :cond_9

    if-nez v7, :cond_1

    move-object/from16 v1, p1

    move-object/from16 v21, v7

    goto/16 :goto_3

    .line 569
    :cond_1
    iget-boolean v6, v11, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 570
    .local v6, "inIsPop":Z
    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/support/collection/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    goto :goto_0

    .line 571
    :cond_2
    invoke-static {v8, v15, v7, v6}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getSharedElementTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    nop

    .line 573
    .local v1, "sharedElementTransition":Ljava/lang/Object;
    invoke-static {v8, v10, v1, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->captureOutSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;

    move-result-object v5

    .line 576
    .local v5, "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-static {v8, v10, v1, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->captureInSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;

    move-result-object v4

    .line 579
    .local v4, "inSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/support/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 580
    const/4 v1, 0x0

    .line 581
    if-eqz v5, :cond_3

    .line 582
    invoke-virtual {v5}, Lcom/oneplus/support/collection/ArrayMap;->clear()V

    .line 584
    :cond_3
    if-eqz v4, :cond_4

    .line 585
    invoke-virtual {v4}, Lcom/oneplus/support/collection/ArrayMap;->clear()V

    .line 594
    :cond_4
    move-object v3, v1

    goto :goto_1

    .line 588
    :cond_5
    nop

    .line 589
    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/support/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 588
    invoke-static {v12, v5, v2}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/oneplus/support/collection/ArrayMap;Ljava/util/Collection;)V

    .line 590
    nop

    .line 591
    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/support/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 590
    invoke-static {v13, v4, v2}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/oneplus/support/collection/ArrayMap;Ljava/util/Collection;)V

    move-object v3, v1

    .line 594
    .end local v1    # "sharedElementTransition":Ljava/lang/Object;
    .local v3, "sharedElementTransition":Ljava/lang/Object;
    :goto_1
    if-nez v14, :cond_6

    if-nez p8, :cond_6

    if-nez v3, :cond_6

    .line 596
    return-object v0

    .line 599
    :cond_6
    const/4 v0, 0x1

    invoke-static {v15, v7, v6, v5, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->callSharedElementStartEnd(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V

    .line 603
    if-eqz v3, :cond_8

    .line 604
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {v8, v3, v9, v12}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 607
    iget-boolean v2, v11, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 608
    .local v2, "outIsPop":Z
    iget-object v1, v11, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    .line 609
    .local v1, "outTransaction":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    move-object/from16 v0, p0

    move-object/from16 v16, v1

    .end local v1    # "outTransaction":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    .local v16, "outTransaction":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    move-object v1, v3

    move/from16 v17, v2

    .end local v2    # "outIsPop":Z
    .local v17, "outIsPop":Z
    move-object/from16 v2, p8

    move-object/from16 v18, v3

    .end local v3    # "sharedElementTransition":Ljava/lang/Object;
    .local v18, "sharedElementTransition":Ljava/lang/Object;
    move-object v3, v5

    move-object v9, v4

    .end local v4    # "inSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v9, "inSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move/from16 v4, v17

    move-object/from16 v19, v5

    .end local v5    # "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v19, "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->setOutEpicenter(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/collection/ArrayMap;ZLcom/oneplus/support/core/fragment/app/BackStackRecord;)V

    .line 611
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 612
    .local v0, "epicenter":Landroid/graphics/Rect;
    invoke-static {v9, v11, v14, v6}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getInEpicenterView(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    .line 614
    .local v1, "epicenterView":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 615
    invoke-virtual {v8, v14, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 617
    .end local v16    # "outTransaction":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    .end local v17    # "outIsPop":Z
    :cond_7
    move-object/from16 v17, v0

    move-object/from16 v16, v1

    goto :goto_2

    .line 618
    .end local v0    # "epicenter":Landroid/graphics/Rect;
    .end local v1    # "epicenterView":Landroid/view/View;
    .end local v9    # "inSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v18    # "sharedElementTransition":Ljava/lang/Object;
    .end local v19    # "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v3    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v4    # "inSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v5    # "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_8
    move-object/from16 v18, v3

    move-object v9, v4

    move-object/from16 v19, v5

    .end local v3    # "sharedElementTransition":Ljava/lang/Object;
    .end local v4    # "inSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v5    # "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v9    # "inSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v18    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v19    # "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 619
    .restart local v0    # "epicenter":Landroid/graphics/Rect;
    const/4 v1, 0x0

    move-object/from16 v17, v0

    move-object/from16 v16, v1

    .line 622
    .end local v0    # "epicenter":Landroid/graphics/Rect;
    .local v16, "epicenterView":Landroid/view/View;
    .local v17, "epicenter":Landroid/graphics/Rect;
    :goto_2
    new-instance v5, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;

    move-object v0, v5

    move-object v1, v15

    move-object v2, v7

    move v3, v6

    move-object v4, v9

    move-object v8, v5

    move-object/from16 v5, v16

    move/from16 v20, v6

    .end local v6    # "inIsPop":Z
    .local v20, "inIsPop":Z
    move-object/from16 v6, p0

    move-object/from16 v21, v7

    .end local v7    # "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    .local v21, "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;-><init>(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V

    move-object/from16 v1, p1

    invoke-static {v1, v8}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    .line 632
    return-object v18

    .line 565
    .end local v9    # "inSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v16    # "epicenterView":Landroid/view/View;
    .end local v17    # "epicenter":Landroid/graphics/Rect;
    .end local v18    # "sharedElementTransition":Ljava/lang/Object;
    .end local v19    # "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v20    # "inIsPop":Z
    .end local v21    # "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    .restart local v7    # "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    :cond_9
    move-object/from16 v1, p1

    move-object/from16 v21, v7

    .line 566
    .end local v7    # "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    .restart local v21    # "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    :goto_3
    return-object v0
.end method

.method private static configureTransitionsOrdered(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;ILcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;)V
    .locals 30
    .param p0, "fragmentManager"    # Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;",
            "I",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 310
    .local p4, "nameOverrides":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const/4 v1, 0x0

    .line 311
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    iget-object v2, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    invoke-virtual {v2}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    move/from16 v13, p1

    invoke-virtual {v2, v13}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    move-object v14, v1

    goto :goto_0

    .line 311
    :cond_0
    move/from16 v13, p1

    move-object v14, v1

    .line 314
    .end local v1    # "sceneRoot":Landroid/view/ViewGroup;
    .local v14, "sceneRoot":Landroid/view/ViewGroup;
    :goto_0
    if-nez v14, :cond_1

    .line 315
    return-void

    .line 317
    :cond_1
    iget-object v15, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 318
    .local v15, "inFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    iget-object v9, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 319
    .local v9, "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    invoke-static {v9, v15}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->chooseImpl(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    move-result-object v8

    .line 320
    .local v8, "impl":Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    if-nez v8, :cond_2

    .line 321
    return-void

    .line 323
    :cond_2
    iget-boolean v7, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 324
    .local v7, "inIsPop":Z
    iget-boolean v6, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 326
    .local v6, "outIsPop":Z
    invoke-static {v8, v15, v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getEnterTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    .line 327
    .local v5, "enterTransition":Ljava/lang/Object;
    invoke-static {v8, v9, v6}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getExitTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v4

    .line 329
    .local v4, "exitTransition":Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    .line 330
    .local v3, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 332
    .local v2, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v1, v8

    move-object/from16 v24, v2

    .end local v2    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v24, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v2, v14

    move-object/from16 v25, v3

    .end local v3    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v25, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v3, p3

    move-object/from16 v16, v4

    .end local v4    # "exitTransition":Ljava/lang/Object;
    .local v16, "exitTransition":Ljava/lang/Object;
    move-object/from16 v4, p4

    move-object/from16 v26, v5

    .end local v5    # "enterTransition":Ljava/lang/Object;
    .local v26, "enterTransition":Ljava/lang/Object;
    move-object/from16 v5, p2

    move/from16 v27, v6

    .end local v6    # "outIsPop":Z
    .local v27, "outIsPop":Z
    move-object/from16 v6, v25

    move/from16 v28, v7

    .end local v7    # "inIsPop":Z
    .local v28, "inIsPop":Z
    move-object/from16 v7, v24

    move-object v0, v8

    .end local v8    # "impl":Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .local v0, "impl":Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    move-object/from16 v8, v26

    move-object v13, v9

    .end local v9    # "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    .local v13, "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    move-object/from16 v9, v16

    invoke-static/range {v1 .. v9}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 336
    .local v29, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v9, v26

    .end local v26    # "enterTransition":Ljava/lang/Object;
    .local v9, "enterTransition":Ljava/lang/Object;
    if-nez v9, :cond_3

    if-nez v29, :cond_3

    move-object/from16 v1, v16

    .end local v16    # "exitTransition":Ljava/lang/Object;
    .local v1, "exitTransition":Ljava/lang/Object;
    if-nez v1, :cond_4

    .line 338
    return-void

    .line 336
    .end local v1    # "exitTransition":Ljava/lang/Object;
    .restart local v16    # "exitTransition":Ljava/lang/Object;
    :cond_3
    move-object/from16 v1, v16

    .line 341
    .end local v16    # "exitTransition":Ljava/lang/Object;
    .restart local v1    # "exitTransition":Ljava/lang/Object;
    :cond_4
    move-object/from16 v8, v25

    .end local v25    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v8, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, v1, v13, v8, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v25

    .line 344
    .local v25, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v25, :cond_6

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move-object/from16 v26, v1

    goto :goto_2

    .line 345
    :cond_6
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v26, v1

    .line 350
    .end local v1    # "exitTransition":Ljava/lang/Object;
    .local v26, "exitTransition":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v0, v9, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 352
    iget-boolean v6, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object v1, v0

    move-object v2, v9

    move-object/from16 v3, v26

    move-object/from16 v4, v29

    move-object v5, v15

    invoke-static/range {v1 .. v6}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->mergeTransitions(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 355
    .local v7, "transition":Ljava/lang/Object;
    if-eqz v7, :cond_7

    .line 356
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v19, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v16, v0

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v20, v26

    move-object/from16 v21, v25

    move-object/from16 v22, v29

    move-object/from16 v23, v24

    invoke-virtual/range {v16 .. v23}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 360
    move-object v1, v0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p3

    move-object/from16 v5, v24

    move-object v6, v9

    move-object v10, v7

    .end local v7    # "transition":Ljava/lang/Object;
    .local v10, "transition":Ljava/lang/Object;
    move-object/from16 v7, v19

    move-object/from16 v16, v8

    .end local v8    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v16, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v8, v26

    move-object/from16 v17, v9

    .end local v9    # "enterTransition":Ljava/lang/Object;
    .local v17, "enterTransition":Ljava/lang/Object;
    move-object/from16 v9, v25

    invoke-static/range {v1 .. v9}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->scheduleTargetChange(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 362
    move-object/from16 v1, v24

    .end local v24    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, v14, v1, v12}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 364
    invoke-virtual {v0, v14, v10}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 365
    invoke-virtual {v0, v14, v1, v12}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_3

    .line 355
    .end local v1    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v10    # "transition":Ljava/lang/Object;
    .end local v16    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v17    # "enterTransition":Ljava/lang/Object;
    .end local v19    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v7    # "transition":Ljava/lang/Object;
    .restart local v8    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v9    # "enterTransition":Ljava/lang/Object;
    .restart local v24    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_7
    move-object v10, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v1, v24

    .line 367
    .end local v7    # "transition":Ljava/lang/Object;
    .end local v8    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "enterTransition":Ljava/lang/Object;
    .end local v24    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v10    # "transition":Ljava/lang/Object;
    .restart local v16    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v17    # "enterTransition":Ljava/lang/Object;
    :goto_3
    return-void
.end method

.method private static configureTransitionsReordered(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;ILcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;)V
    .locals 23
    .param p0, "fragmentManager"    # Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;",
            "I",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p4, "nameOverrides":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const/4 v1, 0x0

    .line 213
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    iget-object v2, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    invoke-virtual {v2}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    move/from16 v12, p1

    invoke-virtual {v2, v12}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    move-object v13, v1

    goto :goto_0

    .line 213
    :cond_0
    move/from16 v12, p1

    move-object v13, v1

    .line 216
    .end local v1    # "sceneRoot":Landroid/view/ViewGroup;
    .local v13, "sceneRoot":Landroid/view/ViewGroup;
    :goto_0
    if-nez v13, :cond_1

    .line 217
    return-void

    .line 219
    :cond_1
    iget-object v14, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 220
    .local v14, "inFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    iget-object v15, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 221
    .local v15, "outFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    invoke-static {v15, v14}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->chooseImpl(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    move-result-object v9

    .line 222
    .local v9, "impl":Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    if-nez v9, :cond_2

    .line 223
    return-void

    .line 225
    :cond_2
    iget-boolean v8, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 226
    .local v8, "inIsPop":Z
    iget-boolean v7, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 228
    .local v7, "outIsPop":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 229
    .local v6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    .line 230
    .local v5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v9, v14, v8}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getEnterTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v4

    .line 231
    .local v4, "enterTransition":Ljava/lang/Object;
    invoke-static {v9, v15, v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getExitTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v3

    .line 233
    .local v3, "exitTransition":Ljava/lang/Object;
    move-object v1, v9

    move-object v2, v13

    move-object/from16 v16, v3

    .end local v3    # "exitTransition":Ljava/lang/Object;
    .local v16, "exitTransition":Ljava/lang/Object;
    move-object/from16 v3, p3

    move-object/from16 v17, v4

    .end local v4    # "enterTransition":Ljava/lang/Object;
    .local v17, "enterTransition":Ljava/lang/Object;
    move-object/from16 v4, p4

    move-object/from16 v18, v5

    .end local v5    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v18, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v5, p2

    move-object/from16 v19, v6

    .end local v6    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v19, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v6, v18

    move/from16 v20, v7

    .end local v7    # "outIsPop":Z
    .local v20, "outIsPop":Z
    move-object/from16 v7, v19

    move/from16 v21, v8

    .end local v8    # "inIsPop":Z
    .local v21, "inIsPop":Z
    move-object/from16 v8, v17

    move-object v0, v9

    .end local v9    # "impl":Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .local v0, "impl":Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    move-object/from16 v9, v16

    invoke-static/range {v1 .. v9}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureSharedElementsReordered(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 237
    .local v9, "sharedElementTransition":Ljava/lang/Object;
    nop

    .end local v17    # "enterTransition":Ljava/lang/Object;
    .local v8, "enterTransition":Ljava/lang/Object;
    if-nez v8, :cond_3

    if-nez v9, :cond_3

    move-object/from16 v7, v16

    .end local v16    # "exitTransition":Ljava/lang/Object;
    .local v7, "exitTransition":Ljava/lang/Object;
    if-nez v7, :cond_4

    .line 239
    return-void

    .line 237
    .end local v7    # "exitTransition":Ljava/lang/Object;
    .restart local v16    # "exitTransition":Ljava/lang/Object;
    :cond_3
    move-object/from16 v7, v16

    .line 242
    .end local v16    # "exitTransition":Ljava/lang/Object;
    .restart local v7    # "exitTransition":Ljava/lang/Object;
    :cond_4
    move-object/from16 v6, v18

    .end local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v6, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, v7, v15, v6, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 245
    .local v5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v4, v19

    .end local v19    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v4, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, v8, v14, v4, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v3

    .line 248
    .local v3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x4

    invoke-static {v3, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 250
    move-object v1, v0

    move-object v2, v8

    move-object/from16 v16, v3

    .end local v3    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v16, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v3, v7

    move-object v10, v4

    .end local v4    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v10, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v4, v9

    move-object v11, v5

    .end local v5    # "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v11, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v5, v14

    .end local v6    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move/from16 v6, v21

    invoke-static/range {v1 .. v6}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->mergeTransitions(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    .line 253
    .local v6, "transition":Ljava/lang/Object;
    if-eqz v6, :cond_5

    .line 254
    invoke-static {v0, v7, v15, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->replaceHide(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;)V

    .line 255
    nop

    .line 256
    invoke-virtual {v0, v10}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v17

    .line 257
    .local v17, "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v0

    move-object v2, v6

    move-object v3, v8

    move-object/from16 v4, v16

    move-object v5, v7

    move-object v12, v6

    .end local v6    # "transition":Ljava/lang/Object;
    .local v12, "transition":Ljava/lang/Object;
    move-object v6, v11

    move-object/from16 v19, v7

    .end local v7    # "exitTransition":Ljava/lang/Object;
    .local v19, "exitTransition":Ljava/lang/Object;
    move-object v7, v9

    move-object/from16 v22, v8

    .end local v8    # "enterTransition":Ljava/lang/Object;
    .local v22, "enterTransition":Ljava/lang/Object;
    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 260
    invoke-virtual {v0, v13, v12}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 261
    move-object v2, v0

    move-object v3, v13

    move-object/from16 v4, v18

    move-object v5, v10

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 263
    const/4 v1, 0x0

    move-object/from16 v2, v16

    .end local v16    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v2, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 264
    move-object/from16 v1, v18

    .end local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, v9, v1, v10}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 253
    .end local v1    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v12    # "transition":Ljava/lang/Object;
    .end local v17    # "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "exitTransition":Ljava/lang/Object;
    .end local v22    # "enterTransition":Ljava/lang/Object;
    .restart local v6    # "transition":Ljava/lang/Object;
    .restart local v7    # "exitTransition":Ljava/lang/Object;
    .restart local v8    # "enterTransition":Ljava/lang/Object;
    .restart local v16    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    move-object v12, v6

    move-object/from16 v19, v7

    move-object/from16 v22, v8

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    .line 267
    .end local v6    # "transition":Ljava/lang/Object;
    .end local v7    # "exitTransition":Ljava/lang/Object;
    .end local v8    # "enterTransition":Ljava/lang/Object;
    .end local v16    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v2    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v12    # "transition":Ljava/lang/Object;
    .restart local v19    # "exitTransition":Ljava/lang/Object;
    .restart local v22    # "enterTransition":Ljava/lang/Object;
    :goto_1
    return-void
.end method

.method private static ensureContainer(Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .locals 1
    .param p0, "containerTransition"    # Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    .line 1215
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    if-nez p0, :cond_0

    .line 1216
    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    move-object p0, v0

    .line 1217
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1219
    :cond_0
    return-object p0
.end method

.method private static findKeyForValue(Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 888
    .local p0, "map":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/oneplus/support/collection/ArrayMap;->size()I

    move-result v0

    .line 889
    .local v0, "numElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 890
    invoke-virtual {p0, v1}, Lcom/oneplus/support/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 891
    invoke-virtual {p0, v1}, Lcom/oneplus/support/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 889
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 894
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getEnterTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "impl"    # Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .param p1, "inFragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p2, "isPop"    # Z

    .line 505
    if-nez p1, :cond_0

    .line 506
    const/4 v0, 0x0

    return-object v0

    .line 508
    :cond_0
    if-eqz p2, :cond_1

    .line 509
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 508
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getExitTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "impl"    # Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .param p1, "outFragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p2, "isPop"    # Z

    .line 518
    if-nez p1, :cond_0

    .line 519
    const/4 v0, 0x0

    return-object v0

    .line 521
    :cond_0
    if-eqz p2, :cond_1

    .line 522
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    .line 521
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getInEpicenterView(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 3
    .param p1, "fragments"    # Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "enterTransition"    # Ljava/lang/Object;
    .param p3, "inIsPop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 909
    .local p0, "inSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    .line 910
    .local v0, "inTransaction":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object v1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 912
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 913
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 914
    iget-object v2, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 915
    :cond_0
    iget-object v2, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    nop

    .line 916
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/oneplus/support/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    return-object v2

    .line 918
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getSharedElementTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "impl"    # Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .param p1, "inFragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p2, "outFragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p3, "isPop"    # Z

    .line 491
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 494
    :cond_0
    if-eqz p3, :cond_1

    .line 495
    invoke-virtual {p2}, Lcom/oneplus/support/core/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 494
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 497
    .local v0, "transition":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 492
    .end local v0    # "transition":Ljava/lang/Object;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static mergeTransitions(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "impl"    # Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .param p1, "enterTransition"    # Ljava/lang/Object;
    .param p2, "exitTransition"    # Ljava/lang/Object;
    .param p3, "sharedElementTransition"    # Ljava/lang/Object;
    .param p4, "inFragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p5, "isPop"    # Z

    .line 1035
    const/4 v0, 0x1

    .line 1036
    .local v0, "overlap":Z
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    .line 1037
    if-eqz p5, :cond_0

    invoke-virtual {p4}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v1

    goto :goto_0

    .line 1038
    :cond_0
    invoke-virtual {p4}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v1

    :goto_0
    move v0, v1

    .line 1046
    :cond_1
    if-eqz v0, :cond_2

    .line 1048
    invoke-virtual {p0, p2, p1, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "transition":Ljava/lang/Object;
    goto :goto_1

    .line 1053
    .end local v1    # "transition":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1056
    .restart local v1    # "transition":Ljava/lang/Object;
    :goto_1
    return-object v1
.end method

.method private static replaceHide(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "impl"    # Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .param p1, "exitTransition"    # Ljava/lang/Object;
    .param p2, "exitingFragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 277
    .local p3, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p2, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 280
    nop

    .line 281
    invoke-virtual {p2}, Lcom/oneplus/support/core/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 280
    invoke-virtual {p0, p1, v0, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 282
    iget-object v0, p2, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 283
    .local v0, "container":Landroid/view/ViewGroup;
    new-instance v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$1;

    invoke-direct {v1, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    .line 290
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private static resolveSupportImpl()Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .locals 3

    .line 66
    :try_start_0
    const-string v0, "androidx.transition.FragmentTransitionSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    .local v0, "impl":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 69
    .end local v0    # "impl":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;>;"
    :catch_0
    move-exception v0

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method private static retainValues(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/collection/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 954
    .local p0, "nameOverrides":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "namedViews":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/oneplus/support/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 955
    invoke-virtual {p0, v0}, Lcom/oneplus/support/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 956
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/oneplus/support/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 957
    invoke-virtual {p0, v0}, Lcom/oneplus/support/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 954
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 960
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static scheduleTargetChange(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .param p0, "impl"    # Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "inFragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .param p5, "enterTransition"    # Ljava/lang/Object;
    .param p7, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 392
    .local p4, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p8, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v9, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;-><init>(Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p1

    invoke-static {p1, v9}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    .line 415
    return-void
.end method

.method private static setOutEpicenter(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/collection/ArrayMap;ZLcom/oneplus/support/core/fragment/app/BackStackRecord;)V
    .locals 2
    .param p0, "impl"    # Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .param p1, "sharedElementTransition"    # Ljava/lang/Object;
    .param p2, "exitTransition"    # Ljava/lang/Object;
    .param p4, "outIsPop"    # Z
    .param p5, "outTransaction"    # Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .line 933
    .local p3, "outSharedElements":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p5, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p5, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 934
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 935
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 936
    iget-object v1, p5, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 937
    :cond_0
    iget-object v1, p5, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    nop

    .line 938
    .local v0, "sourceName":Ljava/lang/String;
    invoke-virtual {p3, v0}, Lcom/oneplus/support/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 939
    .local v1, "outEpicenterView":Landroid/view/View;
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 941
    if-eqz p2, :cond_1

    .line 942
    invoke-virtual {p0, p2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 945
    .end local v0    # "sourceName":Ljava/lang/String;
    .end local v1    # "outEpicenterView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1019
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p0, :cond_0

    .line 1020
    return-void

    .line 1022
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1023
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1024
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1026
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static startTransitions(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 7
    .param p0, "fragmentManager"    # Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .line 105
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/support/core/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 106
    return-void

    .line 109
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 111
    .local v0, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_2

    .line 112
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    .line 113
    .local v2, "record":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 114
    .local v3, "isPop":Z
    if-eqz v3, :cond_1

    .line 115
    invoke-static {v2, v0, p5}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->calculatePopFragments(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 117
    :cond_1
    invoke-static {v2, v0, p5}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->calculateFragments(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    .line 111
    .end local v2    # "record":Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    .end local v3    # "isPop":Z
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, "nonExistentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 124
    .local v2, "numContainers":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 125
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 126
    .local v4, "containerId":I
    invoke-static {v4, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/oneplus/support/collection/ArrayMap;

    move-result-object v5

    .line 129
    .local v5, "nameOverrides":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 130
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    .line 132
    .local v6, "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    if-eqz p5, :cond_3

    .line 133
    invoke-static {p0, v4, v6, v1, v5}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureTransitionsReordered(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;ILcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;)V

    goto :goto_3

    .line 136
    :cond_3
    invoke-static {p0, v4, v6, v1, v5}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureTransitionsOrdered(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;ILcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;)V

    .line 124
    .end local v4    # "containerId":I
    .end local v5    # "nameOverrides":Lcom/oneplus/support/collection/ArrayMap;, "Lcom/oneplus/support/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "containerTransition":Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 141
    .end local v1    # "nonExistentView":Landroid/view/View;
    .end local v2    # "numContainers":I
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method static supportsTransition()Z
    .locals 1

    .line 1098
    sget-object v0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
