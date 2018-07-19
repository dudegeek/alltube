{locale path="../i18n" domain="Video Downloader"}
<!Doctype HTML>
<html {if isset($locale)}lang="{$locale->getBcp47()}"{/if}>
<head>
<meta charset="UTF-8" />
<meta name=viewport content="width=device-width, initial-scale=1">
{if isset($description)}
    <meta name="description" content="{$description|escape}" />
    <meta name="twitter:description" content="{$description|escape}" />
    <meta property="og:description" content="{$description|escape}" />
{/if}
<link rel="stylesheet" href="{base_url}/dist/main.css" />
<title>TechBot Video Downloader{if isset($title)} - {$title|escape}{/if}</title>
<link rel="canonical" href="{$canonical}" />
<link rel="icon" href="{base_url}/img/favicon.png" />
<meta property="og:title" content="TechBot Video Downloader{if isset($title)} - {$title|escape}{/if}" />
<meta property="og:image" content="{base_url}/img/logo.png" />
<meta name="twitter:card" content="summary" />
<meta name="twitter:title" content="Video Downloader{if isset($title)} - {$title|escape}{/if}" />
<meta name="twitter:image" content="{base_url}/img/logo.png" />
<meta name="theme-color" content="#3F51B5">
<link rel="manifest" href="{base_url}/resources/manifest.json" />
</head>
<body class="{$class}">
