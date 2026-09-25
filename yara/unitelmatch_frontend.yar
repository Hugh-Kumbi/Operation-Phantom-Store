/*
    Operation Phantom Store
    YARA Rule Collection

    Purpose:
        Detect archived frontend resources associated with the
        UnitelMatch phishing infrastructure.

    Author:
        Hugh Chanetsa

    Version:
        1.0
*/

rule UnitelMatch_Vue_Frontend
{
    meta:

        description = "Detects UnitelMatch frontend application"
        author = "Hugh Chanetsa"
        project = "Operation Phantom Store"
        date = "2026-09-25"
        version = "1.0"

        confidence = "Medium"

    strings:

        $vue1 = "__VUE__"
        $vue2 = "__VUE_INSTANCE_SETTERS__"
        $vue3 = "__VUE_SSR_SETTERS__"

        $merchant = "merchant-id"

        $api = "/tiny-shop/v1/"

        $member = "/member/member/index"

        $product = "/shop/product/my-product"

        $config = "/site/config"

        $index = "/index/index"

        $backend = "ioutrankap.cyou"

        $cloudflare = "static.cloudflareinsights.com"

        $cf = "__cfBeacon"

        $core = "core-js"

        $lodash = "lodash"

    condition:

        (
            4 of ($vue*)
            and
            2 of ($api,$member,$product,$config,$index)
        )
        or
        (
            $backend
            and
            $merchant
            and
            2 of ($api,$member,$product)
        )
}