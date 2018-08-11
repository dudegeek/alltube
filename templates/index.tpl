{include file='inc/head.tpl'}
{include file='inc/header.tpl'}
<main class="main">
    <div><img class="logo" src="{base_url}/img/logo.png"
    alt="Video Downloader" width="200" height="200"></div>
    
    <form action="{path_for name="video"}">
    <label class="labelurl" for="url">
        {t}Copy here the URL of your video (Youtube, FB, Insta, Vimeo, etc.){/t}
    </label>
    <div class="champs">
        <span class="URLinput_wrapper">
           
            <input class="URLinput large-font" type="url" name="url" id="url"
            required placeholder="http://example.com/video" />
        </span>
        {if $config->uglyUrls}
            <input type="hidden" name="page" value="video" />
        {/if}
        <input class="downloadBtn large-font" type="submit" value="{t}Download{/t}" download="true"/>
       
       

        {if $config->convert}
            <div class="mp3 small-font">
                <p><input type="checkbox" id="audio" class="audio" name="audio">
                <label for="audio"><span class="ui"></span>
                    {t}Audio only (MP3){/t}</label></p>
                    
                    
            </div>
        {/if}
    </div>
    </form>
    
    <div id="bookmarklet" class="bookmarklet_wrapper">
        <p> {t}Drag this to your bookmarks bar{/t} </p>
        
        <a class="bookmarklet small-font" href="javascript:void(open('https://tbvd.herokuapp.com{path_for name='redirect'}?url='+encodeURIComponent(location.href)));">{t}1-Click Video Downloader{/t}</a>
        </div>
    <br>
     <div id="bookmarklet" class="bookmarklet_wrapper">
      <p>  </p>
        <a class="bookmarklet small-font" href="javascript:void(open('https://tbvd.herokuapp.com{path_for name='redirect'}?url='+encodeURIComponent(location.href)+'&format=140'));">{t}1-Click Audio Downloader{/t}</a>
        </div>
     <br>
    <div id="bookmarklet" class="bookmarklet_wrapper">
        <p>  </p>
        <a class="bookmarklet small-font" href="javascript:void(open('https://tbvd.herokuapp.com{path_for name='video'}?url='+encodeURIComponent(location.href)));">{t}Other Format Downloader{/t}</a>
        </div>
 
</main>
{include file='inc/footer.tpl'}
