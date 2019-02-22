<template>
  <div>
    <section class="absolute pin w-full h-full flex items-center justify-center">
      <div class="flex flex-col md:flex-row justify-around w-full font-black text-5xl items-center justify-center">
        <router-link v-for="link in links" :key="link.href" :to="link.href" class="link my-5 no-underline">
          {{ link.name }}
        </router-link>
      </div>
    </section>

    <footer class="absolute pin-b pin-l pin-r flex justify-center py-5 z-10 flex items-center">
      Build with ❤️ using&nbsp;<a href="https://nuxtjs.org" target="_blank" class="link">NuxtJS</a>
    </footer>
  </div>
</template>

<script>
export default {
  data() {
    return {
      links: [
        { name: 'News', href: '/news' },
        { name: 'Work', href: '/work' },
        { name: 'About', href: '/about' }
      ]
    }
  }
}
</script>
