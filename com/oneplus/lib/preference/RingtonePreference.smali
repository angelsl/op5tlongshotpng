.class public Lcom/oneplus/lib/preference/RingtonePreference;
.super Lcom/oneplus/lib/preference/Preference;
.source "RingtonePreference.java"

# interfaces
.implements Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;


# static fields
.field private static final EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS:Ljava/lang/String; = "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

.field private static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40

.field private static final TAG:Ljava/lang/String; = "RingtonePreference"

.field private static getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;


# instance fields
.field private mRequestCode:I

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z

.field private mSubscriptionID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 193
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/lib/preference/RingtonePreference;->getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 84
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_ringtonePreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mSubscriptionID:I

    .line 68
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->RingtonePreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->RingtonePreference_android_ringtoneType:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRingtoneType:I

    .line 72
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->RingtonePreference_android_showDefault:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowDefault:Z

    .line 74
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->RingtonePreference_android_showSilent:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowSilent:Z

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method


# virtual methods
.method public getRingtoneType()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRingtoneType:I

    return v0
.end method

.method public getShowDefault()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowDefault:Z

    return v0
.end method

.method public getShowSilent()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowSilent:Z

    return v0
.end method

.method public getSubId()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mSubscriptionID:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 310
    iget v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRequestCode:I

    if-ne p1, v0, :cond_2

    .line 312
    if-eqz p3, :cond_1

    .line 313
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 315
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/RingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 320
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 323
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Lcom/oneplus/lib/preference/PreferenceManager;

    .line 302
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V

    .line 304
    invoke-virtual {p1, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->registerOnActivityResultListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;)V

    .line 305
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/PreferenceManager;->getNextRequestCode()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRequestCode:I

    .line 306
    return-void
.end method

.method protected onClick()V
    .locals 4

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 180
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.oneplus.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 183
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/preference/PreferenceManager;->getFragment()Lcom/oneplus/lib/preference/PreferenceFragment;

    move-result-object v1

    .line 184
    .local v1, "owningFragment":Lcom/oneplus/lib/preference/PreferenceFragment;
    if-eqz v1, :cond_1

    .line 185
    iget v2, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/lib/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/preference/PreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRequestCode:I

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 189
    :goto_1
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 276
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .line 204
    nop

    .line 205
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v0

    .line 204
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 207
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowDefault:Z

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getRingtoneType()I

    move-result v0

    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 211
    :try_start_0
    sget-object v0, Lcom/oneplus/lib/preference/RingtonePreference;->getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Landroid/media/RingtoneManager;

    move-object v0, v4

    .line 214
    const-string v4, "getDefaultRingtoneUriBySubId"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/oneplus/lib/preference/RingtonePreference;->getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;

    .line 216
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    sget-object v0, Lcom/oneplus/lib/preference/RingtonePreference;->getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 217
    sget-object v0, Lcom/oneplus/lib/preference/RingtonePreference;->getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 218
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getSubId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 217
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 226
    :catch_1
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 223
    :catch_2
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 220
    :catch_3
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 232
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    :goto_0
    goto :goto_1

    .line 234
    :cond_2
    nop

    .line 235
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getRingtoneType()I

    move-result v0

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 234
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 239
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowSilent:Z

    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    iget v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRingtoneType:I

    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 242
    const/16 v0, 0x40

    const-string v1, "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/RingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "uriString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 257
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/RingtonePreference;->persistString(Ljava/lang/String;)Z

    .line 258
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValueObj"    # Ljava/lang/Object;

    .line 281
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 290
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 291
    return-void

    .line 295
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 298
    :cond_1
    return-void
.end method

.method public setRingtoneType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 108
    iput p1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRingtoneType:I

    .line 109
    return-void
.end method

.method public setShowDefault(Z)V
    .locals 0
    .param p1, "showDefault"    # Z

    .line 150
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowDefault:Z

    .line 151
    return-void
.end method

.method public setShowSilent(Z)V
    .locals 0
    .param p1, "showSilent"    # Z

    .line 169
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowSilent:Z

    .line 170
    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .line 130
    iput p1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mSubscriptionID:I

    .line 131
    return-void
.end method
