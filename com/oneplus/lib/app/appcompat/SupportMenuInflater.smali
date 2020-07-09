.class public Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;,
        Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "SupportMenuInflater"

.field static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field final mActionViewConstructorArguments:[Ljava/lang/Object;

.field mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 80
    sget-object v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 97
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 100
    return-void
.end method

.method private findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "owner"    # Ljava/lang/Object;

    .line 226
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 227
    return-object p1

    .line 229
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 230
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 232
    :cond_1
    return-object p1
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    new-instance v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;

    invoke-direct {v0, p0, p3}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;-><init>(Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;Landroid/view/Menu;)V

    .line 142
    .local v0, "menuState":Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 144
    .local v1, "eventType":I
    const/4 v2, 0x0

    .line 145
    .local v2, "lookingForEndOfUnknownTag":Z
    const/4 v3, 0x0

    .line 149
    .local v3, "unknownTagName":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x2

    const-string v6, "menu"

    if-ne v1, v5, :cond_2

    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "tagName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 153
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 154
    goto :goto_0

    .line 157
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expecting menu, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 159
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 160
    if-ne v1, v4, :cond_0

    .line 162
    :goto_0
    const/4 v7, 0x0

    .line 163
    .local v7, "reachedEndOfMenu":Z
    :goto_1
    if-nez v7, :cond_f

    .line 164
    if-eq v1, v4, :cond_e

    const-string v8, "item"

    const-string v9, "group"

    if-eq v1, v5, :cond_8

    const/4 v10, 0x3

    if-eq v1, v10, :cond_3

    goto/16 :goto_2

    .line 188
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 189
    .local v10, "tagName":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 190
    const/4 v2, 0x0

    .line 191
    const/4 v3, 0x0

    goto :goto_2

    .line 192
    :cond_4
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 193
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->resetGroup()V

    goto :goto_2

    .line 194
    :cond_5
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 197
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->hasAddedItem()Z

    move-result v8

    if-nez v8, :cond_d

    .line 198
    iget-object v8, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProvider:Lcom/oneplus/support/core/view/ActionProvider;

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProvider:Lcom/oneplus/support/core/view/ActionProvider;

    .line 199
    invoke-virtual {v8}, Lcom/oneplus/support/core/view/ActionProvider;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 200
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    goto :goto_2

    .line 202
    :cond_6
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->addItem()V

    goto :goto_2

    .line 205
    :cond_7
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 206
    const/4 v7, 0x1

    goto :goto_2

    .line 166
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_8
    if-eqz v2, :cond_9

    .line 167
    goto :goto_2

    .line 170
    :cond_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 171
    .restart local v10    # "tagName":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 172
    invoke-virtual {v0, p2}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 173
    :cond_a
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 174
    invoke-virtual {v0, p2}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 175
    :cond_b
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 177
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v8

    .line 180
    .local v8, "subMenu":Landroid/view/SubMenu;
    invoke-direct {p0, p1, p2, v8}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 181
    .end local v8    # "subMenu":Landroid/view/SubMenu;
    goto :goto_2

    .line 182
    :cond_c
    const/4 v2, 0x1

    .line 183
    move-object v3, v10

    .line 185
    nop

    .line 214
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_d
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto/16 :goto_1

    .line 211
    :cond_e
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unexpected end of document"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    :cond_f
    return-void
.end method


# virtual methods
.method getRealOwner()Ljava/lang/Object;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .locals 4
    .param p1, "menuRes"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 114
    const-string v0, "Error inflating menu XML"

    instance-of v1, p2, Lcom/oneplus/lib/menu/SupportMenu;

    if-nez v1, :cond_0

    .line 115
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 116
    return-void

    .line 119
    :cond_0
    const/4 v1, 0x0

    .line 121
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 122
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 124
    .local v2, "attrs":Landroid/util/AttributeSet;
    invoke-direct {p0, v1, v2, p2}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 132
    :cond_1
    return-void

    .line 130
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/view/InflateException;

    invoke-direct {v3, v0, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;
    .end local p1    # "menuRes":I
    .end local p2    # "menu":Landroid/view/Menu;
    throw v3

    .line 125
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;
    .restart local p1    # "menuRes":I
    .restart local p2    # "menu":Landroid/view/Menu;
    :catch_1
    move-exception v2

    .line 126
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Landroid/view/InflateException;

    invoke-direct {v3, v0, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;
    .end local p1    # "menuRes":I
    .end local p2    # "menu":Landroid/view/Menu;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;
    .restart local p1    # "menuRes":I
    .restart local p2    # "menu":Landroid/view/Menu;
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v0
.end method
