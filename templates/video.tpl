{include file="inc/head.tpl"}
<div class="wrapper">
<div itemscope itemtype="http://schema.org/VideoObject">
<main class="main">
{include file="inc/logo.tpl"}
<p id="download_intro">{t}You are going to download{/t}<i itemprop="name">
    <a itemprop="url" id="video_link"
        href="{$video->webpage_url}">
{$video->title}</a></i>.
</p>
{if isset($video->thumbnail)}
    <img itemprop="thumbnailUrl" class="thumb" src="{$video->thumbnail}" alt="" />
{/if}
{if isset($video->description)}
    <meta itemprop="description" content="{$video->description|escape}" />
{/if}
{if isset($video->upload_date)}
    <meta itemprop="uploadDate" content="{$video->upload_date}" />
{/if}
<br/>
<form action="{path_for name="redirect"}">
    <input type="hidden" name="url" value="{$video->webpage_url}" />
{if isset($video->formats)}
    <h3><label for="format">{t}Available formats:{/t}</label></h3>
        {if $config->uglyUrls}
            <input type="hidden" name="page" value="redirect" />
        {/if}
        <select name="format" id="format" class="formats monospace">
            <optgroup label="{t}Generic formats{/t}">
                <option value="best{$protocol}">
                    {strip}
                        {t}Best{/t} ({$video->ext})
                    {/strip}
                </option>
                {if $config->remux}
                    <option value="bestvideo+bestaudio">
                        {t}Remux best video with best audio{/t}
                    </option>
                {/if}
                <option value="worst{$protocol}">
                    {t}Worst{/t}
                </option>
            </optgroup>
          
            <option value="{$format->format_id}">
        </select><br/><br/>
        {if $config->convertAdvanced}
            <input type="checkbox" name="customConvert" id="customConvert"/>
            <label for="customConvert">{t}Convert into a custom format:{/t}</label>
            <select title="Custom format" name="customFormat">
                {foreach $config->convertAdvancedFormats as $format}
                    <option>{$format}</option>
                {/foreach}
            </select>
            {t}with{/t}
            <input type="number" value="{$config->audioBitrate}" title="Custom bitrate" class="customBitrate"name="customBitrate" id="customBitrate" />
            <label for="customBitrate">{t}kbit/s audio{/t}</label>
            <br/><br/>
        {/if}
        <input class="downloadBtn" type="submit" value="{t}Download{/t}" /><br/>
    </form>
{else}
    <input class="downloadBtn" type="submit" value="{t}Download{/t}" /><br/>
{/if}
</main>
</div>
<p id="download_intro">{t}Best = Best Video/Audio Quality (recommend){/t}<i itemprop="name">
{include file="inc/footer.tpl"}
