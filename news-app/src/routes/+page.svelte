<script lang="ts">
	import Newsoverview from '$lib/components/newsoverview/newsoverview.svelte';

	const { data } = $props<{ data: { news: any[] } }>();
</script>

<Newsoverview news={data.news} />
