{if $top_content}
{$top_content}
<br /><br />
{/if}
{if $items}
<table class="listTable">
    <tr>
            <th class="pos"></th>
        {foreach from=$titles item=columnTitle key=key}
            <th>{$columnTitle}</th>
        {/foreach}
        {if $delete}
            <th class="del"></th>
        {/if}
    </tr>
    {foreach from=$items item=row name="list"}
    <tr class="{if $smarty.foreach.list.index % 2 eq 1}odd{/if}{if $row.id eq $request.id} hightlight{/if}" id="row_{$row.id}">
        
        <td class="pos">
            {if $usePos}
                <a href="{if $posUp}{$posUp}{else}{$sLink}pos/up/id/{$row.id}/{/if}"><img src="{$BASE_URL}cms/img/icons/arrow_up-active.png" /></a>
                <a href="{if $posDown}{$posDown}{else}{$sLink}pos/down/id/{$row.id}/{/if}"><img src="{$BASE_URL}cms/img/icons/arrow_down-active.png" /></a>
            {/if}
        </td>
        {foreach from=$titles item=columnTitle key=key name=items}
            <td>
                {if $list_actions.inline.$key.put.pos eq "before"}
                    <a title="{$list_actions.inline.$key.put.title}"
						href="{$root_url}{$list_actions.inline.$key.put.link|replace:"[id]":$row.id|replace:"[pid]":$request.pid|replace:'[model]':$request.model|replace:'[realtor_id]':$row.realtor_id}/">
						{if $list_actions.inline.$key.put.icon}
							<img alt="{$list_actions.inline.$key.put.title}"
								src="{$BASE_URL}cms/img/icons/{$list_actions.inline.$key.put.icon}.png"
								style="float: left; margin-right: 4px;"/>
						{else}
							{$list_actions.inline.$key.put.title}
						{/if}
					</a>
                {/if}
                {if !empty($list_actions.inline.$key.title)}
                    {if is_array($list_actions.inline.$key.title)}
                        {assign var="aTitleArr" value=$list_actions.inline.$key.title}
                        {assign var="rKey" value=$row.$key}
                        {assign var="aTitle" value=$aTitleArr.$rKey}
                    {else}
                        {assign var="aTitle" value=$list_actions.inline.$key.title}
                    {/if}
                    
                    {if is_array($list_actions.inline.$key.class)}
                        {assign var="aClassArr" value=$list_actions.inline.$key.class}
                        {assign var="rKey" value=$row.$key}
                        {assign var="aClass" value=$aClassArr.$rKey}
                    {elseif $list_actions.inline.$key.class}
                        {assign var="aClass" value=$list_actions.inline.$key.class}
                    {else}
                    	{assign var="aClass" value=""}
                    {/if}
                    
                    <a{if $aClass} class="{$aClass}"{/if} title="{$aTitle}" href="{$root_url}{$list_actions.inline.$key.link|replace:"[id]":$row.id|replace:"[pid]":$request.pid|replace:'[model]':$request.model|replace:'[realtor_id]':$row.realtor_id}{if $key eq 'title'}{if $row.realtor_action eq "del"}/type/old/{else}/type/mod/{/if}{/if}">
                {/if}
                
                {if $fields.$key.values}
                    {assign var="arrKey" value=$row.$key}
                    {$fields[$key].values[$arrKey]}
                {elseif $fields.$key.type eq "pass"}
                    *****
                {elseif is_array($row.$key)}
                    {foreach from=$row.$key item=field_value name=field_values}
                        {$field_value.title|default:$field_value.name}{if !$smarty.foreach.field_values.last}, {/if}
                    {foreachelse}
                        {$fields.$key.empty|default:"не задано"}
                    {/foreach}
                {elseif $fields.$key.type eq 'file'}
                	{if $row.$key eq ''}
                		файл не загружен
                	{else}
                    	<a href="{$row.$key}">открыть</a>
                    {/if}
                {elseif $fields.$key.type eq 'date'}
                	{$row.$key|date_format:"%d.%m.%Y"}
                {elseif $fields.$key.type eq 'datetime'}
                	{$row.$key|date_format:"%d.%m.%Y %H:%M"}
                {else}
                    {call name="get_listing_value" item=$row key=$key}{$row.$key}{/call}
                {/if}
                
                {if !empty($list_actions.inline.$key.title)}
                    </a>
                {/if}
                {if $list_actions.inline.$key.put.pos eq "after"}
                    <a title="{$list_actions.inline.$key.put.title}" href="{$root_url}{$list_actions.inline.$key.put.link|replace:"[id]":$row.id|replace:"[pid]":$request.pid|replace:'[model]':$request.model}/">{if $list_actions.inline.$key.put.icon}<img alt="{$list_actions.inline.$key.put.title}" src="{$BASE_URL}cms/img/icons/{$list_actions.inline.$key.put.icon}.png" />{else}{$list_actions.inline.$key.put.title}{/if}</a>
                {/if}
            </td>
        {/foreach}
        {if $rightFromTable}
            <td class="del">
            
                {foreach from=$rightFromTable key=rKey item=rItem}
                    {if (strpos($rKey, 'delete') !== 0 OR $row.undeletable ne 'yes')}
                        {check_cond action=$rItem item=$row}
                        <a href="{$root_url}{$rItem.link|replace:"[id]":$row.id|replace:"[pid]":$request.pid|replace:'[model]':$request.model}/" title="{$rItem.title}"><img src="{$BASE_URL}cms/img/icons/{$rItem.icon}.png" alt="{$rItem.title}" /></a>
                        {/check_cond}
                    {/if}
                {/foreach}
            </th>
        {/if}
    </tr>
    {/foreach}
</table>
{else}
{$noContent}
<br /><br />
{/if}


{if $paging.pages}
<div class="{$paging.css_class}">
{sliding_pager
	url_append = $paging.url_append 
	separator  = $paging.separator
	curpage    = $paging.curr_page
	baseurl    = $paging.base_url
	pagecount  = $paging.pages
	txt_first  = $paging.first       txt_prev = $paging.prev
	txt_next   = $paging.next        txt_last = $paging.last
	txt_skip   = $paging.skip        linknum  = $paging.linkcount
}
</div>
{/if}


{if $list_actions.after}
    <ul class="after_actions">
    {foreach from=$list_actions.after item=action}
        <li><a href="{$root_url}{$action.link|replace:"[id]":$row.id|replace:"[pid]":$request.pid|replace:'[link]':$request.link}/" title="{$action.title}">{$action.title}</a></li>
    {/foreach}
    </ul>
{/if}