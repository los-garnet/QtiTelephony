.class Landroidx/appcompat/widget/MenuPopupWindow$Api23Impl;
.super Ljava/lang/Object;
.source "MenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method static setEnterTransition(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V
    .locals 0

    .line 253
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method static setExitTransition(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V
    .locals 0

    .line 258
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    return-void
.end method