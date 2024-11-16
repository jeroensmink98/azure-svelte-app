<script lang="ts">
    import type { NewsItem } from "$lib/server/nunl/news";
    import NewsItemComponent from "../newsitem/newsitem.svelte";
    
    const { news } = $props<{ news: NewsItem[] }>();
</script>

<div class="mt-2">
    <div class="max-w-[1200px] mx-auto">
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            {#each news as item}
                <NewsItemComponent {item} />
            {/each}
        </div>
    </div>
</div>

