<script>

	import Home from '.routes/Home.svelte'
	import Breakfast from '.routes/Breakfast.svelte'
	import NotFound from './routes/NotFound.svelte'

	const routes = {
	    '/': Home,
	    '/breakfast': Breakfast,

//	    '/author/:first/:last?': Author,
//	    '/book/*': Book,

    '*': NotFound,
    }

</script>