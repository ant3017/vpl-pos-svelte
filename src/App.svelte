<script>
	import "smui-dark.css";

	import Button, { Label } from '@smui/button';

	export let name;
//	import Router from 'svelte-spa-router'
	import { Router, Link, Route } from "svelte-routing";

	import Home from './routes/Home.svelte'
	import Breakfast from './routes/Breakfast.svelte'
	import NotFound from './routes/NotFound.svelte'

// 	const routes = {
// 	    '/': Home,
// 	    '/breakfast': Breakfast,

// //	    '/author/:first/:last?': Author,
// //	    '/book/*': Book,

//     '*': NotFound,
//     }

	export let url = "";

</script>

<main>
	<h1>Hello {name}!</h1>
	<p>Visit the <a href="https://svelte.dev/tutorial">Svelte tutorial</a> to learn how to build Svelte apps.</p>


<Button on:click={()=>alert('clicked')}>

  <Label>Do Something</Label>
</Button>

    <!-- <Router {routes}/> -->

<Router url="{url}">
  <nav>
    <Link to="/">Home</Link>
    <Link to="breakfast">Breakfast</Link>
  </nav>
  <div>
    <Route path="breakfast" component="{Breakfast}" />
    <Route path="/"><Home /></Route>
  </div>
</Router>

</main>

<style>
	main {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
	}

	h1 {
		color: #ff3e00;
		text-transform: uppercase;
		font-size: 4em;
		font-weight: 100;
	}

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>