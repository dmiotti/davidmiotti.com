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
        { href: 'https://news.ycombinator.com', name: 'Hacker News' },
        { href: 'https://github.com/trending', name: 'GitHub Trending' },
        { href: 'https://www.techmeme.com', name: 'Techmeme' },
        { href: 'https://www.producthunt.com', name: 'Product Hunt' },
        { href: 'https://css-tricks.com', name: 'CSS-Tricks' },
        { href: 'https://www.macrumors.com/', name: 'MacRumors' },
        {
          href: 'https://github.com/trimstray/the-book-of-secret-knowledge',
          name: 'The book of secret knowledge'
        },
        { href: 'https://increment.com/development', name: 'Increment' },
        { href: 'https://www.pages.xyz', name: 'pages.xyz' },
        {
          href: 'https://github.com/GoogleCloudPlatform/microservices-demo',
          name: 'Microservices demo by Google'
        }
      ]
    }
  }
}
</script>
