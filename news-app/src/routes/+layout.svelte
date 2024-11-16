<script lang="ts">
	import Nav from '$lib/components/nav.svelte';
	import '../app.css';
	let { children } = $props();
</script>

<svelte:head>
	<title>News</title>
</svelte:head>

<Nav />
<hr>

{@render children()}
