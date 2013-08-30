<ul>
{foreach from=$vTree item=branch}
{if $branch.id != 1}
	<li id="tree_{$branch.id}"{if $branch.id == $request.id} class="open"{/if}>
		<span>
        <nobr>
        <a style="padding-right:10px;" href="{$root_url}{if $branch.link == 'yes'}{$branch.path}/{else}menu/list/pid/{$branch.id}/{/if}" title="{$root_url}menu/list/pid/{$branch.id}/">{$branch.title}</a>
        </nobr>
        
        </span>
		{if $branch.count > 0}
			{loadview name="menu/subtree" vTree=$branch.children}
		{/if}
	</li>
{/if}
{/foreach}
</ul>