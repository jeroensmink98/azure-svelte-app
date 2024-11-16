<script lang="ts">
	import type { NewsItem } from '$lib/server/nunl/news';
	export let item: NewsItem;
</script>

<article class="h-full">
	<div class="card bg-base-120 w-100 shadow-xl h-full">
		<figure>
			{#if item.imageUrl}
				<img src={item.imageUrl} alt={item.title} />
			{/if}
		</figure>
		<div class="card-body">
			<h2 class="card-title">
				<a href={item.link}>{item.title}</a>
			</h2>
            {#if item.description}
                <p>{@html item.description.replace(/<[^>]*>/g, '')}</p>
            {/if}
            <div class="card-actions justify-end">
                {#if item.pubDate}
                <span class="badge badge-outline date">{new Date(item.pubDate).toLocaleDateString()}</span>
                {/if}
                {#if item.category}
                    <div class="badge badge-outline">{item.category}</div>
			    {/if}
            </div>
		</div>
	</div>
</article>

