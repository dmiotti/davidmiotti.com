<template>
  <section class="container mx-auto">
    <ul class="flex flex-col items-center justify-center list-reset">
      <li v-for="n in news" :key="n.name" class="font-black text-xl md:text-5xl my-1">
        <a class="link" :href="n.href" target="_blank">{{ n.name }}</a>
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
        { href: 'https://www.pages.xyz', name: 'pages.xyz' },
        { href: 'https://news.ycombinator.com', name: 'Hacker News' },
        { href: 'https://techcrunch.com', name: 'Tech Crunch' },
        { href: 'https://techcrunch.com', name: 'Product Hunt' },
        { href: 'https://www.techmeme.com', name: 'Techmeme' },
        { href: 'https://pageflows.com/pages', name: 'Page Flows' },
        { href: 'https://www.evernote.design', name: 'Evernote Design' }
      ]
    }
  }
}
</script>
