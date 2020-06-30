*** Settings ***

Library     AppiumLibrary

*** Variables ***

${price shown}      89,999

*** Test Cases ***

launch Amazon app application
    launch application

Login Application by user details
    login application

Search 65 Inches TV
    Search TV

Select a Random TV from the list
    Select Random TV from the list

Check the cost and add to cart
    check the cost and add to cart

Final checkout and proceed to payment
    Final checkout and proceed to payment

Assertion check of price in product search screen vs checkout screen
    Assertion check of price in product search screen vs checkout screen

*** Keywords ***

launch application

    open application        http://127.0.0.1:4723/wd/hub        app=/Users/kaivalyajain/Downloads/Amazon_shopping.apk       platformName=Android     platformVersion=10.0       deviceName=Redmi Note 8 Pro     udid=ofuwmbbemjfmfeon
    sleep   2
    wait until page contains        amazon

Login application

    click element   id=sign_in_button
    sleep  2
    input text      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View[2]/android.view.View/android.view.View/android.view.View[3]/android.widget.EditText        8147407660
    sleep  2
    click text      Continue
    sleep  2
    input text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[5]/android.view.View[2]/android.widget.EditText      adarshgk
    sleep  2
    click element       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[5]/android.view.View[6]/android.widget.Button
    sleep  10


Search TV

    click text    English - EN
    sleep  3
    click text      Save Changes
    sleep  3
    click element       id=com.amazon.mShop.android.shopping:id/rs_search_src_text
    sleep  3
    input text       id=com.amazon.mShop.android.shopping:id/rs_search_src_text    65 Inches TV
    sleep  3
    click element       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.ViewAnimator/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[1]/android.widget.LinearLayout
    sleep  5

Select Random TV from the list

    click element   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.ViewAnimator/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TextView
    sleep   10

Check the cost and add to cart

    swipe by percent        90      50      90         10
    sleep  3
    swipe by percent        90      50      90         10
    sleep  3
    click text      Add to Cart
    sleep  3
    click element   id=com.amazon.mShop.android.shopping:id/action_bar_cart_count
    sleep   3

Final checkout and proceed to payment

    click text      Proceed to Buy
    sleep  5
    click text      Deliver to this address
    sleep   5
    click text      Continue
    sleep   8
    click text      Net Banking
    sleep  5
    click text      Choose an Option
    sleep  5
    click text      Axis Bank
    sleep  5
    click text      Continue
    sleep  5

Assertion check of price in product search screen vs checkout screen
    ${order total}      get text    xpath=hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.ViewAnimator/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[3]/android.view.View[3]/android.view.View/android.view.View[3]/android.view.View[2]
    log to console      ${price shown}
    log to console      ${order total}
    log to console      Prices match in the product search screen and checkout screen
    sleep  3




