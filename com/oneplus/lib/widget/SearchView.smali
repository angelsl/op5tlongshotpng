.class public Lcom/oneplus/lib/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;,
        Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;,
        Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;,
        Lcom/oneplus/lib/widget/SearchView$SavedState;,
        Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;,
        Lcom/oneplus/lib/widget/SearchView$OnCloseListener;,
        Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final HIDDEN_METHOD_INVOKER:Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Lcom/oneplus/lib/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

.field mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mPaddingLeftInActionBar:I

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mSearchPlate:Landroid/view/View;

.field final mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

.field private mSearchSrcTextViewBounds:Landroid/graphics/Rect;

.field private mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

.field mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field private mTemp:[I

.field private mTemp2:[I

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTouchDelegate:Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    new-instance v0, Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/SearchView;->HIDDEN_METHOD_INVOKER:Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 256
    sget v0, Lcom/oneplus/commonctrl/R$attr;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 260
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    .line 103
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mTemp:[I

    .line 104
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mTemp2:[I

    .line 151
    new-instance v0, Lcom/oneplus/lib/widget/SearchView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$1;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 163
    new-instance v0, Lcom/oneplus/lib/widget/SearchView$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$2;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 170
    new-instance v0, Lcom/oneplus/lib/widget/SearchView$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$3;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 181
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 1000
    new-instance v0, Lcom/oneplus/lib/widget/SearchView$7;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$7;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1022
    new-instance v0, Lcom/oneplus/lib/widget/SearchView$8;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$8;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1185
    new-instance v0, Lcom/oneplus/lib/widget/SearchView$9;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$9;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1430
    new-instance v0, Lcom/oneplus/lib/widget/SearchView$10;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$10;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1442
    new-instance v0, Lcom/oneplus/lib/widget/SearchView$11;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$11;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1732
    new-instance v0, Lcom/oneplus/lib/widget/SearchView$12;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/SearchView$12;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 262
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->SearchView:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object v0

    .line 265
    .local v0, "a":Lcom/oneplus/lib/app/appcompat/TintTypedArray;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 266
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_layout:I

    sget v4, Lcom/oneplus/commonctrl/R$layout;->op_search_view:I

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 268
    .local v3, "layoutResId":I
    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 270
    sget v5, Lcom/oneplus/commonctrl/R$id;->search_src_text:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iput-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    .line 271
    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5, p0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setSearchView(Lcom/oneplus/lib/widget/SearchView;)V

    .line 273
    sget v5, Lcom/oneplus/commonctrl/R$id;->search_edit_frame:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    .line 274
    sget v5, Lcom/oneplus/commonctrl/R$id;->search_plate:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 275
    sget v5, Lcom/oneplus/commonctrl/R$id;->submit_area:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mSubmitArea:Landroid/view/View;

    .line 276
    sget v5, Lcom/oneplus/commonctrl/R$id;->search_button:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 277
    sget v5, Lcom/oneplus/commonctrl/R$id;->search_go_btn:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 278
    sget v5, Lcom/oneplus/commonctrl/R$id;->search_close_btn:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 279
    sget v5, Lcom/oneplus/commonctrl/R$id;->search_voice_btn:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 280
    sget v5, Lcom/oneplus/commonctrl/R$id;->search_mag_icon:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    .line 283
    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchPlate:Landroid/view/View;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_queryBackground:I

    .line 284
    invoke-virtual {v0, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 283
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mSubmitArea:Landroid/view/View;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_submitBackground:I

    .line 286
    invoke-virtual {v0, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 285
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_searchIcon:I

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_goIcon:I

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_closeIcon:I

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_voiceIcon:I

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_searchIcon:I

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_searchHintIcon:I

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    .line 296
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_suggestionRowLayout:I

    sget v6, Lcom/oneplus/commonctrl/R$layout;->op_search_dropdown_item_icons_2line:I

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionRowLayout:I

    .line 298
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_commitIcon:I

    invoke-virtual {v0, v5, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionCommitIconResId:I

    .line 300
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 307
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 308
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 309
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 310
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 313
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    new-instance v5, Lcom/oneplus/lib/widget/SearchView$4;

    invoke-direct {v5, p0}, Lcom/oneplus/lib/widget/SearchView$4;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 321
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_iconifiedByDefault:I

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 323
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_maxWidth:I

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 324
    .local v1, "maxWidth":I
    if-eq v1, v4, :cond_0

    .line 325
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/SearchView;->setMaxWidth(I)V

    .line 328
    :cond_0
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->SearchView_defaultQueryHint:I

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .line 329
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_queryHint:I

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 331
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_imeOptions:I

    invoke-virtual {v0, v5, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getInt(II)I

    move-result v5

    .line 332
    .local v5, "imeOptions":I
    if-eq v5, v4, :cond_1

    .line 333
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/SearchView;->setImeOptions(I)V

    .line 336
    :cond_1
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_inputType:I

    invoke-virtual {v0, v6, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getInt(II)I

    move-result v6

    .line 337
    .local v6, "inputType":I
    if-eq v6, v4, :cond_2

    .line 338
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/SearchView;->setInputType(I)V

    .line 341
    :cond_2
    const/4 v4, 0x1

    .line 342
    .local v4, "focusable":Z
    sget v7, Lcom/oneplus/commonctrl/R$styleable;->SearchView_android_focusable:I

    invoke-virtual {v0, v7, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 343
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/SearchView;->setFocusable(Z)V

    .line 345
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    .line 348
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 349
    iget-object v7, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 350
    iget-object v7, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v9, "android.speech.extra.LANGUAGE_MODEL"

    const-string v10, "web_search"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 354
    iget-object v7, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 356
    iget-object v7, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/lib/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    .line 357
    iget-object v7, p0, Lcom/oneplus/lib/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 358
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_3

    .line 359
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorSDK11()V

    goto :goto_0

    .line 361
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorBase()V

    .line 365
    :cond_4
    :goto_0
    iget-boolean v7, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, v7}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    .line 366
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateQueryHint()V

    .line 367
    return-void
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorBase()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$6;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/SearchView$6;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    .line 391
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 397
    return-void
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorSDK11()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v1, Lcom/oneplus/lib/widget/SearchView$5;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/SearchView$5;-><init>(Lcom/oneplus/lib/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 387
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    .line 1560
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1561
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1565
    if-eqz p2, :cond_0

    .line 1566
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1568
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    const-string v2, "user_query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1569
    if-eqz p4, :cond_1

    .line 1570
    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1572
    :cond_1
    if-eqz p3, :cond_2

    .line 1573
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1575
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1576
    const-string v2, "app_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1578
    :cond_3
    if-eqz p5, :cond_4

    .line 1579
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1580
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1582
    :cond_4
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1583
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 10
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .line 1679
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "suggest_intent_action"

    invoke-static {p1, v1}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1681
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1682
    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1684
    :cond_0
    if-nez v1, :cond_1

    .line 1685
    const-string v2, "android.intent.action.SEARCH"

    move-object v1, v2

    .line 1689
    :cond_1
    const-string v2, "suggest_intent_data"

    invoke-static {p1, v2}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1690
    .local v2, "data":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1691
    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1694
    :cond_2
    if-eqz v2, :cond_3

    .line 1695
    const-string v3, "suggest_intent_data_id"

    invoke-static {p1, v3}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1696
    .local v3, "id":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1697
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v9, v2

    goto :goto_0

    .line 1700
    .end local v3    # "id":Ljava/lang/String;
    :cond_3
    move-object v9, v2

    .end local v2    # "data":Ljava/lang/String;
    .local v9, "data":Ljava/lang/String;
    :goto_0
    if-nez v9, :cond_4

    move-object v4, v0

    goto :goto_1

    :cond_4
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v2

    .line 1702
    .local v4, "dataUri":Landroid/net/Uri;
    :goto_1
    const-string v2, "suggest_intent_query"

    invoke-static {p1, v2}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1703
    .local v6, "query":Ljava/lang/String;
    const-string v2, "suggest_intent_extra_data"

    invoke-static {p1, v2}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1705
    .local v5, "extraData":Ljava/lang/String;
    move-object v2, p0

    move-object v3, v1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/lib/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1706
    .end local v1    # "action":Ljava/lang/String;
    .end local v4    # "dataUri":Landroid/net/Uri;
    .end local v5    # "extraData":Ljava/lang/String;
    .end local v6    # "query":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1709
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1712
    .local v2, "rowNum":I
    goto :goto_2

    .line 1710
    .end local v2    # "rowNum":I
    :catch_1
    move-exception v2

    .line 1711
    .local v2, "e2":Ljava/lang/RuntimeException;
    const/4 v2, -0x1

    .line 1713
    .local v2, "rowNum":I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search suggestions cursor at row "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " returned exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SearchView"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1715
    return-object v0
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 12
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .line 1605
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1610
    .local v0, "searchActivity":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1611
    .local v1, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1612
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1619
    .local v2, "pending":Landroid/app/PendingIntent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1620
    .local v3, "queryExtras":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/oneplus/lib/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 1621
    const-string v5, "app_data"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1627
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1630
    .local v4, "voiceIntent":Landroid/content/Intent;
    const-string v5, "free_form"

    .line 1631
    .local v5, "languageModel":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1632
    .local v6, "prompt":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1633
    .local v7, "language":Ljava/lang/String;
    const/4 v8, 0x1

    .line 1635
    .local v8, "maxResults":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1636
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_1

    .line 1637
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1639
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_2

    .line 1640
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1642
    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_3

    .line 1643
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1645
    :cond_3
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_4

    .line 1646
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v8

    .line 1649
    :cond_4
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1650
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v4, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1651
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1652
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1653
    if-nez v0, :cond_5

    const/4 v10, 0x0

    goto :goto_0

    .line 1654
    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    .line 1653
    :goto_0
    const-string v11, "calling_package"

    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1657
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1658
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v4, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1660
    return-object v4
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .line 1590
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1591
    .local v0, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 1592
    .local v1, "searchActivity":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 1593
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 1592
    :goto_0
    const-string v3, "calling_package"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1594
    return-object v0
.end method

.method private dismissSuggestions()V
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1227
    return-void
.end method

.method private getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 865
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mTemp:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 866
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mTemp2:[I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->getLocationInWindow([I)V

    .line 867
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mTemp:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mTemp2:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    .line 868
    .local v2, "top":I
    const/4 v1, 0x0

    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    .line 869
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p2, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 870
    return-void
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 1112
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1117
    .local v0, "textSize":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1119
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, "   "

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1120
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1121
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1122
    return-object v1

    .line 1113
    .end local v0    # "textSize":I
    .end local v1    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_1
    :goto_0
    return-object p1
.end method

.method private getPaddingLeftInActionBar(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->toolbar_icon_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 371
    .local v0, "backIconWidth":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_left2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 372
    .local v1, "marginLeft2":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_left4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 373
    .local v2, "marginLeft4":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_icon_size_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 375
    .local v3, "iconSizeInner":I
    sub-int v4, v2, v0

    sub-int v5, v0, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    sub-int/2addr v4, v5

    return v4
.end method

.method private getPreferredHeight()I
    .locals 2

    .line 878
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->search_view_preferred_height:I

    .line 879
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 878
    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .line 873
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->search_view_preferred_width:I

    .line 874
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 873
    return v0
.end method

.method private hasVoiceSearch()Z
    .locals 4

    .line 907
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 908
    const/4 v0, 0x0

    .line 909
    .local v0, "testIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 910
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    goto :goto_0

    .line 911
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 912
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 914
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 915
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 917
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 920
    .end local v0    # "testIntent":Landroid/content/Intent;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    return v1
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1725
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .line 924
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1517
    if-nez p1, :cond_0

    .line 1518
    return-void

    .line 1523
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1526
    goto :goto_0

    .line 1524
    :catch_0
    move-exception v0

    .line 1525
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchView"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1527
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .line 1500
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1501
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1503
    invoke-direct {p0, v0, p2, p3}, Lcom/oneplus/lib/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1506
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1508
    const/4 v2, 0x1

    return v2

    .line 1510
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 956
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 3
    .param p1, "position"    # I

    .line 1467
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1468
    .local v0, "oldQuery":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1469
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 1470
    return-void

    .line 1472
    :cond_0
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1474
    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1475
    .local v2, "newQuery":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 1478
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1481
    :cond_1
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1483
    .end local v2    # "newQuery":Ljava/lang/CharSequence;
    :goto_0
    goto :goto_1

    .line 1485
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1487
    :goto_1
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    .line 1533
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1535
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1536
    return-void
.end method

.method private updateCloseButton()V
    .locals 3

    .line 947
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 950
    .local v0, "hasText":Z
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/SearchView;->mExpandedInActionView:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 951
    .local v1, "enable":Z
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 952
    return-void
.end method

.method private updateQueryHint()V
    .locals 3

    .line 1126
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1127
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1128
    return-void
.end method

.method private updateSearchAutoComplete()V
    .locals 6

    .line 1134
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1135
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1136
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1139
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1142
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1143
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1144
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 1151
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1154
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1155
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_1

    .line 1156
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1160
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1161
    new-instance v1, Lcom/oneplus/lib/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Lcom/oneplus/lib/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Lcom/oneplus/lib/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 1163
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1164
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v1, Lcom/oneplus/lib/widget/SuggestionsAdapter;

    .line 1165
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/SearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 1166
    :cond_2
    nop

    .line 1164
    :goto_0
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 1168
    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .line 937
    const/16 v0, 0x8

    .line 938
    .local v0, "visibility":I
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 939
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 940
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 941
    :cond_0
    const/4 v0, 0x0

    .line 943
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 944
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .param p1, "hasText"    # Z

    .line 928
    const/16 v0, 0x8

    .line 929
    .local v0, "visibility":I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_1

    .line 931
    :cond_0
    const/4 v0, 0x0

    .line 933
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 934
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 6
    .param p1, "collapsed"    # Z

    .line 883
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/SearchView;->mIconified:Z

    .line 885
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 887
    .local v2, "visCollapsed":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 889
    .local v3, "hasText":Z
    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 890
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/SearchView;->updateSubmitButton(Z)V

    .line 891
    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v0, :cond_2

    goto :goto_2

    .line 897
    :cond_2
    const/4 v0, 0x0

    .local v0, "iconVisibility":I
    goto :goto_3

    .line 895
    .end local v0    # "iconVisibility":I
    :cond_3
    :goto_2
    const/16 v0, 0x8

    .line 899
    .restart local v0    # "iconVisibility":I
    :goto_3
    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 901
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateCloseButton()V

    .line 902
    if-nez v3, :cond_4

    move v1, v4

    :cond_4
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/SearchView;->updateVoiceButton(Z)V

    .line 903
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateSubmitArea()V

    .line 904
    return-void
.end method

.method private updateVoiceButton(Z)V
    .locals 3
    .param p1, "empty"    # Z

    .line 1177
    const/16 v0, 0x8

    .line 1178
    .local v0, "visibility":I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1179
    const/4 v0, 0x0

    .line 1180
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1182
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1183
    return-void
.end method


# virtual methods
.method adjustDropDownSizeAndPosition()V
    .locals 8

    .line 1387
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1388
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1389
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1390
    .local v1, "anchorPadding":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1391
    .local v2, "dropDownPadding":Landroid/graphics/Rect;
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    .line 1392
    .local v3, "isLayoutRtl":Z
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_0

    .line 1394
    sget v4, Lcom/oneplus/commonctrl/R$dimen;->dropdownitem_icon_width:I

    .line 1393
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcom/oneplus/commonctrl/R$dimen;->dropdownitem_text_padding_left:I

    .line 1394
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 1395
    :cond_0
    const/4 v4, 0x0

    :goto_0
    nop

    .line 1396
    .local v4, "iconOffset":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1398
    if-eqz v3, :cond_1

    .line 1399
    iget v5, v2, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    .local v5, "offset":I
    goto :goto_1

    .line 1401
    .end local v5    # "offset":I
    :cond_1
    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    sub-int v5, v1, v5

    .line 1403
    .restart local v5    # "offset":I
    :goto_1
    iget-object v6, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1404
    iget-object v6, p0, Lcom/oneplus/lib/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    sub-int/2addr v6, v1

    .line 1406
    .local v6, "width":I
    iget-object v7, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v6}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1408
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "anchorPadding":I
    .end local v2    # "dropDownPadding":Landroid/graphics/Rect;
    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "iconOffset":I
    .end local v5    # "offset":I
    .end local v6    # "width":I
    :cond_2
    return-void
.end method

.method public clearFocus()V
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mClearingFocus:Z

    .line 512
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->setImeVisibility(Z)V

    .line 513
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 514
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 515
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mClearingFocus:Z

    .line 516
    return-void
.end method

.method forceSuggestionQuery()V
    .locals 2

    .line 1720
    sget-object v0, Lcom/oneplus/lib/widget/SearchView;->HIDDEN_METHOD_INVOKER:Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1721
    sget-object v0, Lcom/oneplus/lib/widget/SearchView;->HIDDEN_METHOD_INVOKER:Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1722
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 791
    iget v0, p0, Lcom/oneplus/lib/widget/SearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .local v0, "hint":Ljava/lang/CharSequence;
    goto :goto_0

    .line 635
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "hint":Ljava/lang/CharSequence;
    goto :goto_0

    .line 638
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .line 640
    .restart local v0    # "hint":Ljava/lang/CharSequence;
    :goto_0
    return-object v0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    .line 404
    iget v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionCommitIconResId:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionRowLayout:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .line 669
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .line 697
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .line 749
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .line 719
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .line 1539
    const-string v7, "android.intent.action.SEARCH"

    .line 1540
    .local v7, "action":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1541
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1542
    return-void
.end method

.method public onActionViewCollapsed()V
    .locals 3

    .line 1303
    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1304
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->clearFocus()V

    .line 1305
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1306
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Lcom/oneplus/lib/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1307
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mExpandedInActionView:Z

    .line 1308
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 4

    .line 1315
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    return-void

    .line 1316
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 1317
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->getPaddingLeftInActionBar(Landroid/content/Context;)I

    move-result v0

    .line 1318
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/lib/widget/SearchView;->setPadding(IIII)V

    .line 1320
    .end local v0    # "paddingLeft":I
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mExpandedInActionView:Z

    .line 1321
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/SearchView;->mCollapsedImeOptions:I

    .line 1322
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Lcom/oneplus/lib/widget/SearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1323
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->setIconified(Z)V

    .line 1325
    return-void
.end method

.method onCloseClicked()V
    .locals 4

    .line 1230
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1231
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1232
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_2

    .line 1234
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnCloseListener:Lcom/oneplus/lib/widget/SearchView$OnCloseListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/oneplus/lib/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1236
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->clearFocus()V

    .line 1238
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 1242
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1243
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1244
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/SearchView;->setImeVisibility(Z)V

    .line 1247
    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 974
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 975
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 976
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 977
    return-void
.end method

.method onItemClicked(IILjava/lang/String;)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .line 1411
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mOnSuggestionListener:Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1412
    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1418
    :cond_0
    return v1

    .line 1413
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/lib/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1414
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/SearchView;->setImeVisibility(Z)V

    .line 1415
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->dismissSuggestions()V

    .line 1416
    const/4 v0, 0x1

    return v0
.end method

.method onItemSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 1422
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mOnSuggestionListener:Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_1

    .line 1423
    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1427
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1424
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    .line 1425
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 846
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 848
    if-eqz p1, :cond_1

    .line 851
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/SearchView;->getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 852
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, p5, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 854
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mTouchDelegate:Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;

    if-nez v0, :cond_0

    .line 855
    new-instance v0, Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mTouchDelegate:Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;

    .line 857
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mTouchDelegate:Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    .line 859
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 862
    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 797
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 799
    return-void

    .line 802
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 803
    .local v0, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 805
    .local v1, "width":I
    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_2

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 816
    :cond_1
    iget v3, p0, Lcom/oneplus/lib/widget/SearchView;->mMaxWidth:I

    if-lez v3, :cond_6

    .line 817
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 822
    :cond_2
    iget v3, p0, Lcom/oneplus/lib/widget/SearchView;->mMaxWidth:I

    if-lez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->getPreferredWidth()I

    move-result v3

    :goto_0
    move v1, v3

    goto :goto_1

    .line 808
    :cond_4
    iget v3, p0, Lcom/oneplus/lib/widget/SearchView;->mMaxWidth:I

    if-lez v3, :cond_5

    .line 809
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 811
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->getPreferredWidth()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 813
    nop

    .line 825
    :cond_6
    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 827
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 828
    .local v3, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 830
    .local v4, "height":I
    if-eq v3, v2, :cond_8

    if-eqz v3, :cond_7

    goto :goto_2

    .line 835
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->getPreferredHeight()I

    move-result v4

    goto :goto_2

    .line 832
    :cond_8
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->getPreferredHeight()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 833
    nop

    .line 838
    :goto_2
    const/high16 v2, 0x40000000    # 2.0f

    .line 840
    .end local v3    # "heightMode":I
    .local v2, "heightMode":I
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 841
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 840
    invoke-super {p0, v3, v5}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 842
    return-void
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "queryText"    # Ljava/lang/CharSequence;

    .line 997
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 998
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1376
    instance-of v0, p1, Lcom/oneplus/lib/widget/SearchView$SavedState;

    if-nez v0, :cond_0

    .line 1377
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1378
    return-void

    .line 1380
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/SearchView$SavedState;

    .line 1381
    .local v0, "ss":Lcom/oneplus/lib/widget/SearchView$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1382
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/SearchView$SavedState;->isIconified:Z

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1383
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->requestLayout()V

    .line 1384
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1368
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1369
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/oneplus/lib/widget/SearchView$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1370
    .local v1, "ss":Lcom/oneplus/lib/widget/SearchView$SavedState;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result v2

    iput-boolean v2, v1, Lcom/oneplus/lib/widget/SearchView$SavedState;->isIconified:Z

    .line 1371
    return-object v1
.end method

.method onSearchClicked()V
    .locals 1

    .line 1250
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1251
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1252
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->setImeVisibility(Z)V

    .line 1253
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1254
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1256
    :cond_0
    return-void
.end method

.method onSubmitQuery()V
    .locals 4

    .line 1212
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1213
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1214
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnQueryChangeListener:Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    .line 1215
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1216
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1217
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/oneplus/lib/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1219
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/SearchView;->setImeVisibility(Z)V

    .line 1220
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->dismissSuggestions()V

    .line 1223
    :cond_2
    return-void
.end method

.method onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1067
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1068
    return v1

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-nez v0, :cond_1

    .line 1071
    return v1

    .line 1073
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1076
    const/16 v0, 0x42

    if-eq p2, v0, :cond_6

    const/16 v0, 0x54

    if-eq p2, v0, :cond_6

    const/16 v0, 0x3d

    if-ne p2, v0, :cond_2

    goto :goto_2

    .line 1084
    :cond_2
    const/16 v0, 0x15

    if-eq p2, v0, :cond_4

    const/16 v2, 0x16

    if-ne p2, v2, :cond_3

    goto :goto_0

    .line 1100
    :cond_3
    const/16 v0, 0x13

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    if-nez v0, :cond_7

    .line 1103
    return v1

    .line 1089
    :cond_4
    :goto_0
    if-ne p2, v0, :cond_5

    move v0, v1

    goto :goto_1

    .line 1090
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->length()I

    move-result v0

    :goto_1
    nop

    .line 1091
    .local v0, "selPoint":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1092
    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1093
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1094
    sget-object v1, Lcom/oneplus/lib/widget/SearchView;->HIDDEN_METHOD_INVOKER:Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    .line 1096
    return v3

    .line 1078
    .end local v0    # "selPoint":I
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    .line 1079
    .local v0, "position":I
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/lib/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v1

    return v1

    .line 1106
    .end local v0    # "position":I
    :cond_7
    return v1
.end method

.method onTextChanged(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .line 1198
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1199
    .local v0, "text":Ljava/lang/CharSequence;
    iput-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 1201
    .local v1, "hasText":Z
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/SearchView;->updateSubmitButton(Z)V

    .line 1202
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/SearchView;->updateVoiceButton(Z)V

    .line 1203
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateCloseButton()V

    .line 1204
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateSubmitArea()V

    .line 1205
    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mOnQueryChangeListener:Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1206
    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mOnQueryChangeListener:Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1208
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1209
    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    .line 1282
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1285
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->postUpdateFocusedState()V

    .line 1286
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->forceSuggestionQuery()V

    .line 1289
    :cond_0
    return-void
.end method

.method onVoiceClicked()V
    .locals 4

    .line 1260
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    .line 1261
    return-void

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 1265
    .local v0, "searchable":Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1266
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/lib/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 1268
    .local v1, "webSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v1    # "webSearchIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1269
    :cond_1
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1270
    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/lib/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 1272
    .local v1, "appSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1269
    .end local v1    # "appSearchIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    nop

    .line 1278
    :goto_1
    goto :goto_2

    .line 1274
    :catch_0
    move-exception v1

    .line 1277
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SearchView"

    const-string v3, "Could not find voice search activity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .line 1293
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 1295
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->postUpdateFocusedState()V

    .line 1296
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 492
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mClearingFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_3

    .line 497
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 498
    .local v0, "result":Z
    if-eqz v0, :cond_2

    .line 499
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    .line 501
    :cond_2
    return v0

    .line 503
    .end local v0    # "result":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "appSearchData"    # Landroid/os/Bundle;
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 439
    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 440
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .param p1, "iconify"    # Z

    .line 683
    if-eqz p1, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->onCloseClicked()V

    goto :goto_0

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->onSearchClicked()V

    .line 688
    :goto_0
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .param p1, "iconified"    # Z

    .line 656
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 657
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/SearchView;->mIconifiedByDefault:Z

    .line 658
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    .line 659
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateQueryHint()V

    .line 660
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .line 451
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 452
    return-void
.end method

.method setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 980
    if-eqz p1, :cond_0

    .line 981
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 984
    nop

    .line 985
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 987
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 988
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 991
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_0
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .line 474
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 475
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .line 778
    iput p1, p0, Lcom/oneplus/lib/widget/SearchView;->mMaxWidth:I

    .line 780
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->requestLayout()V

    .line 781
    return-void
.end method

.method public setOnCloseListener(Lcom/oneplus/lib/widget/SearchView$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/SearchView$OnCloseListener;

    .line 534
    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnCloseListener:Lcom/oneplus/lib/widget/SearchView$OnCloseListener;

    .line 535
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .line 543
    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 544
    return-void
.end method

.method public setOnQueryTextListener(Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

    .line 525
    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnQueryChangeListener:Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;

    .line 526
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 564
    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 565
    return-void
.end method

.method public setOnSuggestionListener(Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;

    .line 552
    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mOnSuggestionListener:Lcom/oneplus/lib/widget/SearchView$OnSuggestionListener;

    .line 553
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .line 585
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 586
    if-eqz p1, :cond_0

    .line 587
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 588
    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 592
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 593
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->onSubmitQuery()V

    .line 595
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 608
    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 609
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateQueryHint()V

    .line 610
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 737
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/SearchView;->mQueryRefinement:Z

    .line 738
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    instance-of v1, v0, Lcom/oneplus/lib/widget/SuggestionsAdapter;

    if-eqz v1, :cond_1

    .line 739
    check-cast v0, Lcom/oneplus/lib/widget/SuggestionsAdapter;

    .line 740
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 739
    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 742
    :cond_1
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2
    .param p1, "searchable"    # Landroid/app/SearchableInfo;

    .line 416
    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 417
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateSearchAutoComplete()V

    .line 419
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->updateQueryHint()V

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 424
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 429
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    .line 430
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 709
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 710
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SearchView;->updateViewsVisibility(Z)V

    .line 711
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/CursorAdapter;

    .line 759
    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 761
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 762
    return-void
.end method

.method updateFocusedState()V
    .locals 4

    .line 959
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 960
    .local v0, "focused":Z
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/lib/widget/SearchView;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/oneplus/lib/widget/SearchView;->EMPTY_STATE_SET:[I

    .line 961
    .local v1, "stateSet":[I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 962
    .local v2, "searchPlateBg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 963
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 965
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 966
    .local v3, "submitAreaBg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 967
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 969
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->invalidate()V

    .line 970
    return-void
.end method
