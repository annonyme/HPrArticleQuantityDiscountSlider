{extends file="parent:frontend/listing/product-box/box-emotion.tpl"}

{block name='frontend_listing_box_article_name'}
    <a href="{$sArticle.linkDetails}"
       class="product--title"
       title="{$productName|escapeHtml}" {if $sArticle.use_quant}style="height: auto;"{/if}>
        {$productName|truncate:50|escapeHtml}
    </a>
{/block}

{block name='frontend_listing_box_article_unit'}
    {if $sArticle.use_quant }

    {else}
        {$smarty.block.parent}
    {/if}
{/block}

{block name='frontend_listing_box_article_price'}
    {if $sArticle.use_quant }
        {include file="frontend/listing/product-box/button-buy.tpl"}
    {else}
        {$smarty.block.parent}
    {/if}
{/block}