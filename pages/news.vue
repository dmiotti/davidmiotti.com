<template>
  <section>
    <h3>
      I'm keeping myself up-to-date with the following websites:
    </h3>
    <ul>
      <li v-for="n in news" :key="n.name">
        <a :href="n.href" target="_blank">{{ n.name }}</a>
      </li>
    </ul>
  </section>
</template>

<script>
export default {
  data() {
    return {
      news: [
        { href: 'https://css-tricks.com', name: 'CSS-Tricks' },
        { href: 'https://increment.com/development', name: 'Increment' },
        { href: 'https://www.pages.xyz', name: 'Pages' },
        { href: 'https://news.ycombinator.com', name: 'Hacker News' },
        { href: 'https://techcrunch.com', name: 'Tech Crunch' },
        { href: 'https://techcrunch.com', name: 'Product Hunt' }
      ]
    }
  }
}
</script>
