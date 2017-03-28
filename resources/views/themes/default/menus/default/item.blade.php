<?php $class = ($item->active) ? 'uk-active' : ''?>
<li class="{!! $class !!}">{!! HTML::link($item->url, $item->name) !!}</li>