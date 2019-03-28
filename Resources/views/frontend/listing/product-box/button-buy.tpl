{extends file="parent:frontend/listing/product-box/button-buy.tpl"}

{block name="frontend_listing_product_box_button_buy_order_number"}
    {$smarty.block.parent}
    {if $sArticle.use_quant}
        <input type="hidden" name="sQuantity" value="{$sArticle.exwe_emotion_quantity}"/>
    {/if}
{/block}

{block name="frontend_listing_product_box_button_buy_button"}
    <button class="buybox--button block btn is--primary is--icon-right is--center is--large" style="width:100%;">
        {block name="frontend_listing_product_box_button_buy_button_text"}
            {if $sArticle.use_quant}
                {$sArticle.exwe_emotion_quantity} Stück für {$sArticle.exwe_price}{$sArticle.exwe_symbol} ( {$sArticle.exwe_diff_percent})
                <i class="icon--basket"></i> <i class="icon--arrow-right"></i>
            {else}
                {$smarty.block.parent}
            {/if}
        {/block}
    </button>
{/block}